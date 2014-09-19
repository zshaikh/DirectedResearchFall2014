package com.milkmangames.extensions.android.goviral;

import android.annotation.*;
import android.app.*;
import c.m.x.a.gv.*;
import android.util.*;
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

final class f implements DialogInterface$OnClickListener
{
    final /* synthetic */ String a;
    final /* synthetic */ b b;
    
    f(final b b, final String a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        com.milkmangames.extensions.android.goviral.b.a(this.b, "Android hash", "", "Your android hash key is below.  You'll need to enter it in the facebook developer site.  After doing so, you can switch to the regular ANE file.  Remember that this key is different when you build with a debug or release android p12 keystore file- so you'll need to do this again before release and set the release key on the facebook site. KEY:    " + this.a, false, "", "");
    }
}
