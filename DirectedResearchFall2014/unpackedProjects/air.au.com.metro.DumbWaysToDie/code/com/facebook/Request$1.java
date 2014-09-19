package com.facebook;

import com.facebook.model.*;

final class Request$1 implements Request$Callback
{
    final /* synthetic */ Request$GraphUserCallback val$callback;
    
    Request$1(final Request$GraphUserCallback val$callback) {
        this.val$callback = val$callback;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        if (this.val$callback != null) {
            this.val$callback.onCompleted((GraphUser)response.getGraphObjectAs(GraphUser.class), response);
        }
    }
}
