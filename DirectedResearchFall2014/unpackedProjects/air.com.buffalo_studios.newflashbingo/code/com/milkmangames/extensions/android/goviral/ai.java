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

final class ai implements FREFunction
{
    final /* synthetic */ b a;
    
    private ai(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            b.a(this.a, b.a((FREArray)array[0], (FREArray)array[1]));
            return null;
        }
        catch (Exception ex) {
            Log.e("[GVExtension]", ex.getMessage());
            return null;
        }
    }
}
