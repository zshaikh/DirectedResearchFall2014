package com.facebook;

import java.util.*;
import java.io.*;
import android.os.*;
import android.content.*;
import android.app.*;

class AuthorizationClient$5 implements RequestBatch$Callback
{
    final /* synthetic */ AuthorizationClient this$0;
    final /* synthetic */ ArrayList val$fbids;
    final /* synthetic */ AuthorizationClient$Result val$pendingResult;
    final /* synthetic */ ArrayList val$tokenPermissions;
    
    AuthorizationClient$5(final AuthorizationClient this$0, final ArrayList val$fbids, final AuthorizationClient$Result val$pendingResult, final ArrayList val$tokenPermissions) {
        this.this$0 = this$0;
        this.val$fbids = val$fbids;
        this.val$pendingResult = val$pendingResult;
        this.val$tokenPermissions = val$tokenPermissions;
        super();
    }
    
    @Override
    public void onBatchCompleted(final RequestBatch requestBatch) {
        try {
            AuthorizationClient$Result authorizationClient$Result;
            if (this.val$fbids.size() == 2 && this.val$fbids.get(0) != null && this.val$fbids.get(1) != null && this.val$fbids.get(0).equals(this.val$fbids.get(1))) {
                authorizationClient$Result = AuthorizationClient$Result.createTokenResult(AccessToken.createFromTokenWithRefreshedPermissions(this.val$pendingResult.token, this.val$tokenPermissions));
            }
            else {
                authorizationClient$Result = AuthorizationClient$Result.createErrorResult("User logged in as different Facebook user.", null);
            }
            this.this$0.complete(authorizationClient$Result);
        }
        catch (Exception ex) {
            this.this$0.complete(AuthorizationClient$Result.createErrorResult("Caught exception", ex.getMessage()));
        }
        finally {
            this.this$0.notifyBackgroundProcessingStop();
        }
    }
}
