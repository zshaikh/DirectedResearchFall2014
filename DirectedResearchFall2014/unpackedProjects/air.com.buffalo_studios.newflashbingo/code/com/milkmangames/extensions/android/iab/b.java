package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;

final class b implements FREFunction
{
    final /* synthetic */ a a;
    
    private b(final a a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            return FREObject.newObject(this.a.c());
        }
        catch (Exception ex) {
            Log.e("[IABExtension]", ex.getMessage());
            return null;
        }
    }
}
