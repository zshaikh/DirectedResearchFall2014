package com.flurry.org.codehaus.jackson.map;

import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.node.*;
import com.flurry.org.codehaus.jackson.map.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import com.flurry.org.codehaus.jackson.*;

public abstract class DeserializationContext
{
    protected final DeserializationConfig _config;
    protected final int _featureFlags;
    
    protected DeserializationContext(final DeserializationConfig config) {
        super();
        this._config = config;
        this._featureFlags = config._featureFlags;
    }
    
    public abstract Calendar constructCalendar(final Date p0);
    
    public JavaType constructType(final Class<?> clazz) {
        return this._config.constructType(clazz);
    }
    
    public abstract Object findInjectableValue(final Object p0, final BeanProperty p1, final Object p2);
    
    public abstract ArrayBuilders getArrayBuilders();
    
    public Base64Variant getBase64Variant() {
        return this._config.getBase64Variant();
    }
    
    public DeserializationConfig getConfig() {
        return this._config;
    }
    
    public DeserializerProvider getDeserializerProvider() {
        return null;
    }
    
    public final JsonNodeFactory getNodeFactory() {
        return this._config.getNodeFactory();
    }
    
    public abstract JsonParser getParser();
    
    public TypeFactory getTypeFactory() {
        return this._config.getTypeFactory();
    }
    
    public abstract boolean handleUnknownProperty(final JsonParser p0, final JsonDeserializer<?> p1, final Object p2, final String p3) throws IOException, JsonProcessingException;
    
    public abstract JsonMappingException instantiationException(final Class<?> p0, final String p1);
    
    public abstract JsonMappingException instantiationException(final Class<?> p0, final Throwable p1);
    
    public boolean isEnabled(final DeserializationConfig.Feature feature) {
        return (this._featureFlags & feature.getMask()) != 0x0;
    }
    
    public abstract ObjectBuffer leaseObjectBuffer();
    
    public abstract JsonMappingException mappingException(final Class<?> p0);
    
    public abstract JsonMappingException mappingException(final Class<?> p0, final JsonToken p1);
    
    public JsonMappingException mappingException(final String s) {
        return JsonMappingException.from(this.getParser(), s);
    }
    
    public abstract Date parseDate(final String p0) throws IllegalArgumentException;
    
    public abstract void returnObjectBuffer(final ObjectBuffer p0);
    
    public abstract JsonMappingException unknownFieldException(final Object p0, final String p1);
    
    public abstract JsonMappingException unknownTypeException(final JavaType p0, final String p1);
    
    public abstract JsonMappingException weirdKeyException(final Class<?> p0, final String p1, final String p2);
    
    public abstract JsonMappingException weirdNumberException(final Class<?> p0, final String p1);
    
    public abstract JsonMappingException weirdStringException(final Class<?> p0, final String p1);
    
    public abstract JsonMappingException wrongTokenException(final JsonParser p0, final JsonToken p1, final String p2);
}
