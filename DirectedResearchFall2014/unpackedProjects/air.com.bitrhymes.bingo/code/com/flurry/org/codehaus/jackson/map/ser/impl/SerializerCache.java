package com.flurry.org.codehaus.jackson.map.ser.impl;

import java.util.*;
import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.map.*;

public final class SerializerCache
{
    private ReadOnlyClassToSerializerMap _readOnlyMap;
    private HashMap<TypeKey, JsonSerializer<Object>> _sharedMap;
    
    public SerializerCache() {
        super();
        this._sharedMap = new HashMap<TypeKey, JsonSerializer<Object>>(64);
        this._readOnlyMap = null;
    }
    
    public void addAndResolveNonTypedSerializer(final JavaType javaType, final JsonSerializer<Object> value, final SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(javaType, false), value) == null) {
                this._readOnlyMap = null;
            }
            if (value instanceof ResolvableSerializer) {
                ((ResolvableSerializer)value).resolve(serializerProvider);
            }
        }
    }
    
    public void addAndResolveNonTypedSerializer(final Class<?> clazz, final JsonSerializer<Object> value, final SerializerProvider serializerProvider) throws JsonMappingException {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(clazz, false), value) == null) {
                this._readOnlyMap = null;
            }
            if (value instanceof ResolvableSerializer) {
                ((ResolvableSerializer)value).resolve(serializerProvider);
            }
        }
    }
    
    public void addTypedSerializer(final JavaType javaType, final JsonSerializer<Object> value) {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(javaType, true), value) == null) {
                this._readOnlyMap = null;
            }
        }
    }
    
    public void addTypedSerializer(final Class<?> clazz, final JsonSerializer<Object> value) {
        synchronized (this) {
            if (this._sharedMap.put(new TypeKey(clazz, true), value) == null) {
                this._readOnlyMap = null;
            }
        }
    }
    
    public void flush() {
        synchronized (this) {
            this._sharedMap.clear();
        }
    }
    
    public ReadOnlyClassToSerializerMap getReadOnlyLookupMap() {
        synchronized (this) {
            ReadOnlyClassToSerializerMap readOnlyMap = this._readOnlyMap;
            if (readOnlyMap == null) {
                readOnlyMap = ReadOnlyClassToSerializerMap.from(this._sharedMap);
                this._readOnlyMap = readOnlyMap;
            }
            return readOnlyMap.instance();
        }
    }
    
    public int size() {
        synchronized (this) {
            return this._sharedMap.size();
        }
    }
    
    public JsonSerializer<Object> typedValueSerializer(final JavaType javaType) {
        synchronized (this) {
            return this._sharedMap.get(new TypeKey(javaType, true));
        }
    }
    
    public JsonSerializer<Object> typedValueSerializer(final Class<?> clazz) {
        synchronized (this) {
            return this._sharedMap.get(new TypeKey(clazz, true));
        }
    }
    
    public JsonSerializer<Object> untypedValueSerializer(final JavaType javaType) {
        synchronized (this) {
            return this._sharedMap.get(new TypeKey(javaType, false));
        }
    }
    
    public JsonSerializer<Object> untypedValueSerializer(final Class<?> clazz) {
        synchronized (this) {
            return this._sharedMap.get(new TypeKey(clazz, false));
        }
    }
    
    public static final class TypeKey
    {
        protected Class<?> _class;
        protected int _hashCode;
        protected boolean _isTyped;
        protected JavaType _type;
        
        public TypeKey(final JavaType type, final boolean isTyped) {
            super();
            this._type = type;
            this._class = null;
            this._isTyped = isTyped;
            this._hashCode = hash(type, isTyped);
        }
        
        public TypeKey(final Class<?> class1, final boolean isTyped) {
            super();
            this._class = class1;
            this._type = null;
            this._isTyped = isTyped;
            this._hashCode = hash(class1, isTyped);
        }
        
        private static final int hash(final JavaType javaType, final boolean b) {
            int n = javaType.hashCode() - 1;
            if (b) {
                --n;
            }
            return n;
        }
        
        private static final int hash(final Class<?> clazz, final boolean b) {
            int hashCode = clazz.getName().hashCode();
            if (b) {
                ++hashCode;
            }
            return hashCode;
        }
        
        @Override
        public final boolean equals(final Object o) {
            if (o == this) {
                return true;
            }
            final TypeKey typeKey = (TypeKey)o;
            if (typeKey._isTyped != this._isTyped) {
                return false;
            }
            if (this._class != null) {
                return typeKey._class == this._class;
            }
            return this._type.equals(typeKey._type);
        }
        
        @Override
        public final int hashCode() {
            return this._hashCode;
        }
        
        public void resetTyped(final JavaType type) {
            this._type = type;
            this._class = null;
            this._isTyped = true;
            this._hashCode = hash(type, true);
        }
        
        public void resetTyped(final Class<?> class1) {
            this._type = null;
            this._class = class1;
            this._isTyped = true;
            this._hashCode = hash(class1, true);
        }
        
        public void resetUntyped(final JavaType type) {
            this._type = type;
            this._class = null;
            this._isTyped = false;
            this._hashCode = hash(type, false);
        }
        
        public void resetUntyped(final Class<?> class1) {
            this._type = null;
            this._class = class1;
            this._isTyped = false;
            this._hashCode = hash(class1, false);
        }
        
        @Override
        public final String toString() {
            if (this._class != null) {
                return "{class: " + this._class.getName() + ", typed? " + this._isTyped + "}";
            }
            return "{type: " + this._type + ", typed? " + this._isTyped + "}";
        }
    }
}
