package com.flurry.org.apache.avro.generic;

public interface IndexedRecord extends GenericContainer
{
    Object get(int p0);
    
    void put(int p0, Object p1);
}
