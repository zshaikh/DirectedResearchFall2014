package com.facebook;

import java.lang.ref.*;
import com.facebook.internal.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import java.util.*;
import android.content.*;
import android.os.*;

class Session$TokenRefreshRequestHandler extends Handler
{
    private WeakReference refreshRequestWeakReference;
    private WeakReference sessionWeakReference;
    
    Session$TokenRefreshRequestHandler(final Session referent, final Session$TokenRefreshRequest referent2) {
        super(Looper.getMainLooper());
        this.sessionWeakReference = new WeakReference((T)referent);
        this.refreshRequestWeakReference = new WeakReference((T)referent2);
    }
    
    public void handleMessage(final Message message) {
        final String string = message.getData().getString("access_token");
        final Session session = (Session)this.sessionWeakReference.get();
        if (session != null && string != null) {
            session.extendTokenCompleted(message.getData());
        }
        final Session$TokenRefreshRequest session$TokenRefreshRequest = (Session$TokenRefreshRequest)this.refreshRequestWeakReference.get();
        if (session$TokenRefreshRequest != null) {
            Session.staticContext.unbindService((ServiceConnection)session$TokenRefreshRequest);
            session$TokenRefreshRequest.cleanup();
        }
    }
}
