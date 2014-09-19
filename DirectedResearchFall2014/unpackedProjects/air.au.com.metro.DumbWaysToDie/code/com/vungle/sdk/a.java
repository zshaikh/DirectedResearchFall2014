package com.vungle.sdk;

import android.graphics.*;
import java.io.*;

final class a implements VungleBitmapFactory
{
    public static a a() {
        return a.a;
    }
    
    @Override
    public final Bitmap getBitmap(final String s) throws IOException {
        return BitmapFactory.decodeStream(n.e().getAssets().open(s));
    }
    
    static final class a
    {
        static final com.vungle.sdk.a a;
        
        static {
            a = new com.vungle.sdk.a((byte)0);
        }
    }
}
