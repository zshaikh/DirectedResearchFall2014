package com.flurry.org.codehaus.jackson.map.deser.impl;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.deser.*;
import com.flurry.org.codehaus.jackson.map.*;

public final class PropertyValueBuffer
{
    private PropertyValue _buffered;
    final DeserializationContext _context;
    final Object[] _creatorParameters;
    private int _paramsNeeded;
    final JsonParser _parser;
    
    public PropertyValueBuffer(final JsonParser parser, final DeserializationContext context, final int paramsNeeded) {
        super();
        this._parser = parser;
        this._context = context;
        this._paramsNeeded = paramsNeeded;
        this._creatorParameters = new Object[paramsNeeded];
    }
    
    public boolean assignParameter(final int n, final Object o) {
        this._creatorParameters[n] = o;
        final int paramsNeeded = this._paramsNeeded - 1;
        this._paramsNeeded = paramsNeeded;
        return paramsNeeded <= 0;
    }
    
    public void bufferAnyProperty(final SettableAnyProperty settableAnyProperty, final String s, final Object o) {
        this._buffered = new PropertyValue.Any(this._buffered, o, settableAnyProperty, s);
    }
    
    public void bufferMapProperty(final Object o, final Object o2) {
        this._buffered = new PropertyValue.Map(this._buffered, o2, o);
    }
    
    public void bufferProperty(final SettableBeanProperty settableBeanProperty, final Object o) {
        this._buffered = new PropertyValue.Regular(this._buffered, o, settableBeanProperty);
    }
    
    protected PropertyValue buffered() {
        return this._buffered;
    }
    
    protected final Object[] getParameters(final Object[] array) {
        if (array != null) {
            for (int i = 0; i < this._creatorParameters.length; ++i) {
                if (this._creatorParameters[i] == null) {
                    final Object o = array[i];
                    if (o != null) {
                        this._creatorParameters[i] = o;
                    }
                }
            }
        }
        return this._creatorParameters;
    }
    
    public void inject(final SettableBeanProperty[] array) {
        for (int i = 0; i < array.length; ++i) {
            final SettableBeanProperty settableBeanProperty = array[i];
            if (settableBeanProperty != null) {
                this._creatorParameters[i] = this._context.findInjectableValue(settableBeanProperty.getInjectableValueId(), settableBeanProperty, null);
            }
        }
    }
}
