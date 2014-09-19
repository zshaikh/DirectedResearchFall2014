package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;

public interface JsonSerializationContext
{
    JsonElement serialize(Object p0);
    
    JsonElement serialize(Object p0, Type p1);
}
