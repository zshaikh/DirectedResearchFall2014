package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.util.*;
import com.flurry.org.codehaus.jackson.map.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import java.util.*;
import com.flurry.org.codehaus.jackson.map.deser.*;

public class ExternalTypeHandler
{
    private final HashMap<String, Integer> _nameToPropertyIndex;
    private final ExtTypedProperty[] _properties;
    private final TokenBuffer[] _tokens;
    private final String[] _typeIds;
    
    protected ExternalTypeHandler(final ExternalTypeHandler externalTypeHandler) {
        super();
        this._properties = externalTypeHandler._properties;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        final int length = this._properties.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }
    
    protected ExternalTypeHandler(final ExtTypedProperty[] properties, final HashMap<String, Integer> nameToPropertyIndex, final String[] typeIds, final TokenBuffer[] tokens) {
        super();
        this._properties = properties;
        this._nameToPropertyIndex = nameToPropertyIndex;
        this._typeIds = typeIds;
        this._tokens = tokens;
    }
    
    protected final void _deserialize(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o, final int n) throws IOException, JsonProcessingException {
        final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(this._typeIds[n]);
        final JsonParser parser = this._tokens[n].asParser(jsonParser);
        parser.nextToken();
        tokenBuffer.copyCurrentStructure(parser);
        tokenBuffer.writeEndArray();
        final JsonParser parser2 = tokenBuffer.asParser(jsonParser);
        parser2.nextToken();
        this._properties[n].getProperty().deserializeAndSet(parser2, deserializationContext, o);
    }
    
    public Object complete(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o) throws IOException, JsonProcessingException {
        for (int i = 0; i < this._properties.length; ++i) {
            if (this._typeIds[i] == null) {
                if (this._tokens[i] != null) {
                    throw deserializationContext.mappingException("Missing external type id property '" + this._properties[i].getTypePropertyName());
                }
            }
            else {
                if (this._tokens[i] == null) {
                    throw deserializationContext.mappingException("Missing property '" + this._properties[i].getProperty().getName() + "' for external type id '" + this._properties[i].getTypePropertyName());
                }
                this._deserialize(jsonParser, deserializationContext, o, i);
            }
        }
        return o;
    }
    
    public boolean handleToken(final JsonParser jsonParser, final DeserializationContext deserializationContext, final String key, final Object o) throws IOException, JsonProcessingException {
        final Integer n = this._nameToPropertyIndex.get(key);
        if (n == null) {
            return false;
        }
        final int intValue = n;
        int n2;
        if (this._properties[intValue].hasTypePropertyName(key)) {
            this._typeIds[intValue] = jsonParser.getText();
            jsonParser.skipChildren();
            if (o != null && this._tokens[intValue] != null) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
        }
        else {
            final TokenBuffer tokenBuffer = new TokenBuffer(jsonParser.getCodec());
            tokenBuffer.copyCurrentStructure(jsonParser);
            this._tokens[intValue] = tokenBuffer;
            if (o != null && this._typeIds[intValue] != null) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
        }
        if (n2 != 0) {
            this._deserialize(jsonParser, deserializationContext, o, intValue);
            this._typeIds[intValue] = null;
            this._tokens[intValue] = null;
        }
        return true;
    }
    
    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }
    
    public static class Builder
    {
        private final HashMap<String, Integer> _nameToPropertyIndex;
        private final ArrayList<ExtTypedProperty> _properties;
        
        public Builder() {
            super();
            this._properties = new ArrayList<ExtTypedProperty>();
            this._nameToPropertyIndex = new HashMap<String, Integer>();
        }
        
        public void addExternal(final SettableBeanProperty settableBeanProperty, final String key) {
            final Integer value = this._properties.size();
            this._properties.add(new ExtTypedProperty(settableBeanProperty, key));
            this._nameToPropertyIndex.put(settableBeanProperty.getName(), value);
            this._nameToPropertyIndex.put(key, value);
        }
        
        public ExternalTypeHandler build() {
            return new ExternalTypeHandler((ExtTypedProperty[])this._properties.toArray(new ExtTypedProperty[this._properties.size()]), this._nameToPropertyIndex, null, null);
        }
    }
    
    private static final class ExtTypedProperty
    {
        private final SettableBeanProperty _property;
        private final String _typePropertyName;
        
        public ExtTypedProperty(final SettableBeanProperty property, final String typePropertyName) {
            super();
            this._property = property;
            this._typePropertyName = typePropertyName;
        }
        
        public SettableBeanProperty getProperty() {
            return this._property;
        }
        
        public String getTypePropertyName() {
            return this._typePropertyName;
        }
        
        public boolean hasTypePropertyName(final String s) {
            return s.equals(this._typePropertyName);
        }
    }
}
