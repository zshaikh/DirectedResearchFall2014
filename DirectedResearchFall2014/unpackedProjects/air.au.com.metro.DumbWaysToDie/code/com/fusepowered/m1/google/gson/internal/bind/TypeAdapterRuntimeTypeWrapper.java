package com.fusepowered.m1.google.gson.internal.bind;

import com.fusepowered.m1.google.gson.*;
import java.lang.reflect.*;
import java.io.*;
import com.fusepowered.m1.google.gson.stream.*;
import com.fusepowered.m1.google.gson.reflect.*;

final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T>
{
    private final Gson context;
    private final TypeAdapter<T> delegate;
    private final Type type;
    
    TypeAdapterRuntimeTypeWrapper(final Gson context, final TypeAdapter<T> delegate, final Type type) {
        super();
        this.context = context;
        this.delegate = delegate;
        this.type = type;
    }
    
    private Type getRuntimeTypeIfMoreSpecific(Type class1, final Object o) {
        if (o != null && (class1 == Object.class || class1 instanceof TypeVariable || class1 instanceof Class)) {
            class1 = o.getClass();
        }
        return class1;
    }
    
    @Override
    public T read(final JsonReader jsonReader) throws IOException {
        return this.delegate.read(jsonReader);
    }
    
    @Override
    public void write(final JsonWriter jsonWriter, final T t) throws IOException {
        TypeAdapter<?> typeAdapter = this.delegate;
        final Type runtimeTypeIfMoreSpecific = this.getRuntimeTypeIfMoreSpecific(this.type, t);
        if (runtimeTypeIfMoreSpecific != this.type) {
            final TypeAdapter<?> adapter = this.context.getAdapter(TypeToken.get(runtimeTypeIfMoreSpecific));
            if (!(adapter instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                typeAdapter = adapter;
            }
            else if (!(this.delegate instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                typeAdapter = this.delegate;
            }
            else {
                typeAdapter = adapter;
            }
        }
        typeAdapter.write(jsonWriter, t);
    }
}
