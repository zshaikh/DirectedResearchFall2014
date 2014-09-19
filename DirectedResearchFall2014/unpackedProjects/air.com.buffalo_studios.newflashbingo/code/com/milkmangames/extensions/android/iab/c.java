package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;
import android.util.*;

final class c implements FREFunction
{
    final /* synthetic */ a a;
    
    private c(final a a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            this.a.a(array[0].getAsString(), array[1].getAsInt());
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            Log.e("[IABExtension]", ex.getMessage());
            return null;
        }
    }
}
