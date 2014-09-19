package com.facebook.model;

import java.util.*;
import android.annotation.*;

final class JsonUtil$JSONObjectEntry implements Entry<String, Object>
{
    private final String key;
    private final Object value;
    
    JsonUtil$JSONObjectEntry(final String key, final Object value) {
        super();
        this.key = key;
        this.value = value;
    }
    
    @SuppressLint({ "FieldGetter" })
    public final String getKey() {
        return this.key;
    }
    
    @Override
    public final Object getValue() {
        return this.value;
    }
    
    @Override
    public final Object setValue(final Object o) {
        throw new UnsupportedOperationException("JSONObjectEntry is immutable");
    }
}
