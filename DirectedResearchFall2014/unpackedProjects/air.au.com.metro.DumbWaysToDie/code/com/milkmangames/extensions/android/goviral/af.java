package com.milkmangames.extensions.android.goviral;

import android.util.*;
import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.content.res.*;
import android.net.*;
import com.adobe.fre.*;
import android.content.pm.*;
import android.content.*;
import android.text.*;
import android.os.*;
import com.facebook.widget.*;
import com.facebook.*;
import org.json.*;
import java.util.*;

final class af implements FREFunction
{
    final /* synthetic */ b a;
    
    private af(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            b.b(this.a, array[0].getAsString(), (FREBitmapData)array[1]);
            return null;
        }
        catch (Exception ex) {
            Log.e("[GVExtension]", ex.getMessage());
            return null;
        }
    }
}
