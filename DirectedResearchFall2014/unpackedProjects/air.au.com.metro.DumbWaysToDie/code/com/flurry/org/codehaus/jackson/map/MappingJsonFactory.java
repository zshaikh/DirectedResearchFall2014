package com.flurry.org.codehaus.jackson.map;

import com.flurry.org.codehaus.jackson.*;
import com.flurry.org.codehaus.jackson.format.*;
import java.io.*;

public class MappingJsonFactory extends JsonFactory
{
    public MappingJsonFactory() {
        this(null);
    }
    
    public MappingJsonFactory(final ObjectMapper objectMapper) {
        super(objectMapper);
        if (objectMapper == null) {
            this.setCodec(new ObjectMapper(this));
        }
    }
    
    @Override
    public final ObjectMapper getCodec() {
        return (ObjectMapper)this._objectCodec;
    }
    
    @Override
    public String getFormatName() {
        return "JSON";
    }
    
    @Override
    public MatchStrength hasFormat(final InputAccessor inputAccessor) throws IOException {
        return this.hasJSONFormat(inputAccessor);
    }
}
