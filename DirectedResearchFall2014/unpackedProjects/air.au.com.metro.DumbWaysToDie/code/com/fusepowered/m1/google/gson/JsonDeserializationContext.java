package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;

public interface JsonDeserializationContext
{
     <T> T deserialize(JsonElement p0, Type p1) throws JsonParseException;
}
