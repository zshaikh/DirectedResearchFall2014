package com.facebook.internal;

import java.io.*;
import java.net.*;

class ImageResponseCache$BufferedHttpInputStream extends BufferedInputStream
{
    HttpURLConnection connection;
    
    ImageResponseCache$BufferedHttpInputStream(final InputStream in, final HttpURLConnection connection) {
        super(in, 8192);
        this.connection = connection;
    }
    
    @Override
    public void close() {
        super.close();
        Utility.disconnectQuietly(this.connection);
    }
}
