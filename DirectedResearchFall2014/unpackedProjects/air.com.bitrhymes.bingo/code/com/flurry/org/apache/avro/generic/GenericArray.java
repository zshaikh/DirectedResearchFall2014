package com.flurry.org.apache.avro.generic;

import java.util.*;

public interface GenericArray<T> extends List<T>, GenericContainer
{
    T peek();
    
    void reverse();
}
