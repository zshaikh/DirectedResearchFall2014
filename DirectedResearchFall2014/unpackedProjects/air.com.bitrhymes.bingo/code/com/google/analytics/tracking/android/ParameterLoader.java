package com.google.analytics.tracking.android;

interface ParameterLoader
{
    boolean getBoolean(String p0);
    
    Double getDoubleFromString(String p0);
    
    int getInt(String p0, int p1);
    
    String getString(String p0);
    
    boolean isBooleanKeyPresent(String p0);
}
