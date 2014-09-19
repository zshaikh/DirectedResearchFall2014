package com.applovin.impl.sdk;

import com.applovin.sdk.*;
import java.io.*;
import android.util.*;
import java.net.*;

class bd extends Thread
{
    private final AppLovinSdkImpl a;
    private final AppLovinLogger b;
    private ServerSocket c;
    private volatile boolean d;
    
    bd(final AppLovinSdkImpl a) {
        super();
        this.c = null;
        this.d = false;
        this.a = a;
        this.b = a.getLogger();
        this.setName("AppLovinSdk:WebServer");
    }
    
    @Override
    public void run() {
        this.b.d("AdWebServer", "Staring AppLovin web server...");
        final int intValue = (int)this.a.a(v.z);
        while (true) {
            try {
                this.c = new ServerSocket(intValue);
                while (this.c != null && !this.d) {
                    try {
                        this.b.d("AdWebServer", "Waiting for a client on " + intValue + "...");
                        final Socket accept = this.c.accept();
                        this.b.d("AdWebServer", "Client accepted, rendering request...");
                        this.a.a().a(new ag(accept, this.a), am.a);
                    }
                    catch (IOException ex) {
                        if (this.d) {
                            continue;
                        }
                        this.b.e("AdWebServer", "Web server caught IO error", ex);
                    }
                }
            }
            catch (BindException ex3) {
                Log.w("AdWebServer", "Unable to bind to port " + intValue + ", a server must be already running");
                continue;
            }
            catch (IOException ex2) {
                Log.w("AdWebServer", "Unable to create server socket", (Throwable)ex2);
                continue;
            }
            break;
        }
    }
}
