package com.flurry.org.codehaus.jackson.map.ser.std;

import java.net.*;
import java.io.*;
import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.map.*;

public class InetAddressSerializer extends ScalarSerializerBase<InetAddress>
{
    public static final InetAddressSerializer instance;
    
    static {
        instance = new InetAddressSerializer();
    }
    
    public InetAddressSerializer() {
        super(InetAddress.class);
    }
    
    @Override
    public void serialize(final InetAddress inetAddress, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider) throws IOException, JsonGenerationException {
        String s = inetAddress.toString().trim();
        final int index = s.indexOf(47);
        if (index >= 0) {
            if (index == 0) {
                s = s.substring(1);
            }
            else {
                s = s.substring(0, index);
            }
        }
        jsonGenerator.writeString(s);
    }
    
    @Override
    public void serializeWithType(final InetAddress inetAddress, final JsonGenerator jsonGenerator, final SerializerProvider serializerProvider, final TypeSerializer typeSerializer) throws IOException, JsonGenerationException {
        typeSerializer.writeTypePrefixForScalar(inetAddress, jsonGenerator, InetAddress.class);
        this.serialize(inetAddress, jsonGenerator, serializerProvider);
        typeSerializer.writeTypeSuffixForScalar(inetAddress, jsonGenerator);
    }
}
