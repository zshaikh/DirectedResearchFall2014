package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonStdImpl
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>> implements ResolvableDeserializer
{
    protected final JavaType _collectionType;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected final boolean _isDefaultDeserializer;
    protected final JsonDeserializer<String> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    
    protected StringCollectionDeserializer(final StringCollectionDeserializer stringCollectionDeserializer) {
        super(stringCollectionDeserializer._valueClass);
        this._collectionType = stringCollectionDeserializer._collectionType;
        this._valueDeserializer = stringCollectionDeserializer._valueDeserializer;
        this._valueInstantiator = stringCollectionDeserializer._valueInstantiator;
        this._isDefaultDeserializer = stringCollectionDeserializer._isDefaultDeserializer;
    }
    
    public StringCollectionDeserializer(final JavaType collectionType, final JsonDeserializer<?> valueDeserializer, final ValueInstantiator valueInstantiator) {
        super(collectionType.getRawClass());
        this._collectionType = collectionType;
        this._valueDeserializer = (JsonDeserializer<String>)valueDeserializer;
        this._valueInstantiator = valueInstantiator;
        this._isDefaultDeserializer = this.isDefaultSerializer(valueDeserializer);
    }
    
    private Collection<String> deserializeUsingCustom(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Collection<String> collection) throws IOException, JsonProcessingException {
        final JsonDeserializer<String> valueDeserializer = this._valueDeserializer;
        while (true) {
            final JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                break;
            }
            String s;
            if (nextToken == JsonToken.VALUE_NULL) {
                s = null;
            }
            else {
                s = valueDeserializer.deserialize(jsonParser, deserializationContext);
            }
            collection.add(s);
        }
        return collection;
    }
    
    private final Collection<String> handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Collection<String> collection) throws IOException, JsonProcessingException {
        if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            throw deserializationContext.mappingException(this._collectionType.getRawClass());
        }
        final JsonDeserializer<String> valueDeserializer = this._valueDeserializer;
        String text;
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            text = null;
        }
        else if (valueDeserializer == null) {
            text = jsonParser.getText();
        }
        else {
            text = valueDeserializer.deserialize(jsonParser, deserializationContext);
        }
        collection.add(text);
        return collection;
    }
    
    @Override
    public Collection<String> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null) {
            return (Collection<String>)this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        return this.deserialize(jsonParser, deserializationContext, (Collection<String>)this._valueInstantiator.createUsingDefault());
    }
    
    @Override
    public Collection<String> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Collection<String> collection) throws IOException, JsonProcessingException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return this.handleNonArray(jsonParser, deserializationContext, collection);
        }
        if (!this._isDefaultDeserializer) {
            return this.deserializeUsingCustom(jsonParser, deserializationContext, collection);
        }
        while (true) {
            final JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                break;
            }
            String text;
            if (nextToken == JsonToken.VALUE_NULL) {
                text = null;
            }
            else {
                text = jsonParser.getText();
            }
            collection.add(text);
        }
        return collection;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
    
    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return (JsonDeserializer<Object>)this._valueDeserializer;
    }
    
    @Override
    public JavaType getContentType() {
        return this._collectionType.getContentType();
    }
    
    @Override
    public void resolve(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) throws JsonMappingException {
        final AnnotatedWithParams delegateCreator = this._valueInstantiator.getDelegateCreator();
        if (delegateCreator != null) {
            final JavaType delegateType = this._valueInstantiator.getDelegateType();
            this._delegateDeserializer = this.findDeserializer(deserializationConfig, deserializerProvider, delegateType, new BeanProperty.Std(null, delegateType, null, delegateCreator));
        }
    }
}
