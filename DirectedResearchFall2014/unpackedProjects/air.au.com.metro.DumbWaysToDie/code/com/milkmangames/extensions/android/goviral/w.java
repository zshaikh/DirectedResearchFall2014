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

final class w implements FREFunction
{
    final /* synthetic */ b a;
    
    private w(final b a) {
        this.a = a;
        super();
    }
    
    @Override
    public final FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final b a = this.a;
            b.d();
            return null;
        }
        catch (Exception ex) {
            Log.e("[GVExtension]", ex.getMessage());
            return null;
        }
    }
}
