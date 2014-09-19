package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;

public interface JsonSerializer<T>
{
    JsonElement serialize(T p0, Type p1, JsonSerializationContext p2);
}
