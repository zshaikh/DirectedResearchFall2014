package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;

public interface JsonDeserializer<T>
{
    T deserialize(JsonElement p0, Type p1, JsonDeserializationContext p2) throws JsonParseException;
}
