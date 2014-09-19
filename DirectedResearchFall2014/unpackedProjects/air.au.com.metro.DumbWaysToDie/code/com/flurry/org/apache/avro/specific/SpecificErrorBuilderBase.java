package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.data.*;
import java.lang.reflect.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.generic.*;

public abstract class SpecificErrorBuilderBase<T extends SpecificExceptionBase> extends RecordBuilderBase<T> implements ErrorBuilder<T>
{
    private Throwable cause;
    private Constructor<T> errorConstructor;
    private boolean hasCause;
    private boolean hasValue;
    private Object value;
    
    protected SpecificErrorBuilderBase(final Schema schema) {
        super(schema, SpecificData.get());
    }
    
    protected SpecificErrorBuilderBase(final SpecificErrorBuilderBase<T> specificErrorBuilderBase) {
        super(specificErrorBuilderBase, SpecificData.get());
        this.errorConstructor = specificErrorBuilderBase.errorConstructor;
        this.value = specificErrorBuilderBase.value;
        this.hasValue = specificErrorBuilderBase.hasValue;
        this.cause = specificErrorBuilderBase.cause;
        this.hasCause = specificErrorBuilderBase.hasCause;
    }
    
    protected SpecificErrorBuilderBase(final T t) {
        super(t.getSchema(), SpecificData.get());
        final Object value = t.getValue();
        if (value != null) {
            this.setValue(value);
        }
        final Throwable cause = t.getCause();
        if (cause != null) {
            this.setCause(cause);
        }
    }
    
    @Override
    public SpecificErrorBuilderBase<T> clearCause() {
        this.cause = null;
        this.hasCause = false;
        return this;
    }
    
    @Override
    public SpecificErrorBuilderBase<T> clearValue() {
        this.value = null;
        this.hasValue = false;
        return this;
    }
    
    @Override
    public Throwable getCause() {
        return this.cause;
    }
    
    @Override
    public Object getValue() {
        return this.value;
    }
    
    @Override
    public boolean hasCause() {
        return this.hasCause;
    }
    
    @Override
    public boolean hasValue() {
        return this.hasValue;
    }
    
    @Override
    public SpecificErrorBuilderBase<T> setCause(final Throwable cause) {
        this.cause = cause;
        this.hasCause = true;
        return this;
    }
    
    @Override
    public SpecificErrorBuilderBase<T> setValue(final Object value) {
        this.value = value;
        this.hasValue = true;
        return this;
    }
}
