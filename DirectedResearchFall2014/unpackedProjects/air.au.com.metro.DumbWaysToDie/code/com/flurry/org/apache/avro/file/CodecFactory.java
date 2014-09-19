package com.flurry.org.apache.avro.file;

import java.util.*;
import com.flurry.org.apache.avro.*;

public abstract class CodecFactory
{
    private static final int DEFAULT_DEFLATE_LEVEL = -1;
    private static final Map<String, CodecFactory> REGISTERED;
    
    static {
        REGISTERED = new HashMap<String, CodecFactory>();
        addCodec("null", nullCodec());
        addCodec("deflate", deflateCodec(-1));
        addCodec("snappy", snappyCodec());
    }
    
    public static CodecFactory addCodec(final String s, final CodecFactory codecFactory) {
        return CodecFactory.REGISTERED.put(s, codecFactory);
    }
    
    public static CodecFactory deflateCodec(final int n) {
        return new DeflateCodec.Option(n);
    }
    
    public static CodecFactory fromString(final String str) {
        final CodecFactory codecFactory = CodecFactory.REGISTERED.get(str);
        if (codecFactory == null) {
            throw new AvroRuntimeException("Unrecognized codec: " + str);
        }
        return codecFactory;
    }
    
    public static CodecFactory nullCodec() {
        return NullCodec.OPTION;
    }
    
    public static CodecFactory snappyCodec() {
        return new SnappyCodec.Option();
    }
    
    protected abstract Codec createInstance();
    
    @Override
    public String toString() {
        return this.createInstance().toString();
    }
}
