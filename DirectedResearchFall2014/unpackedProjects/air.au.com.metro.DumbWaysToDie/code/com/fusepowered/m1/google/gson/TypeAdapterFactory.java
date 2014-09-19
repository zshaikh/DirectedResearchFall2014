package com.fusepowered.m1.google.gson;

import com.fusepowered.m1.google.gson.reflect.*;

public interface TypeAdapterFactory
{
     <T> TypeAdapter<T> create(Gson p0, TypeToken<T> p1);
}
