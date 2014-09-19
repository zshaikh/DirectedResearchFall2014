package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;

final class h implements FREFunction
{
    final /* synthetic */ a a;
    
    private h(final a a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            this.a.a(array[0].getAsString());
            return null;
        }
        catch (Exception ex) {
            Log.e("[IABExtension]", ex.getMessage());
            return null;
        }
    }
}
