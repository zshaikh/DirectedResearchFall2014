package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.deser.impl.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;

@JacksonStdImpl
public class MapDeserializer extends ContainerDeserializerBase<Map<Object, Object>> implements ResolvableDeserializer
{
    protected JsonDeserializer<Object> _delegateDeserializer;
    protected final boolean _hasDefaultCreator;
    protected HashSet<String> _ignorableProperties;
    protected final KeyDeserializer _keyDeserializer;
    protected final JavaType _mapType;
    protected PropertyBasedCreator _propertyBasedCreator;
    protected final JsonDeserializer<Object> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;
    protected final TypeDeserializer _valueTypeDeserializer;
    
    protected MapDeserializer(final MapDeserializer mapDeserializer) {
        super(mapDeserializer._valueClass);
        this._mapType = mapDeserializer._mapType;
        this._keyDeserializer = mapDeserializer._keyDeserializer;
        this._valueDeserializer = mapDeserializer._valueDeserializer;
        this._valueTypeDeserializer = mapDeserializer._valueTypeDeserializer;
        this._valueInstantiator = mapDeserializer._valueInstantiator;
        this._propertyBasedCreator = mapDeserializer._propertyBasedCreator;
        this._delegateDeserializer = mapDeserializer._delegateDeserializer;
        this._hasDefaultCreator = mapDeserializer._hasDefaultCreator;
        this._ignorableProperties = mapDeserializer._ignorableProperties;
    }
    
    public MapDeserializer(final JavaType mapType, final ValueInstantiator valueInstantiator, final KeyDeserializer keyDeserializer, final JsonDeserializer<Object> valueDeserializer, final TypeDeserializer valueTypeDeserializer) {
        super(Map.class);
        this._mapType = mapType;
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = valueDeserializer;
        this._valueTypeDeserializer = valueTypeDeserializer;
        this._valueInstantiator = valueInstantiator;
        if (valueInstantiator.canCreateFromObjectWith()) {
            this._propertyBasedCreator = new PropertyBasedCreator(valueInstantiator);
        }
        else {
            this._propertyBasedCreator = null;
        }
        this._hasDefaultCreator = valueInstantiator.canCreateUsingDefault();
    }
    
    protected MapDeserializer(final JavaType mapType, final Constructor<Map<Object, Object>> constructor, final KeyDeserializer keyDeserializer, final JsonDeserializer<Object> valueDeserializer, final TypeDeserializer valueTypeDeserializer) {
        super(Map.class);
        this._mapType = mapType;
        this._keyDeserializer = keyDeserializer;
        this._valueDeserializer = valueDeserializer;
        this._valueTypeDeserializer = valueTypeDeserializer;
        final StdValueInstantiator valueInstantiator = new StdValueInstantiator(null, mapType);
        if (constructor != null) {
            valueInstantiator.configureFromObjectSettings(new AnnotatedConstructor(constructor, null, null), null, null, null, null);
        }
        this._hasDefaultCreator = (constructor != null);
        this._valueInstantiator = valueInstantiator;
    }
    
