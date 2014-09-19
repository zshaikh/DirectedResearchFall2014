package com.flurry.org.codehaus.jackson.impl;

import com.flurry.org.codehaus.jackson.io.*;

@Deprecated
public abstract class JsonNumericParserBase extends JsonParserBase
{
    protected JsonNumericParserBase(final IOContext ioContext, final int n) {
        super(ioContext, n);
    }
}
