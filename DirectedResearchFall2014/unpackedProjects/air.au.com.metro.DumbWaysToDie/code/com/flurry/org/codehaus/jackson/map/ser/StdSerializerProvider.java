package com.flurry.org.codehaus.jackson.map.ser;

import java.text.*;
import com.flurry.org.codehaus.jackson.map.ser.impl.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.io.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.schema.*;
import java.lang.reflect.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.*;

public class StdSerializerProvider extends SerializerProvider
{
    static final boolean CACHE_UNKNOWN_MAPPINGS;
    @Deprecated
    public static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER;
    public static final JsonSerializer<Object> DEFAULT_NULL_KEY_SERIALIZER;
    public static final JsonSerializer<Object> DEFAULT_UNKNOWN_SERIALIZER;
    protected DateFormat _dateFormat;
    protected JsonSerializer<Object> _keySerializer;
    protected final ReadOnlyClassToSerializerMap _knownSerializers;
    protected JsonSerializer<Object> _nullKeySerializer;
    protected JsonSerializer<Object> _nullValueSerializer;
    protected final RootNameLookup _rootNames;
    protected final SerializerCache _serializerCache;
    protected final SerializerFactory _serializerFactory;
    protected JsonSerializer<Object> _unknownTypeSerializer;
    
    static {
        DEFAULT_NULL_KEY_SERIALIZER = new FailingSerializer("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
        DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
        DEFAULT_UNKNOWN_SERIALIZER = new UnknownSerializer();
    }
    
    public StdSerializerProvider() {
        super(null);
        this._unknownTypeSerializer = StdSerializerProvider.DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        this._nullKeySerializer = StdSerializerProvider.DEFAULT_NULL_KEY_SERIALIZER;
        this._serializerFactory = null;
        this._serializerCache = new SerializerCache();
        this._knownSerializers = null;
        this._rootNames = new RootNameLookup();
    }
    
    protected StdSerializerProvider(final SerializationConfig serializationConfig, final StdSerializerProvider stdSerializerProvider, final SerializerFactory serializerFactory) {
        super(serializationConfig);
        this._unknownTypeSerializer = StdSerializerProvider.DEFAULT_UNKNOWN_SERIALIZER;
        this._nullValueSerializer = NullSerializer.instance;
        this._nullKeySerializer = StdSerializerProvider.DEFAULT_NULL_KEY_SERIALIZER;
        if (serializationConfig == null) {
            throw new NullPointerException();
        }
        this._serializerFactory = serializerFactory;
        this._serializerCache = stdSerializerProvider._serializerCache;
        this._unknownTypeSerializer = stdSerializerProvider._unknownTypeSerializer;
        this._keySerializer = stdSerializerProvider._keySerializer;
        this._nullValueSerializer = stdSerializerProvider._nullValueSerializer;
        this._nullKeySerializer = stdSerializerProvider._nullKeySerializer;
        this._rootNames = stdSerializerProvider._rootNames;
        this._knownSerializers = this._serializerCache.getReadOnlyLookupMap();
    }
    
    protected JsonSerializer<Object> _createAndCacheUntypedSerializer(final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        try {
            final JsonSerializer<Object> createUntypedSerializer = this._createUntypedSerializer(javaType, beanProperty);
            if (createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(javaType, createUntypedSerializer, this);
            }
            return createUntypedSerializer;
        }
        catch (IllegalArgumentException ex) {
            throw new JsonMappingException(ex.getMessage(), null, ex);
        }
    }
    
    protected JsonSerializer<Object> _createAndCacheUntypedSerializer(final Class<?> clazz, final BeanProperty beanProperty) throws JsonMappingException {
        try {
            final JsonSerializer<Object> createUntypedSerializer = this._createUntypedSerializer(this._config.constructType(clazz), beanProperty);
            if (createUntypedSerializer != null) {
                this._serializerCache.addAndResolveNonTypedSerializer(clazz, createUntypedSerializer, this);
            }
            return createUntypedSerializer;
        }
        catch (IllegalArgumentException ex) {
            throw new JsonMappingException(ex.getMessage(), null, ex);
        }
    }
    
    protected JsonSerializer<Object> _createUntypedSerializer(final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        return this._serializerFactory.createSerializer(this._config, javaType, beanProperty);
    }
    
    protected JsonSerializer<Object> _findExplicitUntypedSerializer(final Class<?> clazz, final BeanProperty beanProperty) {
        final JsonSerializer<Object> untypedValueSerializer = this._knownSerializers.untypedValueSerializer(clazz);
        if (untypedValueSerializer != null) {
            return untypedValueSerializer;
        }
        final JsonSerializer<Object> untypedValueSerializer2 = this._serializerCache.untypedValueSerializer(clazz);
        if (untypedValueSerializer2 != null) {
            return untypedValueSerializer2;
        }
        try {
            return this._createAndCacheUntypedSerializer(clazz, beanProperty);
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    protected JsonSerializer<Object> _handleContextualResolvable(JsonSerializer<Object> resolvableSerializer, final BeanProperty beanProperty) throws JsonMappingException {
        if (!(resolvableSerializer instanceof ContextualSerializer)) {
            return (JsonSerializer<Object>)resolvableSerializer;
        }
        final JsonSerializer contextual = ((ContextualSerializer)resolvableSerializer).createContextual(this._config, beanProperty);
        if (contextual != resolvableSerializer) {
            if (contextual instanceof ResolvableSerializer) {
                ((ResolvableSerializer)contextual).resolve(this);
            }
            resolvableSerializer = (ResolvableSerializer)contextual;
        }
        return (JsonSerializer<Object>)resolvableSerializer;
    }
    
    protected void _reportIncompatibleRootType(final Object o, final JavaType obj) throws IOException, JsonProcessingException {
        if (obj.isPrimitive() && ClassUtil.wrapperType(obj.getRawClass()).isAssignableFrom(o.getClass())) {
            return;
        }
        throw new JsonMappingException("Incompatible types: declared root type (" + obj + ") vs " + o.getClass().getName());
    }
    
    protected void _serializeValue(final JsonGenerator jsonGenerator, final Object o) throws IOException, JsonProcessingException {
        Label_0029: {
            if (o != null) {
                break Label_0029;
            }
            JsonSerializer<Object> jsonSerializer = this.getNullValueSerializer();
            boolean enabled = false;
            try {
                // iftrue(Label_0012:, !enabled)
                while (true) {
                    jsonSerializer.serialize(o, jsonGenerator, this);
                    if (enabled) {
                        jsonGenerator.writeEndObject();
                    }
                    return;
                    jsonSerializer = this.findTypedValueSerializer(o.getClass(), true, null);
                    enabled = this._config.isEnabled(SerializationConfig.Feature.WRAP_ROOT_VALUE);
                    jsonGenerator.writeStartObject();
                    jsonGenerator.writeFieldName(this._rootNames.findRootName(o.getClass(), this._config));
                    continue;
                }
            }
            catch (IOException ex) {
                throw ex;
            }
            catch (Exception ex2) {
                String s = ex2.getMessage();
                if (s == null) {
                    s = "[no message for " + ex2.getClass().getName() + "]";
                }
                throw new JsonMappingException(s, ex2);
            }
        }
    }
    
    protected void _serializeValue(final JsonGenerator jsonGenerator, final Object o, final JavaType javaType) throws IOException, JsonProcessingException {
        Label_0031: {
            if (o != null) {
                break Label_0031;
            }
            JsonSerializer<Object> jsonSerializer = this.getNullValueSerializer();
            boolean enabled = false;
            try {
                // iftrue(Label_0013:, !enabled)
                while (true) {
                    while (true) {
                        while (true) {
                            jsonSerializer.serialize(o, jsonGenerator, this);
                            if (enabled) {
                                jsonGenerator.writeEndObject();
                            }
                            return;
                            jsonGenerator.writeStartObject();
                            jsonGenerator.writeFieldName(this._rootNames.findRootName(javaType, this._config));
                            continue;
                        }
                        jsonSerializer = this.findTypedValueSerializer(javaType, true, null);
                        enabled = this._config.isEnabled(SerializationConfig.Feature.WRAP_ROOT_VALUE);
                        continue;
                    }
                    this._reportIncompatibleRootType(o, javaType);
                    continue;
                }
            }
            // iftrue(Label_0051:, javaType.getRawClass().isAssignableFrom(o.getClass()))
            catch (IOException ex) {
                throw ex;
            }
            catch (Exception ex2) {
                String s = ex2.getMessage();
                if (s == null) {
                    s = "[no message for " + ex2.getClass().getName() + "]";
                }
                throw new JsonMappingException(s, ex2);
            }
        }
    }
    
    @Override
    public int cachedSerializersCount() {
        return this._serializerCache.size();
    }
    
    protected StdSerializerProvider createInstance(final SerializationConfig serializationConfig, final SerializerFactory serializerFactory) {
        return new StdSerializerProvider(serializationConfig, this, serializerFactory);
    }
    
    @Override
    public void defaultSerializeDateKey(final long n, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        if (this.isEnabled(SerializationConfig.Feature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(n));
            return;
        }
        if (this._dateFormat == null) {
            this._dateFormat = (DateFormat)this._config.getDateFormat().clone();
        }
        jsonGenerator.writeFieldName(this._dateFormat.format(new Date(n)));
    }
    
    @Override
    public void defaultSerializeDateKey(final Date date, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        if (this.isEnabled(SerializationConfig.Feature.WRITE_DATE_KEYS_AS_TIMESTAMPS)) {
            jsonGenerator.writeFieldName(String.valueOf(date.getTime()));
            return;
        }
        if (this._dateFormat == null) {
            this._dateFormat = (DateFormat)this._config.getDateFormat().clone();
        }
        jsonGenerator.writeFieldName(this._dateFormat.format(date));
    }
    
    @Override
    public final void defaultSerializeDateValue(final long date, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        if (this.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.writeNumber(date);
            return;
        }
        if (this._dateFormat == null) {
            this._dateFormat = (DateFormat)this._config.getDateFormat().clone();
        }
        jsonGenerator.writeString(this._dateFormat.format(new Date(date)));
    }
    
    @Override
    public final void defaultSerializeDateValue(final Date date, final JsonGenerator jsonGenerator) throws IOException, JsonProcessingException {
        if (this.isEnabled(SerializationConfig.Feature.WRITE_DATES_AS_TIMESTAMPS)) {
            jsonGenerator.writeNumber(date.getTime());
            return;
        }
        if (this._dateFormat == null) {
            this._dateFormat = (DateFormat)this._config.getDateFormat().clone();
        }
        jsonGenerator.writeString(this._dateFormat.format(date));
    }
    
    @Override
    public JsonSerializer<Object> findKeySerializer(final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._serializerFactory.createKeySerializer(this._config, javaType, beanProperty);
        if (jsonSerializer == null) {
            if (this._keySerializer == null) {
                jsonSerializer = StdKeySerializers.getStdKeySerializer(javaType);
            }
            else {
                jsonSerializer = this._keySerializer;
            }
        }
        if (jsonSerializer instanceof ContextualSerializer) {
            jsonSerializer = ((ContextualSerializer<Object>)jsonSerializer).createContextual(this._config, beanProperty);
        }
        return jsonSerializer;
    }
    
    @Override
    public JsonSerializer<Object> findTypedValueSerializer(final JavaType javaType, final boolean b, final BeanProperty beanProperty) throws JsonMappingException {
        final JsonSerializer<Object> typedValueSerializer = this._knownSerializers.typedValueSerializer(javaType);
        if (typedValueSerializer != null) {
            return typedValueSerializer;
        }
        final JsonSerializer<Object> typedValueSerializer2 = this._serializerCache.typedValueSerializer(javaType);
        if (typedValueSerializer2 != null) {
            return typedValueSerializer2;
        }
        JsonSerializer<Object> valueSerializer = this.findValueSerializer(javaType, beanProperty);
        final TypeSerializer typeSerializer = this._serializerFactory.createTypeSerializer(this._config, javaType, beanProperty);
        if (typeSerializer != null) {
            valueSerializer = new WrappedSerializer(typeSerializer, valueSerializer);
        }
        if (b) {
            this._serializerCache.addTypedSerializer(javaType, valueSerializer);
        }
        return valueSerializer;
    }
    
    @Override
    public JsonSerializer<Object> findTypedValueSerializer(final Class<?> clazz, final boolean b, final BeanProperty beanProperty) throws JsonMappingException {
        final JsonSerializer<Object> typedValueSerializer = this._knownSerializers.typedValueSerializer(clazz);
        if (typedValueSerializer != null) {
            return typedValueSerializer;
        }
        final JsonSerializer<Object> typedValueSerializer2 = this._serializerCache.typedValueSerializer(clazz);
        if (typedValueSerializer2 != null) {
            return typedValueSerializer2;
        }
        JsonSerializer<Object> valueSerializer = this.findValueSerializer(clazz, beanProperty);
        final TypeSerializer typeSerializer = this._serializerFactory.createTypeSerializer(this._config, this._config.constructType(clazz), beanProperty);
        if (typeSerializer != null) {
            valueSerializer = new WrappedSerializer(typeSerializer, valueSerializer);
        }
        if (b) {
            this._serializerCache.addTypedSerializer(clazz, valueSerializer);
        }
        return valueSerializer;
    }
    
    @Override
    public JsonSerializer<Object> findValueSerializer(final JavaType javaType, final BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._knownSerializers.untypedValueSerializer(javaType);
        if (jsonSerializer == null) {
            jsonSerializer = this._serializerCache.untypedValueSerializer(javaType);
            if (jsonSerializer == null) {
                jsonSerializer = this._createAndCacheUntypedSerializer(javaType, beanProperty);
                if (jsonSerializer == null) {
                    return this.getUnknownTypeSerializer(javaType.getRawClass());
                }
            }
        }
        return this._handleContextualResolvable(jsonSerializer, beanProperty);
    }
    
    @Override
    public JsonSerializer<Object> findValueSerializer(final Class<?> clazz, final BeanProperty beanProperty) throws JsonMappingException {
        JsonSerializer<Object> jsonSerializer = this._knownSerializers.untypedValueSerializer(clazz);
        if (jsonSerializer == null) {
            jsonSerializer = this._serializerCache.untypedValueSerializer(clazz);
            if (jsonSerializer == null) {
                jsonSerializer = this._serializerCache.untypedValueSerializer(this._config.constructType(clazz));
                if (jsonSerializer == null) {
                    jsonSerializer = this._createAndCacheUntypedSerializer(clazz, beanProperty);
                    if (jsonSerializer == null) {
                        return this.getUnknownTypeSerializer(clazz);
                    }
                }
            }
        }
        return this._handleContextualResolvable(jsonSerializer, beanProperty);
    }
    
    @Override
    public void flushCachedSerializers() {
        this._serializerCache.flush();
    }
    
    @Override
    public JsonSchema generateJsonSchema(final Class<?> clazz, final SerializationConfig serializationConfig, final SerializerFactory serializerFactory) throws JsonMappingException {
        if (clazz == null) {
            throw new IllegalArgumentException("A class must be provided");
        }
        final StdSerializerProvider instance = this.createInstance(serializationConfig, serializerFactory);
        if (instance.getClass() != this.getClass()) {
            throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + instance.getClass() + "; blueprint of type " + this.getClass());
        }
        final JsonSerializer<Object> valueSerializer = instance.findValueSerializer(clazz, null);
        JsonNode jsonNode;
        if (valueSerializer instanceof SchemaAware) {
            jsonNode = ((SchemaAware)valueSerializer).getSchema(instance, null);
        }
        else {
            jsonNode = JsonSchema.getDefaultSchemaNode();
        }
        if (!(jsonNode instanceof ObjectNode)) {
            throw new IllegalArgumentException("Class " + clazz.getName() + " would not be serialized as a JSON object and therefore has no schema");
        }
        return new JsonSchema((ObjectNode)jsonNode);
    }
    
    @Override
    public JsonSerializer<Object> getNullKeySerializer() {
        return this._nullKeySerializer;
    }
    
    @Override
    public JsonSerializer<Object> getNullValueSerializer() {
        return this._nullValueSerializer;
    }
    
    @Override
    public JsonSerializer<Object> getUnknownTypeSerializer(final Class<?> clazz) {
        return this._unknownTypeSerializer;
    }
    
    @Override
    public boolean hasSerializerFor(final SerializationConfig serializationConfig, final Class<?> clazz, final SerializerFactory serializerFactory) {
        return this.createInstance(serializationConfig, serializerFactory)._findExplicitUntypedSerializer(clazz, null) != null;
    }
    
    @Override
    public final void serializeValue(final SerializationConfig serializationConfig, final JsonGenerator jsonGenerator, final Object o, final SerializerFactory serializerFactory) throws IOException, JsonGenerationException {
        if (serializerFactory == null) {
            throw new IllegalArgumentException("Can not pass null serializerFactory");
        }
        final StdSerializerProvider instance = this.createInstance(serializationConfig, serializerFactory);
        if (instance.getClass() != this.getClass()) {
            throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + instance.getClass() + "; blueprint of type " + this.getClass());
        }
        instance._serializeValue(jsonGenerator, o);
    }
    
    @Override
    public final void serializeValue(final SerializationConfig serializationConfig, final JsonGenerator jsonGenerator, final Object o, final JavaType javaType, final SerializerFactory serializerFactory) throws IOException, JsonGenerationException {
        if (serializerFactory == null) {
            throw new IllegalArgumentException("Can not pass null serializerFactory");
        }
        final StdSerializerProvider instance = this.createInstance(serializationConfig, serializerFactory);
        if (instance.getClass() != this.getClass()) {
            throw new IllegalStateException("Broken serializer provider: createInstance returned instance of type " + instance.getClass() + "; blueprint of type " + this.getClass());
        }
        instance._serializeValue(jsonGenerator, o, javaType);
    }
    
    @Override
    public void setDefaultKeySerializer(final JsonSerializer<Object> keySerializer) {
        if (keySerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._keySerializer = keySerializer;
    }
    
    @Override
    public void setNullKeySerializer(final JsonSerializer<Object> nullKeySerializer) {
        if (nullKeySerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._nullKeySerializer = nullKeySerializer;
    }
    
    @Override
    public void setNullValueSerializer(final JsonSerializer<Object> nullValueSerializer) {
        if (nullValueSerializer == null) {
            throw new IllegalArgumentException("Can not pass null JsonSerializer");
        }
        this._nullValueSerializer = nullValueSerializer;
    }
    
    private static final class WrappedSerializer extends JsonSerializer<Object>
    {
        protected final JsonSerializer<Object> _serializer;
        protected final TypeSerializer _typeSerializer;
        
        public WrappedSerializer(final TypeSerializer typeSerializer, final JsonSerializer<Object> serializer) {
            super();
            this._typeSerializer = typeSerializer;
            this._serializer = serializer;
        }
        
        @Override
        public Class<Object> handledType() {
            return Object.class;
        }
        
        @Override
        public void serialize(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
            this._serializer.serializeWithType(o, jsonGenerator, serializerProvider, this._typeSerializer);
        }
        
        @Override
        public void serializeWithType(final Object o, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
            this._serializer.serializeWithType(o, jsonGenerator, serializerProvider, typeSerializer);
        }
    }
}
