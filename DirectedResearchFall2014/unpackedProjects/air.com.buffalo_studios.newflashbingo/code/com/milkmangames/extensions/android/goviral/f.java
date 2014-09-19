package com.milkmangames.extensions.android.goviral;

import android.util.*;
import com.facebook.*;
import com.facebook.model.*;

final class f implements Request$Callback
{
    final /* synthetic */ String a;
    final /* synthetic */ b b;
    
    f(final b b, final String a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        Log.d("[GVExtension]", "Complete graph.");
        String s = this.a;
        while (true) {
            if (response.getConnection() != null) {
                try {
                    s = response.getConnection().getURL().toString();
                    final FacebookRequestError error = response.getError();
                    if (error != null) {
                        this.b.b(error.getErrorCode(), error.getErrorMessage(), s);
                        return;
                    }
                }
                catch (Exception ex) {
                    s = this.a;
                    continue;
                }
                final GraphObject graphObject = response.getGraphObject();
                final GraphObjectList<GraphObject> graphObjectList = response.getGraphObjectList();
                String s2;
                if (graphObject != null) {
                    s2 = graphObject.getInnerJSONObject().toString();
                }
                else if (graphObjectList != null) {
                    s2 = graphObjectList.getInnerJSONArray().toString();
                }
                else {
                    s2 = "";
                }
                this.b.a(s2, s);
                return;
            }
            continue;
        }
    }
}
