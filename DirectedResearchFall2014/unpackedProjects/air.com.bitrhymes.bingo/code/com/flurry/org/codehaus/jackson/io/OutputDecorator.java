package com.flurry.org.codehaus.jackson.io;

import java.io.*;

public abstract class OutputDecorator
{
    public abstract OutputStream decorate(final IOContext p0, final OutputStream p1) throws IOException;
    
    public abstract Writer decorate(final IOContext p0, final Writer p1) throws IOException;
}
