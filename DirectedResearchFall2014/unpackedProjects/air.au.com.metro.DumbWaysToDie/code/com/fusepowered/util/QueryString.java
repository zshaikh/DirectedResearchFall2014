package com.fusepowered.util;

import java.net.*;
import java.io.*;

public class QueryString
{
    private StringBuilder queryBuf;
    
    public QueryString(final String s, final String s2) {
        super();
        this.queryBuf = new StringBuilder();
        this.encode(s, s2);
    }
    
    private void encode(final String s, final String s2) {
        try {
            this.queryBuf.append(URLEncoder.encode(s, "UTF-8"));
            this.queryBuf.append('=');
            this.queryBuf.append(URLEncoder.encode(s2, "UTF-8"));
        }
        catch (UnsupportedEncodingException ex) {
            throw new RuntimeException("Broken VM does not support UTF-8");
        }
    }
    
    public void add(final String s, final String s2) {
        if (s2 != null) {
            this.queryBuf.append('&');
            this.encode(s, s2);
        }
    }
    
    public String getQuery() {
        return this.queryBuf.toString();
    }
    
    @Override
    public String toString() {
        return this.getQuery();
    }
}
