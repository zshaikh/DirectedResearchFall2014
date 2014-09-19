package com.fusepowered.m2.m2l.util;

import org.apache.http.*;
import java.util.*;
import java.text.*;

public class HttpResponses
{
    public static boolean extractBooleanHeader(final HttpResponse httpResponse, final ResponseHeader responseHeader, final boolean b) {
        final String header = extractHeader(httpResponse, responseHeader);
        if (header == null) {
            return b;
        }
        return header.equals("1");
    }
    
    public static String extractHeader(final HttpResponse httpResponse, final ResponseHeader responseHeader) {
        final Header firstHeader = httpResponse.getFirstHeader(responseHeader.getKey());
        if (firstHeader != null) {
            return firstHeader.getValue();
        }
        return null;
    }
    
    public static int extractIntHeader(final HttpResponse httpResponse, final ResponseHeader responseHeader, final int n) {
        final Integer integerHeader = extractIntegerHeader(httpResponse, responseHeader);
        if (integerHeader == null) {
            return n;
        }
        return integerHeader;
    }
    
    public static Integer extractIntegerHeader(final HttpResponse httpResponse, final ResponseHeader responseHeader) {
        final NumberFormat instance = NumberFormat.getInstance(Locale.US);
        instance.setParseIntegerOnly(true);
        final String header = extractHeader(httpResponse, responseHeader);
        try {
            return instance.parse(header.trim()).intValue();
        }
        catch (Exception ex) {
            return null;
        }
    }
}
