package com.milkmangames.extensions.android.goviral;

import com.facebook.*;
import com.facebook.model.*;

final class e implements Request$Callback
{
    final /* synthetic */ b a;
    
    e(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        final FacebookRequestError error = response.getError();
        if (error != null) {
            this.a.b(error.getErrorCode(), error.getErrorMessage(), response.getConnection().getURL().toString());
            return;
        }
        final GraphObject graphObject = response.getGraphObject();
        final GraphObjectList graphObjectList = response.getGraphObjectList();
        String s;
        if (graphObject != null) {
            s = graphObject.getInnerJSONObject().toString();
        }
        else if (graphObjectList != null) {
            s = graphObjectList.getInnerJSONArray().toString();
        }
        else {
            s = "";
        }
        this.a.a(s, response.getConnection().getURL().toString());
    }
}
