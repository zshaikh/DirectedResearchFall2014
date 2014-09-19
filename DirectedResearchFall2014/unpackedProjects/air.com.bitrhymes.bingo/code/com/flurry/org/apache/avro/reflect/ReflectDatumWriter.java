package com.flurry.org.apache.avro.reflect;

import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.specific.*;
import java.util.*;
import java.lang.reflect.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;

public class ReflectDatumWriter<T> extends SpecificDatumWriter<T>
{
    public ReflectDatumWriter() {
        this(ReflectData.get());
    }
    
    public ReflectDatumWriter(final Schema schema) {
        this(schema, ReflectData.get());
    }
    
    protected ReflectDatumWriter(final Schema schema, final ReflectData reflectData) {
        super(schema, reflectData);
    }
    
    protected ReflectDatumWriter(final ReflectData reflectData) {
        super(reflectData);
    }
    
    public ReflectDatumWriter(final Class<T> clazz) {
        this(clazz, ReflectData.get());
    }
    
    public ReflectDatumWriter(final Class<T> clazz, final ReflectData reflectData) {
        this(reflectData.getSchema(clazz), reflectData);
    }
    
    @Override
    protected Iterator<Object> getArrayElements(final Object o) {
        if (o instanceof Collection) {
            return ((Collection)o).iterator();
        }
        return new Iterator<Object>() {
            private int i = 0;
            private final int length = Array.getLength(o);
            
            @Override
            public boolean hasNext() {
                return this.i < this.length;
            }
            
            @Override
            public Object next() {
                return Array.get(o, this.i++);
            }
            
            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }
    
    @Override
    protected long getArraySize(final Object o) {
        if (o instanceof Collection) {
            return ((Collection)o).size();
        }
        return Array.getLength(o);
    }
    
    @Override
    protected void write(final Schema schema, Object o, final Encoder encoder) throws IOException {
        Label_0026: {
            if (!(o instanceof Byte)) {
                break Label_0026;
            }
            o = o;
            try {
                // iftrue(Label_0018:, !o instanceof Short)
                while (true) {
                    super.write(schema, o, encoder);
                    return;
                    o = o;
                    continue;
                }
            }
            catch (NullPointerException ex2) {
                final NullPointerException ex = new NullPointerException("in " + schema.getFullName() + " " + ex2.getMessage());
                Throwable cause;
                if (ex2.getCause() == null) {
                    cause = ex2;
                }
                else {
                    cause = ex2.getCause();
                }
                ex.initCause(cause);
                throw ex;
            }
        }
    }
    
    @Override
    protected void writeBytes(final Object o, final Encoder encoder) throws IOException {
        if (o instanceof byte[]) {
            encoder.writeBytes((byte[])o);
            return;
        }
        super.writeBytes(o, encoder);
    }
    
    @Override
    protected void writeString(final Schema schema, Object string, final Encoder encoder) throws IOException {
        if (schema.getProp("java-class") != null) {
            string = string.toString();
        }
        this.writeString(string, encoder);
    }
}
