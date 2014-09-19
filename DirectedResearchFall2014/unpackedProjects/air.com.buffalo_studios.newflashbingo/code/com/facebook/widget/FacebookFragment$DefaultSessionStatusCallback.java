package com.facebook.widget;

import com.facebook.*;

class FacebookFragment$DefaultSessionStatusCallback implements Session$StatusCallback
{
    final /* synthetic */ FacebookFragment this$0;
    
    private FacebookFragment$DefaultSessionStatusCallback(final FacebookFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void call(final Session session, final SessionState sessionState, final Exception ex) {
        this.this$0.onSessionStateChange(sessionState, ex);
    }
}
