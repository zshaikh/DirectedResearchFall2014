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
        String s = "";
        final GraphObject graphObject = response.getGraphObject();
        if (graphObject != null) {
            s = (String)graphObject.getProperty("custom_audience_third_party_id");
        }
        this.a.dispatchStatusEventAsync("420", s);
    }
}
