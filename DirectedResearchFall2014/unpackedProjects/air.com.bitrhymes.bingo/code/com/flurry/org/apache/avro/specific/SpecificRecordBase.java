package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.*;

public abstract class SpecificRecordBase implements SpecificRecord, Comparable<SpecificRecord>
{
    @Override
    public int compareTo(final SpecificRecord specificRecord) {
        return SpecificData.get().compare(this, specificRecord, this.getSchema());
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof SpecificRecord && this.getClass() == o.getClass() && this.compareTo((SpecificRecord)o) == 0);
    }
    
    @Override
    public abstract Object get(final int p0);
    
    @Override
    public abstract Schema getSchema();
    
    @Override
    public int hashCode() {
        return SpecificData.get().hashCode(this, this.getSchema());
    }
    
    @Override
    public abstract void put(final int p0, final Object p1);
    
    @Override
    public String toString() {
        return SpecificData.get().toString(this);
    }
}
