package com.flurry.android;

import java.util.concurrent.atomic.*;
import android.content.*;
import java.nio.*;
import android.location.*;
import android.app.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import android.content.pm.*;
import android.os.*;
import java.net.*;
import android.util.*;
import android.telephony.*;
import java.util.*;

final class s extends bk
{
    private /* synthetic */ a O;
    
    s(final a o) {
        this.O = o;
        super();
    }
    
    @Override
    public final void a() {
        FlurryAgent.b(this.O.c, this.O.b);
    }
}
