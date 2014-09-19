package com.facebook.android;

import android.net.*;
import android.app.*;
import com.facebook.*;
import android.os.*;
import java.util.*;
import android.content.pm.*;
import android.content.*;

class Facebook$1 implements Session$StatusCallback
{
    final /* synthetic */ Facebook this$0;
    final /* synthetic */ Facebook$DialogListener val$listener;
    
    Facebook$1(final Facebook this$0, final Facebook$DialogListener val$listener) {
        this.this$0 = this$0;
        this.val$listener = val$listener;
        super();
    }
    
    @Override
    public void call(final Session session, final SessionState sessionState, final Exception ex) {
        this.this$0.onSessionCallback(session, sessionState, ex, this.val$listener);
    }
}
