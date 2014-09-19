package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.*;
import com.flurry.org.apache.avro.generic.*;
import java.lang.reflect.*;

public class SpecificDatumReader<T> extends GenericDatumReader<T>
{
    public SpecificDatumReader() {
        this(null, null, SpecificData.get());
    }
    
    public SpecificDatumReader(final Schema schema) {
        this(schema, schema, SpecificData.get());
    }
    
    public SpecificDatumReader(final Schema schema, final Schema schema2) {
        this(schema, schema2, SpecificData.get());
    }
    
    public SpecificDatumReader(final Schema schema, final Schema schema2, final SpecificData specificData) {
        super(schema, schema2, specificData);
    }
    
    public SpecificDatumReader(final Class<T> clazz) {
        this(SpecificData.get().getSchema(clazz));
    }
    
    @Override
    protected Object createEnum(final String name, final Schema schema) {
        final Class class1 = this.getSpecificData().getClass(schema);
        if (class1 == null) {
            return super.createEnum(name, schema);
        }
        return Enum.valueOf((Class<Object>)class1, name);
    }
    
    public SpecificData getSpecificData() {
        return (SpecificData)this.getData();
    }
    
    @Override
    public void setSchema(final Schema schema) {
        if (this.getExpected() == null && schema != null && schema.getType() == Schema.Type.RECORD) {
            final SpecificData specificData = this.getSpecificData();
            final Class class1 = specificData.getClass(schema);
            if (class1 != null && SpecificRecord.class.isAssignableFrom(class1)) {
                this.setExpected(specificData.getSchema(class1));
            }
        }
        super.setSchema(schema);
    }
}
