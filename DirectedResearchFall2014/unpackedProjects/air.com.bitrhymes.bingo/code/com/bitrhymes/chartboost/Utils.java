package com.bitrhymes.chartboost;

import java.io.*;

public class Utils
{
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
}
