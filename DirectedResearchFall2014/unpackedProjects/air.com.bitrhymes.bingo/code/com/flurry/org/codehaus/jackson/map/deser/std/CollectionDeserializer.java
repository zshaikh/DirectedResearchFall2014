package com.flurry.org.codehaus.jackson.map.deser.std;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.*;

@JacksonStdImpl
public class CollectionDeserializer extends ContainerDeserializerBase<Collection<Object>> implements ResolvableDeserializer
{
    protected final JavaType _collectionType;
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;
    
    protected CollectionDeserializer(final CollectionDeserializer collectionDeserializer) {
        super(collectionDeserializer._valueClass);
        this._collectionType = collectionDeserializer._collectionType;
        this._valueDeserializer = collectionDeserializer._valueDeserializer;
        this._valueTypeDeserializer = collectionDeserializer._valueTypeDeserializer;
        this._valueInstantiator = collectionDeserializer._valueInstantiator;
        this._delegateDeserializer = collectionDeserializer._delegateDeserializer;
    }
    
    public CollectionDeserializer(final JavaType collectionType, final JsonDeserializer<Object> valueDeserializer, final TypeDeserializer valueTypeDeserializer, final ValueInstantiator valueInstantiator) {
        super(collectionType.getRawClass());
        this._collectionType = collectionType;
        this._valueDeserializer = valueDeserializer;
        this._valueTypeDeserializer = valueTypeDeserializer;
        this._valueInstantiator = valueInstantiator;
    }
    
    protected CollectionDeserializer(final JavaType collectionType, final JsonDeserializer<Object> valueDeserializer, final TypeDeserializer valueTypeDeserializer, final Constructor<Collection<Object>> constructor) {
        super(collectionType.getRawClass());
        this._collectionType = collectionType;
        this._valueDeserializer = valueDeserializer;
        this._valueTypeDeserializer = valueTypeDeserializer;
        final StdValueInstantiator valueInstantiator = new StdValueInstantiator(null, collectionType);
        if (constructor != null) {
            valueInstantiator.configureFromObjectSettings(new AnnotatedConstructor(constructor, null, null), null, null, null, null);
        }
        this._valueInstantiator = valueInstantiator;
    }
    
    private final Collection<Object> handleNonArray(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Collection<Object> collection) throws IOException, JsonProcessingException {
        if (!deserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
            throw deserializationContext.mappingException(this._collectionType.getRawClass());
        }
        final JsonDeserializer<Object> valueDeserializer = this._valueDeserializer;
        final TypeDeserializer valueTypeDeserializer = this._valueTypeDeserializer;
        Object o;
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
            o = null;
        }
        else if (valueTypeDeserializer == null) {
            o = valueDeserializer.deserialize(jsonParser, deserializationContext);
        }
        else {
            o = valueDeserializer.deserializeWithType(jsonParser, deserializationContext, valueTypeDeserializer);
        }
        collection.add(o);
        return collection;
    }
    
    @Override
    public Collection<Object> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._delegateDeserializer != null) {
            return (Collection<Object>)this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            final String text = jsonParser.getText();
            if (text.length() == 0) {
                return (Collection<Object>)this._valueInstantiator.createFromString(text);
            }
        }
        return this.deserialize(jsonParser, deserializationContext, (Collection<Object>)this._valueInstantiator.createUsingDefault());
    }
    
    @Override
    public Collection<Object> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Collection<Object> collection) throws IOException, JsonProcessingException {
        if (!jsonParser.isExpectedStartArrayToken()) {
            return this.handleNonArray(jsonParser, deserializationContext, collection);
        }
        final JsonDeserializer<Object> valueDeserializer = this._valueDeserializer;
        final TypeDeserializer valueTypeDeserializer = this._valueTypeDeserializer;
        while (true) {
            final JsonToken nextToken = jsonParser.nextToken();
            if (nextToken == JsonToken.END_ARRAY) {
                break;
            }
            Object o;
            if (nextToken == JsonToken.VALUE_NULL) {
                o = null;
            }
            else if (valueTypeDeserializer == null) {
                o = valueDeserializer.deserialize(jsonParser, deserializationContext);
            }
            else {
                o = valueDeserializer.deserializeWithType(jsonParser, deserializationContext, valueTypeDeserializer);
            }
            collection.add(o);
        }
        return collection;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }
    
    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }
    
    @Override
    public JavaType getContentType() {
        return this._collectionType.getContentType();
    }
    
    @Override
    public void resolve(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) throws JsonMappingException {
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            final JavaType delegateType = this._valueInstantiator.getDelegateType();
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._collectionType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            this._delegateDeserializer = this.findDeserializer(deserializationConfig, deserializerProvider, delegateType, new BeanProperty.Std(null, delegateType, null, this._valueInstantiator.getDelegateCreator()));
        }
    }
}
