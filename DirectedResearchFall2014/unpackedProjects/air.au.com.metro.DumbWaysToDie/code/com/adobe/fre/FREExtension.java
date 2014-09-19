package com.adobe.fre;

public interface FREExtension
{
    FREContext createContext(String p0);
    
    void dispose();
    
    void initialize();
}
