package com.fusepowered.m1.google.gson;

public interface ExclusionStrategy
{
    boolean shouldSkipClass(Class<?> p0);
    
    boolean shouldSkipField(FieldAttributes p0);
}
