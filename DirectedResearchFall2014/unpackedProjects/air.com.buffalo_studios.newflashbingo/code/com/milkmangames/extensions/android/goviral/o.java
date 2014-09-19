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

final class o implements FREFunction
{
    final /* synthetic */ b a;
    
    private o(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            while (true) {
                try {
                    final String asString = array[0].getAsString();
                    final boolean asBool = array[1].getAsBool();
                    final boolean asBool2 = array[2].getAsBool();
                    if (asBool) {
                        final Bundle a = b.a((FREArray)array[3], (FREArray)array[4]);
                        if (asBool2) {
                            b.a(this.a, asString, array[5].getAsDouble(), a);
                            return null;
                        }
                        b.a(this.a, asString, a);
                        return null;
                    }
                }
                catch (Exception ex) {
                    Log.e("[GVExtension]", ex.getMessage());
                    return null;
                }
                final Bundle a = null;
                continue;
            }
        }
    }
}
