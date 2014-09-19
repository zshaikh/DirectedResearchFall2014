package com.fusepowered.m2.m2l.util;

import org.apache.http.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import java.io.*;

public class HttpUtils
{
    public static HttpResponse ping(final String s) throws IOException, IllegalArgumentException {
        if (s == null) {
            throw new IllegalArgumentException("Url must not be null.");
        }
        return HttpClientFactory.create().execute((HttpUriRequest)new HttpGet(s));
    }
}
