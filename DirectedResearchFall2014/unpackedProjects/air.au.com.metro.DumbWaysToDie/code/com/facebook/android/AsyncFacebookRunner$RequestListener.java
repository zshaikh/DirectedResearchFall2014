package com.facebook.android;

import java.io.*;
import java.net.*;

@Deprecated
public interface AsyncFacebookRunner$RequestListener
{
    void onComplete(String p0, Object p1);
    
    void onFacebookError(FacebookError p0, Object p1);
    
    void onFileNotFoundException(FileNotFoundException p0, Object p1);
    
    void onIOException(IOException p0, Object p1);
    
    void onMalformedURLException(MalformedURLException p0, Object p1);
}
