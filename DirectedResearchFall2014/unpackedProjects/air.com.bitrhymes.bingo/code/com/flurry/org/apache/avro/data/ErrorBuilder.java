package com.flurry.org.apache.avro.data;

public interface ErrorBuilder<T> extends RecordBuilder<T>
{
    ErrorBuilder<T> clearCause();
    
    ErrorBuilder<T> clearValue();
    
    Throwable getCause();
    
    Object getValue();
    
    boolean hasCause();
    
    boolean hasValue();
    
    ErrorBuilder<T> setCause(Throwable p0);
    
    ErrorBuilder<T> setValue(Object p0);
}
