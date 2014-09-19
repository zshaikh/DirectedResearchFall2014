package com.flurry.org.codehaus.jackson.map.deser.impl;

import java.util.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.*;
import com.flurry.org.codehaus.jackson.util.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public class UnwrappedPropertyHandler
{
    protected final ArrayList<SettableBeanProperty> _properties;
    
    public UnwrappedPropertyHandler() {
        super();
        this._properties = new ArrayList<SettableBeanProperty>();
    }
    
    public void addProperty(final SettableBeanProperty e) {
        this._properties.add(e);
    }
    
    public Object processUnwrapped(final JsonParser jsonParser, final DeserializationContext deserializationContext, final Object o, final TokenBuffer tokenBuffer) throws IOException, JsonProcessingException {
        for (int i = 0; i < this._properties.size(); ++i) {
            final SettableBeanProperty settableBeanProperty = this._properties.get(i);
            final JsonParser parser = tokenBuffer.asParser();
            parser.nextToken();
            settableBeanProperty.deserializeAndSet(parser, deserializationContext, o);
        }
        return o;
    }
}
