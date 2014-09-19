package com.facebook;

import com.milkmangames.extensions.android.goviral.*;

class LoginActivity$2 implements AuthorizationClient$BackgroundProcessingListener
{
    final /* synthetic */ LoginActivity this$0;
    
    LoginActivity$2(final LoginActivity this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void onBackgroundProcessingStarted() {
        this.this$0.findViewById(b.a("id.com_facebook_login_activity_progress_bar")).setVisibility(0);
    }
    
    @Override
    public void onBackgroundProcessingStopped() {
        this.this$0.findViewById(b.a("id.com_facebook_login_activity_progress_bar")).setVisibility(8);
    }
}
