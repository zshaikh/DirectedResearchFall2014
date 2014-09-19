package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.type.*;
import com.flurry.org.codehaus.jackson.*;
import java.io.*;
import java.util.*;

public class MappingIterator<T> implements Iterator<T>
{
    protected static final MappingIterator<?> EMPTY_ITERATOR;
    protected final boolean _closeParser;
    protected final DeserializationContext _context;
    protected final JsonDeserializer<T> _deserializer;
    protected boolean _hasNextChecked;
    protected JsonParser _parser;
    protected final JavaType _type;
    protected final T _updatedValue;
    
    static {
        EMPTY_ITERATOR = new MappingIterator<Object>(null, null, null, null, false, null);
    }
    
    protected MappingIterator(final JavaType javaType, final JsonParser jsonParser, final DeserializationContext deserializationContext, final JsonDeserializer<?> jsonDeserializer) {
        this(javaType, jsonParser, deserializationContext, jsonDeserializer, true, null);
    }
    
    protected MappingIterator(final JavaType type, final JsonParser parser, final DeserializationContext context, final JsonDeserializer<?> deserializer, final boolean closeParser, final Object updatedValue) {
        super();
        this._type = type;
        this._parser = parser;
        this._context = context;
        this._deserializer = (JsonDeserializer<T>)deserializer;
        if (parser != null && parser.getCurrentToken() == JsonToken.START_ARRAY && !parser.getParsingContext().inRoot()) {
            parser.clearCurrentToken();
        }
        this._closeParser = closeParser;
        if (updatedValue == null) {
            this._updatedValue = null;
            return;
        }
        this._updatedValue = (T)updatedValue;
    }
    
    protected static <T> MappingIterator<T> emptyIterator() {
        return (MappingIterator<T>)MappingIterator.EMPTY_ITERATOR;
    }
    
    @Override
    public boolean hasNext() {
        try {
            return this.hasNextValue();
        }
        catch (JsonMappingException ex) {
            throw new RuntimeJsonMappingException(ex.getMessage(), ex);
        }
        catch (IOException cause) {
            throw new RuntimeException(cause.getMessage(), cause);
        }
    }
    
    public boolean hasNextValue() throws IOException {
        if (this._parser == null) {
            return false;
        }
        if (!this._hasNextChecked) {
            final JsonToken currentToken = this._parser.getCurrentToken();
            this._hasNextChecked = true;
            if (currentToken == null) {
                final JsonToken nextToken = this._parser.nextToken();
                if (nextToken == null) {
                    final JsonParser parser = this._parser;
                    this._parser = null;
                    if (this._closeParser) {
                        parser.close();
                    }
                    return false;
                }
                if (nextToken == JsonToken.END_ARRAY) {
                    return false;
                }
            }
        }
        return true;
    }
    
    @Override
    public T next() {
        try {
            return this.nextValue();
        }
        catch (JsonMappingException ex) {
            throw new RuntimeJsonMappingException(ex.getMessage(), ex);
        }
        catch (IOException cause) {
            throw new RuntimeException(cause.getMessage(), cause);
        }
    }
    
    public T nextValue() throws IOException {
        if (!this._hasNextChecked && !this.hasNextValue()) {
            throw new NoSuchElementException();
        }
        if (this._parser == null) {
            throw new NoSuchElementException();
        }
        this._hasNextChecked = false;
        T t;
        if (this._updatedValue == null) {
            t = this._deserializer.deserialize(this._parser, this._context);
        }
        else {
            this._deserializer.deserialize(this._parser, this._context, this._updatedValue);
            t = this._updatedValue;
        }
        this._parser.clearCurrentToken();
        return t;
    }
    
    @Override
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
