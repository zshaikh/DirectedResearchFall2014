package com.facebook;

import java.util.*;
import com.facebook.model.*;

class AuthorizationClient$3 implements Request$Callback
{
    final /* synthetic */ AuthorizationClient this$0;
    final /* synthetic */ ArrayList val$fbids;
    
    AuthorizationClient$3(final AuthorizationClient this$0, final ArrayList val$fbids) {
        this.this$0 = this$0;
        this.val$fbids = val$fbids;
        super();
    }
    
    @Override
    public void onCompleted(final Response response) {
        try {
            final GraphUser graphUser = (GraphUser)response.getGraphObjectAs(GraphUser.class);
            if (graphUser != null) {
                this.val$fbids.add(graphUser.getId());
            }
        }
        catch (Exception ex) {}
    }
}
