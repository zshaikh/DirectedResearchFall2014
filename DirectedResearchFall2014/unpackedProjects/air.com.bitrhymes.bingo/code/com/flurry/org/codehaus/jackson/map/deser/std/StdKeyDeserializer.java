package com.flurry.org.codehaus.jackson.map.deser.std;

import com.flurry.org.codehaus.jackson.io.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.map.introspect.*;
import com.flurry.org.codehaus.jackson.map.util.*;
import java.lang.reflect.*;
import java.util.*;

public abstract class StdKeyDeserializer extends KeyDeserializer
{
    protected final Class<?> _keyClass;
    
    protected StdKeyDeserializer(final Class<?> keyClass) {
        super();
        this._keyClass = keyClass;
    }
    
    protected abstract Object _parse(final String p0, final DeserializationContext p1) throws Exception;
    
    protected double _parseDouble(final String s) throws IllegalArgumentException {
        return NumberInput.parseDouble(s);
    }
    
    protected int _parseInt(final String s) throws IllegalArgumentException {
        return Integer.parseInt(s);
    }
    
    protected long _parseLong(final String s) throws IllegalArgumentException {
        return Long.parseLong(s);
    }
    
    @Override
    public final Object deserializeKey(final String s, final DeserializationContext deserializationContext) throws IOException, JsonProcessingException {
        if (s == null) {
            return null;
        }
        try {
            final Object parse = this._parse(s, deserializationContext);
            if (parse != null) {
                return parse;
            }
        }
        catch (Exception ex) {
            throw deserializationContext.weirdKeyException(this._keyClass, s, "not a valid representation: " + ex.getMessage());
        }
        throw deserializationContext.weirdKeyException(this._keyClass, s, "not a valid representation");
    }
    
    public Class<?> getKeyClass() {
        return this._keyClass;
    }
    
    static final class BoolKD extends StdKeyDeserializer
    {
        BoolKD() {
            super(Boolean.class);
        }
        
        public Boolean _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            if ("true".equals(s)) {
                return Boolean.TRUE;
            }
            if ("false".equals(s)) {
                return Boolean.FALSE;
            }
            throw deserializationContext.weirdKeyException(this._keyClass, s, "value not 'true' or 'false'");
        }
    }
    
    static final class ByteKD extends StdKeyDeserializer
    {
        ByteKD() {
            super(Byte.class);
        }
        
        public Byte _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            final int parseInt = this._parseInt(s);
            if (parseInt < -128 || parseInt > 127) {
                throw deserializationContext.weirdKeyException(this._keyClass, s, "overflow, value can not be represented as 8-bit value");
            }
            return (byte)parseInt;
        }
    }
    
    static final class CalendarKD extends StdKeyDeserializer
    {
        protected CalendarKD() {
            super(Calendar.class);
        }
        
        public Calendar _parse(final String s, final DeserializationContext deserializationContext) throws IllegalArgumentException, JsonMappingException {
            final Date date = deserializationContext.parseDate(s);
            if (date == null) {
                return null;
            }
            return deserializationContext.constructCalendar(date);
        }
    }
    
    static final class CharKD extends StdKeyDeserializer
    {
        CharKD() {
            super(Character.class);
        }
        
        public Character _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            if (s.length() == 1) {
                return s.charAt(0);
            }
            throw deserializationContext.weirdKeyException(this._keyClass, s, "can only convert 1-character Strings");
        }
    }
    
    static final class DateKD extends StdKeyDeserializer
    {
        protected DateKD() {
            super(Date.class);
        }
        
        public Date _parse(final String s, final DeserializationContext deserializationContext) throws IllegalArgumentException, JsonMappingException {
            return deserializationContext.parseDate(s);
        }
    }
    
    static final class DoubleKD extends StdKeyDeserializer
    {
        DoubleKD() {
            super(Double.class);
        }
        
        public Double _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            return this._parseDouble(s);
        }
    }
    
    static final class EnumKD extends StdKeyDeserializer
    {
        protected final AnnotatedMethod _factory;
        protected final EnumResolver<?> _resolver;
        
        protected EnumKD(final EnumResolver<?> resolver, final AnnotatedMethod factory) {
            super(resolver.getEnumClass());
            this._resolver = resolver;
            this._factory = factory;
        }
        
        public Object _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            if (this._factory != null) {
                try {
                    return this._factory.call1(s);
                }
                catch (Exception ex) {
                    ClassUtil.unwrapAndThrowAsIAE(ex);
                }
            }
            final Object enum1 = this._resolver.findEnum(s);
            if (enum1 == null) {
                throw deserializationContext.weirdKeyException(this._keyClass, s, "not one of values for Enum class");
            }
            return enum1;
        }
    }
    
    static final class FloatKD extends StdKeyDeserializer
    {
        FloatKD() {
            super(Float.class);
        }
        
        public Float _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            return (float)this._parseDouble(s);
        }
    }
    
    static final class IntKD extends StdKeyDeserializer
    {
        IntKD() {
            super(Integer.class);
        }
        
        public Integer _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            return this._parseInt(s);
        }
    }
    
    static final class LongKD extends StdKeyDeserializer
    {
        LongKD() {
            super(Long.class);
        }
        
        public Long _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            return this._parseLong(s);
        }
    }
    
    static final class ShortKD extends StdKeyDeserializer
    {
        ShortKD() {
            super(Integer.class);
        }
        
        public Short _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            final int parseInt = this._parseInt(s);
            if (parseInt < -32768 || parseInt > 32767) {
                throw deserializationContext.weirdKeyException(this._keyClass, s, "overflow, value can not be represented as 16-bit value");
            }
            return (short)parseInt;
        }
    }
    
    static final class StringCtorKeyDeserializer extends StdKeyDeserializer
    {
        protected final Constructor<?> _ctor;
        
        public StringCtorKeyDeserializer(final Constructor<?> ctor) {
            super(ctor.getDeclaringClass());
            this._ctor = ctor;
        }
        
        public Object _parse(final String s, final DeserializationContext deserializationContext) throws Exception {
            return this._ctor.newInstance(s);
        }
    }
    
    static final class StringFactoryKeyDeserializer extends StdKeyDeserializer
    {
        final Method _factoryMethod;
        
        public StringFactoryKeyDeserializer(final Method factoryMethod) {
            super(factoryMethod.getDeclaringClass());
            this._factoryMethod = factoryMethod;
        }
        
        public Object _parse(final String s, final DeserializationContext deserializationContext) throws Exception {
            return this._factoryMethod.invoke(null, s);
        }
    }
    
    static final class StringKD extends StdKeyDeserializer
    {
        private static final StringKD sObject;
        private static final StringKD sString;
        
        static {
            sString = new StringKD(String.class);
            sObject = new StringKD(Object.class);
        }
        
        private StringKD(final Class<?> clazz) {
            super(clazz);
        }
        
        public static StringKD forType(final Class<?> clazz) {
            if (clazz == String.class) {
                return StringKD.sString;
            }
            if (clazz == Object.class) {
                return StringKD.sObject;
            }
            return new StringKD(clazz);
        }
        
        public String _parse(final String s, final DeserializationContext deserializationContext) throws JsonMappingException {
            return s;
        }
    }
    
    static final class UuidKD extends StdKeyDeserializer
    {
        protected UuidKD() {
            super(UUID.class);
        }
        
        public UUID _parse(final String name, final DeserializationContext deserializationContext) throws IllegalArgumentException, JsonMappingException {
            return UUID.fromString(name);
        }
    }
}
