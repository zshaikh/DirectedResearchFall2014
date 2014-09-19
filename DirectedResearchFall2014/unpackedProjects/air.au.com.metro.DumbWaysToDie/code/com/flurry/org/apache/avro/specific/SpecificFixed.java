package com.flurry.org.apache.avro.specific;

import com.flurry.org.apache.avro.generic.*;
import java.lang.reflect.*;

public abstract class SpecificFixed extends Fixed
{
    public SpecificFixed() {
        super();
        ((GenericData.Fixed)this).setSchema(SpecificData.get().getSchema(this.getClass()));
    }
    
    public SpecificFixed(final byte[] array) {
        this();
        ((GenericData.Fixed)this).bytes(array);
    }
}
