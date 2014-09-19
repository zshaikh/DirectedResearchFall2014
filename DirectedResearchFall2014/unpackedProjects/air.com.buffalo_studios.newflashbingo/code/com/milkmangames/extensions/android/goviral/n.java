package com.milkmangames.extensions.android.goviral;

import android.util.*;
import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import com.adobe.fre.*;
import android.text.*;
import android.net.*;
import com.facebook.widget.*;
import android.os.*;
import android.provider.*;
import com.facebook.*;
import android.content.*;
import android.content.pm.*;
import org.json.*;
import java.util.*;

final class n implements FREFunction
{
    final /* synthetic */ b a;
    
    private n(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            this.a.a(array[0].getAsString(), array[1].getAsString(), b.a((FREArray)array[2], (FREArray)array[3]), array[4].getAsString());
            return null;
        }
        catch (Exception ex) {
            Log.e("[GVExtension]", ex.getMessage());
            return null;
        }
    }
}
