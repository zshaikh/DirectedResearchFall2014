package com.facebook.widget;

import com.facebook.*;
import android.content.*;

class LoginButton$LoginClickListener$1 implements DialogInterface$OnClickListener
{
    final /* synthetic */ LoginButton$LoginClickListener this$1;
    final /* synthetic */ Session val$openSession;
    
    LoginButton$LoginClickListener$1(final LoginButton$LoginClickListener this$1, final Session val$openSession) {
        this.this$1 = this$1;
        this.val$openSession = val$openSession;
        super();
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        this.val$openSession.closeAndClearTokenInformation();
    }
}
