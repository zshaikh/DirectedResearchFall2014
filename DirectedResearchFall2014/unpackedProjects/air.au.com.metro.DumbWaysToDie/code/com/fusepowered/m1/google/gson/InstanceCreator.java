package com.fusepowered.m1.google.gson;

import java.lang.reflect.*;

public interface InstanceCreator<T>
{
    T createInstance(Type p0);
}
