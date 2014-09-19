package com.flurry.org.apache.avro.generic;

public interface GenericRecord extends IndexedRecord
{
    Object get(String p0);
    
    void put(String p0, Object p1);
}
