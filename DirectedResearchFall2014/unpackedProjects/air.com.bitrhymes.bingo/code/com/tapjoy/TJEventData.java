package com.tapjoy;

import java.io.*;

public class TJEventData implements Serializable
{
    private static final long serialVersionUID = 1L;
    public String baseURL;
    public String guid;
    public String httpResponse;
    public int httpStatusCode;
    public String name;
    public String url;
    public String value;
}
