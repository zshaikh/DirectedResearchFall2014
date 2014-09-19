package com.flurry.org.codehaus.jackson.map.ser.std;

import com.flurry.org.codehaus.jackson.map.util.*;
import java.net.*;
import java.util.regex.*;
import java.util.*;
import java.util.concurrent.atomic.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.lang.reflect.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class StdJdkSerializers implements Provider<Map.Entry<Class<?>, Object>>
{
    @Override
    public Collection<Map.Entry<Class<?>, Object>> provide() {
        final HashMap<Class<URL>, ToStringSerializer> hashMap = new HashMap<Class<URL>, ToStringSerializer>();
        final ToStringSerializer instance = ToStringSerializer.instance;
        hashMap.put(URL.class, instance);
        hashMap.put((Class<URL>)URI.class, instance);
        hashMap.put((Class<URL>)Currency.class, instance);
        hashMap.put((Class<URL>)UUID.class, instance);
        hashMap.put((Class<URL>)Pattern.class, instance);
        hashMap.put((Class<URL>)Locale.class, instance);
        hashMap.put((Class<URL>)Locale.class, instance);
        hashMap.put((Class<URL>)AtomicReference.class, (ToStringSerializer)AtomicReferenceSerializer.class);
        hashMap.put((Class<URL>)AtomicBoolean.class, (ToStringSerializer)AtomicBooleanSerializer.class);
        hashMap.put((Class<URL>)AtomicInteger.class, (ToStringSerializer)AtomicIntegerSerializer.class);
        hashMap.put((Class<URL>)AtomicLong.class, (ToStringSerializer)AtomicLongSerializer.class);
        hashMap.put((Class<URL>)File.class, (ToStringSerializer)FileSerializer.class);
        hashMap.put((Class<URL>)Class.class, (ToStringSerializer)ClassSerializer.class);
        hashMap.put((Class<URL>)Void.TYPE, (ToStringSerializer)NullSerializer.class);
        return (Collection<Map.Entry<Class<?>, Object>>)hashMap.entrySet();
    }
    
    public static final class AtomicBooleanSerializer extends ScalarSerializerBase<AtomicBoolean>
    {
        public AtomicBooleanSerializer() {
            super(AtomicBoolean.class, false);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("boolean", true);
        }
        
        @Override
        public void serialize(final AtomicBoolean atomicBoolean, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeBoolean(atomicBoolean.get());
        }
    }
    
    public static final class AtomicIntegerSerializer extends ScalarSerializerBase<AtomicInteger>
    {
        public AtomicIntegerSerializer() {
            super(AtomicInteger.class, false);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("integer", true);
        }
        
        @Override
        public void serialize(final AtomicInteger atomicInteger, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(atomicInteger.get());
        }
    }
    
    public static final class AtomicLongSerializer extends ScalarSerializerBase<AtomicLong>
    {
        public AtomicLongSerializer() {
            super(AtomicLong.class, false);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("integer", true);
        }
        
        @Override
        public void serialize(final AtomicLong atomicLong, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeNumber(atomicLong.get());
        }
    }
    
    public static final class AtomicReferenceSerializer extends SerializerBase<AtomicReference<?>>
    {
        public AtomicReferenceSerializer() {
            super(AtomicReference.class, false);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("any", true);
        }
        
        @Override
        public void serialize(final AtomicReference<?> atomicReference, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            serializerProvider.defaultSerializeValue(atomicReference.get(), jsonGenerator);
        }
    }
    
    public static final class ClassSerializer extends ScalarSerializerBase<Class<?>>
    {
        public ClassSerializer() {
            super(Class.class, false);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("string", true);
        }
        
        @Override
        public void serialize(final Class<?> clazz, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(clazz.getName());
        }
    }
    
    public static final class FileSerializer extends ScalarSerializerBase<File>
    {
        public FileSerializer() {
            super(File.class);
        }
        
        @Override
        public JsonNode getSchema(final SerializerProvider serializerProvider, final Type type) {
            return this.createSchemaNode("string", true);
        }
        
        @Override
        public void serialize(final File file, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
            jsonGenerator.writeString(file.getAbsolutePath());
        }
    }
}
