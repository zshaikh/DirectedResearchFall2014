package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.*;

public class JsonWriteContext extends JsonStreamContext
{
    public static final int STATUS_EXPECT_NAME = 5;
    public static final int STATUS_EXPECT_VALUE = 4;
    public static final int STATUS_OK_AFTER_COLON = 2;
    public static final int STATUS_OK_AFTER_COMMA = 1;
    public static final int STATUS_OK_AFTER_SPACE = 3;
    public static final int STATUS_OK_AS_IS;
    protected JsonWriteContext _child;
    protected String _currentName;
    protected final JsonWriteContext _parent;
    
    protected JsonWriteContext(final int type, final JsonWriteContext parent) {
        super();
        this._child = null;
        this._type = type;
        this._parent = parent;
        this._index = -1;
    }
    
    public static JsonWriteContext createRootContext() {
        return new JsonWriteContext(0, null);
    }
    
    private final JsonWriteContext reset(final int type) {
        this._type = type;
        this._index = -1;
        this._currentName = null;
        return this;
    }
    
    protected final void appendDesc(final StringBuilder sb) {
        if (this._type == 2) {
            sb.append('{');
            if (this._currentName != null) {
                sb.append('\"');
                sb.append(this._currentName);
                sb.append('\"');
            }
            else {
                sb.append('?');
            }
            sb.append('}');
            return;
        }
        if (this._type == 1) {
            sb.append('[');
            sb.append(this.getCurrentIndex());
            sb.append(']');
            return;
        }
        sb.append("/");
    }
    
    public final JsonWriteContext createChildArrayContext() {
        final JsonWriteContext child = this._child;
        if (child == null) {
            return this._child = new JsonWriteContext(1, this);
        }
        return child.reset(1);
    }
    
    public final JsonWriteContext createChildObjectContext() {
        final JsonWriteContext child = this._child;
        if (child == null) {
            return this._child = new JsonWriteContext(2, this);
        }
        return child.reset(2);
    }
    
    @Override
    public final String getCurrentName() {
        return this._currentName;
    }
    
    @Override
    public final JsonWriteContext getParent() {
        return this._parent;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(64);
        this.appendDesc(sb);
        return sb.toString();
    }
    
    public final int writeFieldName(final String currentName) {
        if (this._type != 2) {
            return 4;
        }
        if (this._currentName != null) {
            return 4;
        }
        this._currentName = currentName;
        if (this._index < 0) {
            return 0;
        }
        return 1;
    }
    
    public final int writeValue() {
        if (this._type == 2) {
            if (this._currentName == null) {
                return 5;
            }
            this._currentName = null;
            ++this._index;
            return 2;
        }
        else if (this._type == 1) {
            final int index = this._index;
            ++this._index;
            if (index < 0) {
                return 0;
            }
            return 1;
        }
        else {
            ++this._index;
            if (this._index == 0) {
                return 0;
            }
            return 3;
        }
    }
}
