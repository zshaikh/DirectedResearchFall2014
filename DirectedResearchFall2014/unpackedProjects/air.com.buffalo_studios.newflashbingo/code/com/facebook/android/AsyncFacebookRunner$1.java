package com.facebook.android;

import android.content.*;
import java.net.*;
import java.io.*;

class AsyncFacebookRunner$1 extends Thread
{
    final /* synthetic */ AsyncFacebookRunner this$0;
    final /* synthetic */ Context val$context;
    final /* synthetic */ AsyncFacebookRunner$RequestListener val$listener;
    final /* synthetic */ Object val$state;
    
    AsyncFacebookRunner$1(final AsyncFacebookRunner this$0, final Context val$context, final AsyncFacebookRunner$RequestListener val$listener, final Object val$state) {
        this.this$0 = this$0;
        this.val$context = val$context;
        this.val$listener = val$listener;
        this.val$state = val$state;
        super();
    }
    
    @Override
    public void run() {
        try {
            final String logoutImpl = this.this$0.fb.logoutImpl(this.val$context);
            if (logoutImpl.length() == 0 || logoutImpl.equals("false")) {
                this.val$listener.onFacebookError(new FacebookError("auth.expireSession failed"), this.val$state);
                return;
            }
            this.val$listener.onComplete(logoutImpl, this.val$state);
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
