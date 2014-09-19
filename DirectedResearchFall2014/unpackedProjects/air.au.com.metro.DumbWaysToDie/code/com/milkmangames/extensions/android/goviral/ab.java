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

final class ab implements FREFunction
{
    final /* synthetic */ b a;
    
    private ab(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            final String asString3 = array[2].getAsString();
            final boolean asBool = array[3].getAsBool();
            final String asString4 = array[4].getAsString();
            final String asString5 = array[5].getAsString();
            final FREBitmapData freBitmapData = (FREBitmapData)array[6];
            array[7].getAsString();
            b.a(this.a, asString, asString2, asString3, asBool, asString4, asString5, freBitmapData, array[8].getAsString());
            return null;
        }
        catch (Exception ex) {
            Log.e("[GVExtension]", ex.getMessage());
            return null;
        }
    }
}
