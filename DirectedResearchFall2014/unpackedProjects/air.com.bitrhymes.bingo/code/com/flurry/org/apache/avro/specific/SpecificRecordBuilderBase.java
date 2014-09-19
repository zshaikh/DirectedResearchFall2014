package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.data.*;
import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.generic.*;

public abstract class SpecificRecordBuilderBase<T extends SpecificRecord> extends RecordBuilderBase<T>
{
    protected SpecificRecordBuilderBase(final Schema schema) {
        super(schema, SpecificData.get());
    }
    
    protected SpecificRecordBuilderBase(final T t) {
        super(t.getSchema(), SpecificData.get());
    }
    
    protected SpecificRecordBuilderBase(final SpecificRecordBuilderBase<T> specificRecordBuilderBase) {
        super(specificRecordBuilderBase, SpecificData.get());
    }
}
