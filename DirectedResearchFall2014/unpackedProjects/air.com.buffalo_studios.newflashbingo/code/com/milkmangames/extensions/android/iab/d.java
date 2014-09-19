package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;

final class d implements FREFunction
{
    final /* synthetic */ a a;
    
    private d(final a a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final a a = this.a;
            com.milkmangames.extensions.android.iab.a.a();
            return null;
        }
        catch (Exception ex) {
            Log.e("[IABExtension]", ex.getMessage());
            return null;
        }
    }
}
