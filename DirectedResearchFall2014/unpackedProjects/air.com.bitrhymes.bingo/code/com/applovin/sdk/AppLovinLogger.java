package com.applovin.sdk;

public interface AppLovinLogger
{
    public static final String SDK_TAG = "AppLovinSdk";
    
    void d(String p0, String p1);
    
    void e(String p0, String p1);
    
    void e(String p0, String p1, Throwable p2);
    
    void i(String p0, String p1);
    
    void userError(String p0, String p1);
    
    void userError(String p0, String p1, Throwable p2);
    
    void w(String p0, String p1);
    
    void w(String p0, String p1, Throwable p2);
}
