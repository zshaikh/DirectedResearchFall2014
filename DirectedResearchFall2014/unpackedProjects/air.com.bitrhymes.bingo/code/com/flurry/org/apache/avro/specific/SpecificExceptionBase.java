package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.*;

public abstract class SpecificExceptionBase extends AvroRemoteException implements SpecificRecord
{
    public SpecificExceptionBase() {
        super();
    }
    
    public SpecificExceptionBase(final Object o) {
        super(o);
    }
    
    public SpecificExceptionBase(final Object o, final Throwable t) {
        super(o, t);
    }
    
    public SpecificExceptionBase(final Throwable t) {
        super(t);
    }
    
    @Override
    public boolean equals(final Object o) {
        return o == this || (o instanceof SpecificExceptionBase && this.getClass() == o.getClass() && SpecificData.get().compare(this, o, this.getSchema()) == 0);
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
}