    public Map<Object, Object> _deserializeUsingCreator(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        final PropertyBasedCreator propertyBasedCreator = this._propertyBasedCreator;
        final PropertyValueBuffer startBuilding = propertyBasedCreator.startBuilding(jsonParser, deserializationContext);
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        final JsonDeserializer<Object> valueDeserializer = this._valueDeserializer;
        final TypeDeserializer valueTypeDeserializer = this._valueTypeDeserializer;
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = jsonParser.getCurrentName();
            final JsonToken nextToken = jsonParser.nextToken();
            Label_0097: {
                if (this._ignorableProperties != null && this._ignorableProperties.contains(currentName)) {
                    jsonParser.skipChildren();
                }
                else {
                    final SettableBeanProperty creatorProperty = propertyBasedCreator.findCreatorProperty(currentName);
                    if (creatorProperty != null) {
                        if (!startBuilding.assignParameter(creatorProperty.getPropertyIndex(), creatorProperty.deserialize(jsonParser, deserializationContext))) {
                            break Label_0097;
                        }
                        jsonParser.nextToken();
                        try {
                            final Map map = (Map)propertyBasedCreator.build(startBuilding);
                            this._readAndBind(jsonParser, deserializationContext, map);
                            return (Map<Object, Object>)map;
                        }
                        catch (Exception ex) {
                            this.wrapAndThrow(ex, this._mapType.getRawClass());
                            return null;
                        }
                    }
                    final Object deserializeKey = this._keyDeserializer.deserializeKey(jsonParser.getCurrentName(), deserializationContext);
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
                    startBuilding.bufferMapProperty(deserializeKey, o);
                }
            }
            jsonToken = jsonParser.nextToken();
        }
        try {
            return (Map<Object, Object>)propertyBasedCreator.build(startBuilding);
        }
        catch (Exception ex2) {
            this.wrapAndThrow(ex2, this._mapType.getRawClass());
            return null;
        }
    }
    
    protected final void _readAndBind(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Map<Object, Object> map) throws IOException, JsonProcessingException {
        JsonToken jsonToken = jsonParser.getCurrentToken();
        if (jsonToken == JsonToken.START_OBJECT) {
            jsonToken = jsonParser.nextToken();
        }
        final KeyDeserializer keyDeserializer = this._keyDeserializer;
        final JsonDeserializer<Object> valueDeserializer = this._valueDeserializer;
        final TypeDeserializer valueTypeDeserializer = this._valueTypeDeserializer;
        while (jsonToken == JsonToken.FIELD_NAME) {
            final String currentName = jsonParser.getCurrentName();
            final Object deserializeKey = keyDeserializer.deserializeKey(currentName, deserializationContext);
            final JsonToken nextToken = jsonParser.nextToken();
            if (this._ignorableProperties != null && this._ignorableProperties.contains(currentName)) {
                jsonParser.skipChildren();
            }
            else {
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
                map.put(deserializeKey, o);
            }
            jsonToken = jsonParser.nextToken();
        }
    }
    
    @Override
    public Map<Object, Object> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (this._propertyBasedCreator != null) {
            return this._deserializeUsingCreator(jsonParser, deserializationContext);
        }
        if (this._delegateDeserializer != null) {
            return (Map<Object, Object>)this._valueInstantiator.createUsingDelegate(this._delegateDeserializer.deserialize(jsonParser, deserializationContext));
        }
        if (!this._hasDefaultCreator) {
            throw deserializationContext.instantiationException(this.getMapClass(), "No default constructor found");
        }
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken == JsonToken.START_OBJECT || currentToken == JsonToken.FIELD_NAME || currentToken == JsonToken.END_OBJECT) {
            final Map map = (Map)this._valueInstantiator.createUsingDefault();
            this._readAndBind(jsonParser, deserializationContext, map);
            return (Map<Object, Object>)map;
        }
        if (currentToken == JsonToken.VALUE_STRING) {
            return (Map<Object, Object>)this._valueInstantiator.createFromString(jsonParser.getText());
        }
        throw deserializationContext.mappingException(this.getMapClass());
    }
    
    @Override
    public Map<Object, Object> deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Map<Object, Object> map) throws IOException, JsonProcessingException {
        final JsonToken currentToken = jsonParser.getCurrentToken();
        if (currentToken != JsonToken.START_OBJECT && currentToken != JsonToken.FIELD_NAME) {
            throw deserializationContext.mappingException(this.getMapClass());
        }
        this._readAndBind(jsonParser, deserializationContext, map);
        return map;
    }
    
    @Override
    public Object deserializeWithType(final JsonParser jsonParser, final DeserializationContext deserializationContext, final TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromObject(jsonParser, deserializationContext);
    }
    
    @Override
    public JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }
    
    @Override
    public JavaType getContentType() {
        return this._mapType.getContentType();
    }
    
    public final Class<?> getMapClass() {
        return this._mapType.getRawClass();
    }
    
    @Override
    public JavaType getValueType() {
        return this._mapType;
    }
    
    @Override
    public void resolve(final DeserializationConfig deserializationConfig, final DeserializerProvider deserializerProvider) throws JsonMappingException {
        if (this._valueInstantiator.canCreateUsingDelegate()) {
            final JavaType delegateType = this._valueInstantiator.getDelegateType();
            if (delegateType == null) {
                throw new IllegalArgumentException("Invalid delegate-creator definition for " + this._mapType + ": value instantiator (" + this._valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
            }
            this._delegateDeserializer = this.findDeserializer(deserializationConfig, deserializerProvider, delegateType, new BeanProperty.Std(null, delegateType, null, this._valueInstantiator.getDelegateCreator()));
        }
        if (this._propertyBasedCreator != null) {
            for (final SettableBeanProperty settableBeanProperty : this._propertyBasedCreator.getCreatorProperties()) {
                if (!settableBeanProperty.hasValueDeserializer()) {
                    this._propertyBasedCreator.assignDeserializer(settableBeanProperty, this.findDeserializer(deserializationConfig, deserializerProvider, settableBeanProperty.getType(), settableBeanProperty));
                }
            }
        }
    }
    
    public void setIgnorableProperties(final String[] array) {
        HashSet<String> arrayToSet;
        if (array == null || array.length == 0) {
            arrayToSet = null;
        }
        else {
            arrayToSet = ArrayBuilders.arrayToSet(array);
        }
        this._ignorableProperties = arrayToSet;
    }
    
    protected void wrapAndThrow(Throwable cause, final Object o) throws IOException {
        while (cause instanceof InvocationTargetException && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause instanceof Error) {
            throw (Error)cause;
        }
        if (cause instanceof IOException && !(cause instanceof JsonMappingException)) {
            throw (IOException)cause;
        }
        throw JsonMappingException.wrapWithPath(cause, o, null);
    }
}
