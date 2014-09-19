package com.flurry.org.codehaus.jackson;

public class JsonGenerationException extends JsonProcessingException
{
    static final long serialVersionUID = 123L;
    
    public JsonGenerationException(final String s) {
        super(s, (JsonLocation)null);
    }
    
    public JsonGenerationException(final String s, final Throwable t) {
        super(s, null, t);
    }
    
    public JsonGenerationException(final Throwable t) {
        super(t);
    }
}
