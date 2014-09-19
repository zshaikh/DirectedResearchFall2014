package com.flurry.org.codehaus.jackson.impl;

import java.io.*;
import com.flurry.org.codehaus.jackson.*;

public interface Indenter
{
    boolean isInline();
    
    void writeIndentation(JsonGenerator p0, int p1) throws IOException, JsonGenerationException;
}
