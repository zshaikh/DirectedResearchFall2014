package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.generic.*;
import com.flurry.org.apache.avro.*;
import java.lang.reflect.*;
import com.flurry.org.apache.avro.io.*;
import java.io.*;

public class SpecificDatumWriter<T> extends GenericDatumWriter<T>
{
    public SpecificDatumWriter() {
        super(SpecificData.get());
    }
    
    public SpecificDatumWriter(final Schema schema) {
        super(schema, SpecificData.get());
    }
    
    protected SpecificDatumWriter(final Schema schema, final SpecificData specificData) {
        super(schema, specificData);
    }
    
    protected SpecificDatumWriter(final SpecificData specificData) {
        super(specificData);
    }
    
    public SpecificDatumWriter(final Class<T> clazz) {
        super(SpecificData.get().getSchema(clazz), SpecificData.get());
    }
    
    @Override
    protected void writeEnum(final Schema schema, final Object o, final Encoder encoder) throws IOException {
        if (!(o instanceof Enum)) {
            super.writeEnum(schema, o, encoder);
            return;
        }
        encoder.writeEnum(((Enum)o).ordinal());
    }
}
