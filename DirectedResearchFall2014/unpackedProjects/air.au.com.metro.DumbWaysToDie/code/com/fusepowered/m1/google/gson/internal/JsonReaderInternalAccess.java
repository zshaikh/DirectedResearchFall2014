package com.fusepowered.m1.google.gson.internal;

import com.fusepowered.m1.google.gson.stream.*;
import java.io.*;

public abstract class JsonReaderInternalAccess
{
    public static JsonReaderInternalAccess INSTANCE;
    
    public abstract void promoteNameToValue(final JsonReader p0) throws IOException;
}
