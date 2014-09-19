package com.fusepowered.m1.google.gson.internal.bind;

import com.fusepowered.m1.google.gson.reflect.*;
import com.fusepowered.m1.google.gson.*;
import com.fusepowered.m1.google.gson.internal.*;
import java.lang.reflect.*;
import java.io.*;
import com.fusepowered.m1.google.gson.stream.*;
import java.util.*;

public final class CollectionTypeAdapterFactory implements TypeAdapterFactory
{
    private final ConstructorConstructor constructorConstructor;
    
    public CollectionTypeAdapterFactory(final ConstructorConstructor constructorConstructor) {
        super();
        this.constructorConstructor = constructorConstructor;
    }
    
    @Override
    public <T> TypeAdapter<T> create(final Gson gson, final TypeToken<T> typeToken) {
        final Type type = typeToken.getType();
        final Class<? super T> rawType = typeToken.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        final Type collectionElementType = $Gson$Types.getCollectionElementType(type, rawType);
        return (TypeAdapter<T>)new Adapter(gson, collectionElementType, (TypeAdapter<Object>)gson.getAdapter(TypeToken.get(collectionElementType)), (ObjectConstructor<? extends Collection<Object>>)this.constructorConstructor.get((TypeToken<? extends Collection<E>>)typeToken));
    }
    
    private static final class Adapter<E> extends TypeAdapter<Collection<E>>
    {
        private final ObjectConstructor<? extends Collection<E>> constructor;
        private final TypeAdapter<E> elementTypeAdapter;
        
        public Adapter(final Gson gson, final Type type, final TypeAdapter<E> typeAdapter, final ObjectConstructor<? extends Collection<E>> constructor) {
            super();
            this.elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper<E>(gson, typeAdapter, type);
            this.constructor = constructor;
        }
        
        @Override
        public Collection<E> read(final JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            final Collection collection = (Collection)this.constructor.construct();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collection.add(this.elementTypeAdapter.read(jsonReader));
            }
            jsonReader.endArray();
            return (Collection<E>)collection;
        }
        
        @Override
        public void write(final JsonWriter jsonWriter, final Collection<E> collection) throws IOException {
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            final Iterator<E> iterator = collection.iterator();
            while (iterator.hasNext()) {
                this.elementTypeAdapter.write(jsonWriter, iterator.next());
            }
            jsonWriter.endArray();
        }
    }
}
