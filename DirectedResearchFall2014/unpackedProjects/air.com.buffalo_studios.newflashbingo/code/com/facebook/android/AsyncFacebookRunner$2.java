package com.facebook.android;

import android.os.*;
import java.net.*;
import java.io.*;

class AsyncFacebookRunner$2 extends Thread
{
    final /* synthetic */ AsyncFacebookRunner this$0;
    final /* synthetic */ String val$graphPath;
    final /* synthetic */ String val$httpMethod;
    final /* synthetic */ AsyncFacebookRunner$RequestListener val$listener;
    final /* synthetic */ Bundle val$parameters;
    final /* synthetic */ Object val$state;
    
    AsyncFacebookRunner$2(final AsyncFacebookRunner this$0, final String val$graphPath, final Bundle val$parameters, final String val$httpMethod, final AsyncFacebookRunner$RequestListener val$listener, final Object val$state) {
        this.this$0 = this$0;
        this.val$graphPath = val$graphPath;
        this.val$parameters = val$parameters;
        this.val$httpMethod = val$httpMethod;
        this.val$listener = val$listener;
        this.val$state = val$state;
        super();
    }
    
    @Override
    public void run() {
        try {
            this.val$listener.onComplete(this.this$0.fb.requestImpl(this.val$graphPath, this.val$parameters, this.val$httpMethod), this.val$state);
        }
        catch (FileNotFoundException ex) {
            this.val$listener.onFileNotFoundException(ex, this.val$state);
        }
        catch (MalformedURLException ex2) {
            this.val$listener.onMalformedURLException(ex2, this.val$state);
        }
        catch (IOException ex3) {
            this.val$listener.onIOException(ex3, this.val$state);
        }
    }
}
