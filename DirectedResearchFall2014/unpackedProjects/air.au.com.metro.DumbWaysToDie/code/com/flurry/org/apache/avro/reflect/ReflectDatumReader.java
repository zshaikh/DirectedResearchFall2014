package com.flurry.org.apache.avro.reflect;

import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import com.flurry.org.apache.avro.io.*;
import java.nio.*;
import java.io.*;
import com.flurry.org.apache.avro.*;
import java.lang.reflect.*;

public class ReflectDatumReader<T> extends SpecificDatumReader<T>
{
    public ReflectDatumReader() {
        this(null, null, ReflectData.get());
    }
    
    public ReflectDatumReader(final Schema schema) {
        this(schema, schema, ReflectData.get());
    }
    
    public ReflectDatumReader(final Schema schema, final Schema schema2) {
        this(schema, schema2, ReflectData.get());
    }
    
    protected ReflectDatumReader(final Schema schema, final Schema schema2, final ReflectData reflectData) {
        super(schema, schema2, reflectData);
    }
    
    public ReflectDatumReader(final Class<T> clazz) {
        this(ReflectData.get().getSchema(clazz));
    }
    
    @Override
    protected void addToArray(final Object o, final long n, final Object o2) {
        if (o instanceof Collection) {
            ((Collection)o).add(o2);
            return;
        }
        Array.set(o, (int)n, o2);
    }
    
    @Override
    protected Object createString(final String s) {
        return s;
    }
    
    @Override
    protected Object newArray(final Object o, final int length, final Schema schema) {
        final ReflectData value = ReflectData.get();
        final Class classProp = ReflectData.getClassProp(schema, "java-class");
        if (classProp == null) {
            Class componentType = ReflectData.getClassProp(schema, "java-element-class");
            if (componentType == null) {
                componentType = value.getClass(schema.getElementType());
            }
            return Array.newInstance(componentType, length);
        }
        if (o instanceof Collection) {
            ((Collection)o).clear();
            return o;
        }
        if (classProp.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        return SpecificData.newInstance(classProp, schema);
    }
    
    @Override
    protected Object peekArray(final Object o) {
        return null;
    }
    
    @Override
    protected Object readBytes(final Object o, final Decoder decoder) throws IOException {
        final ByteBuffer bytes = decoder.readBytes(null);
        final byte[] dst = new byte[bytes.remaining()];
        bytes.get(dst);
        return dst;
    }
    
    @Override
    protected Object readInt(final Object o, final Schema schema, final Decoder decoder) throws IOException {
        Number n = decoder.readInt();
        final String prop = schema.getProp("java-class");
        if (Byte.class.getName().equals(prop)) {
            n = n;
        }
        else if (Short.class.getName().equals(prop)) {
            return n;
        }
        return n;
    }
    
    @Override
    protected Object readString(final Object o, final Schema schema, final Decoder decoder) throws IOException {
        final String s = (String)this.readString(null, decoder);
        final Class classProp = ReflectData.getClassProp(schema, "java-class");
        if (classProp != null) {
            try {
                return classProp.getConstructor(String.class).newInstance(s);
            }
            catch (NoSuchMethodException ex) {
                throw new AvroRuntimeException(ex);
            }
            catch (InstantiationException ex2) {
                throw new AvroRuntimeException(ex2);
            }
            catch (IllegalAccessException ex3) {
                throw new AvroRuntimeException(ex3);
            }
            catch (InvocationTargetException ex4) {
                throw new AvroRuntimeException(ex4);
            }
        }
        return s;
    }
    
    @Override
    protected Object readString(final Object o, final Decoder decoder) throws IOException {
        return super.readString(null, decoder).toString();
    }
}
