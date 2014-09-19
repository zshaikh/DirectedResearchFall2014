package com.fusepowered.m1.google.gson;

public enum LongSerializationPolicy
{
    DEFAULT {
        @Override
        public JsonElement serialize(final Long n) {
            return new JsonPrimitive(n);
        }
    }, 
    STRING {
        @Override
        public JsonElement serialize(final Long obj) {
            return new JsonPrimitive(String.valueOf(obj));
        }
    };
    
    public abstract JsonElement serialize(final Long p0);
}
