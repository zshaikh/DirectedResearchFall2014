package com.flurry.org.codehaus.jackson;

public class JsonParseException extends JsonProcessingException
{
    static final long serialVersionUID = 123L;
    
    public JsonParseException(final String s, final JsonLocation jsonLocation) {
        super(s, jsonLocation);
    }
    
    public JsonParseException(final String s, final JsonLocation jsonLocation, final Throwable t) {
        super(s, jsonLocation, t);
    }
}
