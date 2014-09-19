package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;

final class g implements FREFunction
{
    final /* synthetic */ a a;
    
    private g(final a a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            this.a.b();
            return null;
        }
        catch (Exception ex) {
            Log.e("[IABExtension]", ex.getMessage());
            return null;
        }
    }
}
