package com.facebook;

import android.os.*;
import org.json.*;
import android.text.*;
import com.facebook.internal.*;
import java.util.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
import java.io.*;
import android.content.*;

class Session$3 implements Runnable
{
    final /* synthetic */ Session this$0;
    final /* synthetic */ Exception val$exception;
    final /* synthetic */ SessionState val$newState;
    
    Session$3(final Session this$0, final SessionState val$newState, final Exception val$exception) {
        this.this$0 = this$0;
        this.val$newState = val$newState;
        this.val$exception = val$exception;
        super();
    }
    
    @Override
    public void run() {
        synchronized (this.this$0.callbacks) {
            final Iterator<Session$StatusCallback> iterator = this.this$0.callbacks.iterator();
            while (iterator.hasNext()) {
                runWithHandlerOrExecutor(this.this$0.handler, new Session$3$1(this, iterator.next()));
            }
        }
    }
    // monitorexit(list)
}
