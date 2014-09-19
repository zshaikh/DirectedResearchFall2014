package com.flurry.org.codehaus.jackson.map.type;

import com.flurry.org.codehaus.jackson.type.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public abstract class TypeBase extends JavaType implements JsonSerializableWithType
{
    volatile String _canonicalName;
    
    protected TypeBase(final Class<?> clazz, final int n) {
        super(clazz, n);
    }
    
    protected TypeBase(final Class<?> clazz, final int n, final Object valueHandler, final Object typeHandler) {
        super(clazz, n);
        this._valueHandler = valueHandler;
        this._typeHandler = typeHandler;
    }
    
    protected static StringBuilder _classSignature(final Class<?> clazz, final StringBuilder sb, final boolean b) {
        if (clazz.isPrimitive()) {
            if (clazz == Boolean.TYPE) {
                sb.append('Z');
            }
            else {
                if (clazz == Byte.TYPE) {
                    sb.append('B');
                    return sb;
                }
                if (clazz == Short.TYPE) {
                    sb.append('S');
                    return sb;
                }
                if (clazz == Character.TYPE) {
                    sb.append('C');
                    return sb;
                }
                if (clazz == Integer.TYPE) {
                    sb.append('I');
                    return sb;
                }
                if (clazz == Long.TYPE) {
                    sb.append('J');
                    return sb;
                }
                if (clazz == Float.TYPE) {
                    sb.append('F');
                    return sb;
                }
                if (clazz == Double.TYPE) {
                    sb.append('D');
                    return sb;
                }
                if (clazz == Void.TYPE) {
                    sb.append('V');
                    return sb;
                }
                throw new IllegalStateException("Unrecognized primitive type: " + clazz.getName());
            }
        }
        else {
            sb.append('L');
            final String name = clazz.getName();
            for (int i = 0; i < name.length(); ++i) {
                char char1 = name.charAt(i);
                if (char1 == '.') {
                    char1 = '/';
                }
                sb.append(char1);
            }
            if (b) {
                sb.append(';');
                return sb;
            }
        }
        return sb;
    }
    
    protected abstract String buildCanonicalName();
    
    @Override
    public abstract StringBuilder getErasedSignature(final StringBuilder p0);
    
    @Override
    public abstract StringBuilder getGenericSignature(final StringBuilder p0);
    
    @Override
    public <T> T getTypeHandler() {
        return (T)this._typeHandler;
    }
    
    @Override
    public <T> T getValueHandler() {
        return (T)this._valueHandler;
    }
    
    @Override
    public void serialize(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonProcessingException {
        jsonGenerator.writeString(this.toCanonical());
    }
    
    @Override
    public void serializeWithType(final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonProcessingException {
        typeSerializer.writeTypePrefixForScalar(this, jsonGenerator);
        this.serialize(jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(this, jsonGenerator);
    }
    
    @Override
    public String toCanonical() {
        String s = this._canonicalName;
        if (s == null) {
            s = this.buildCanonicalName();
        }
        return s;
    }
}
