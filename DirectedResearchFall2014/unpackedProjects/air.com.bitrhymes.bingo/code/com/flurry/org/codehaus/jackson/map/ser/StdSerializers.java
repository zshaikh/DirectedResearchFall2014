package com.flurry.org.codehaus.jackson.map.ser;

import com.flurry.org.codehaus.jackson.map.annotate.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.math.*;
import java.sql.*;
import com.flurry.org.codehaus.jackson.map.ser.std.*;

public class StdSerializers
{
    @JacksonStdImpl
    public static final class BooleanSerializer extends NonTypedScalarSerializerBase<Boolean>
    {
        final boolean _forPrimitive;
        
        public BooleanSerializer(final boolean forPrimitive) {
            super(Boolean.class);
            this._forPrimitive = forPrimitive;
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("boolean", !this._forPrimitive);
        }
        
        @Override
        public void serialize(final Boolean b, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeBoolean(b);
        }
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class CalendarSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.CalendarSerializer
    {
    }
    
    @JacksonStdImpl
    public static final class DoubleSerializer extends NonTypedScalarSerializerBase<Double>
    {
        static final DoubleSerializer instance;
        
        static {
            instance = new DoubleSerializer();
        }
        
        public DoubleSerializer() {
            super(Double.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("number", true);
        }
        
        @Override
        public void serialize(final Double n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(n);
        }
    }
    
    @JacksonStdImpl
    public static final class FloatSerializer extends ScalarSerializerBase<Float>
    {
        static final FloatSerializer instance;
        
        static {
            instance = new FloatSerializer();
        }
        
        public FloatSerializer() {
            super(Float.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("number", true);
        }
        
        @Override
        public void serialize(final Float n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(n);
        }
    }
    
    @JacksonStdImpl
    public static final class IntLikeSerializer extends ScalarSerializerBase<Number>
    {
        static final IntLikeSerializer instance;
        
        static {
            instance = new IntLikeSerializer();
        }
        
        public IntLikeSerializer() {
            super(Number.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("integer", true);
        }
        
        @Override
        public void serialize(final Number n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(n.intValue());
        }
    }
    
    @JacksonStdImpl
    public static final class IntegerSerializer extends NonTypedScalarSerializerBase<Integer>
    {
        public IntegerSerializer() {
            super(Integer.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("integer", true);
        }
        
        @Override
        public void serialize(final Integer n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(n);
        }
    }
    
    @JacksonStdImpl
    public static final class LongSerializer extends ScalarSerializerBase<Long>
    {
        static final LongSerializer instance;
        
        static {
            instance = new LongSerializer();
        }
        
        public LongSerializer() {
            super(Long.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("number", true);
        }
        
        @Override
        public void serialize(final Long n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(n);
        }
    }
    
    @JacksonStdImpl
    public static final class NumberSerializer extends ScalarSerializerBase<Number>
    {
        public static final NumberSerializer instance;
        
        static {
            instance = new NumberSerializer();
        }
        
        public NumberSerializer() {
            super(Number.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("number", true);
        }
        
        @Override
        public void serialize(final Number n, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            if (n instanceof BigDecimal) {
                jsonGenerator.writeNumber((BigDecimal)n);
                return;
            }
            if (n instanceof BigInteger) {
                jsonGenerator.writeNumber((BigInteger)n);
                return;
            }
            if (n instanceof Integer) {
                jsonGenerator.writeNumber(n.intValue());
                return;
            }
            if (n instanceof Long) {
                jsonGenerator.writeNumber(n.longValue());
                return;
            }
            if (n instanceof Double) {
                jsonGenerator.writeNumber(n.doubleValue());
                return;
            }
            if (n instanceof Float) {
                jsonGenerator.writeNumber(n.floatValue());
                return;
            }
            if (n instanceof Byte || n instanceof Short) {
                jsonGenerator.writeNumber(n.intValue());
                return;
            }
            jsonGenerator.writeNumber(n.toString());
        }
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class SerializableSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.SerializableSerializer
    {
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class SerializableWithTypeSerializer extends com.flurry.org.codehaus.jackson.map.ser.std.SerializableWithTypeSerializer
    {
    }
    
    @JacksonStdImpl
    public static final class SqlDateSerializer extends ScalarSerializerBase<Date>
    {
        public SqlDateSerializer() {
            super(Date.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("string", true);
        }
        
        @Override
        public void serialize(final Date date, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(date.toString());
        }
    }
    
    @JacksonStdImpl
    public static final class SqlTimeSerializer extends ScalarSerializerBase<Time>
    {
        public SqlTimeSerializer() {
            super(Time.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("string", true);
        }
        
        @Override
        public void serialize(final Time time, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(time.toString());
        }
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class StringSerializer extends NonTypedScalarSerializerBase<String>
    {
        public StringSerializer() {
            super(String.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("string", true);
        }
        
        @Override
        public void serialize(final String s, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(s);
        }
    }
    
    @JacksonStdImpl
    @Deprecated
    public static final class UtilDateSerializer extends DateSerializer
    {
    }
}
