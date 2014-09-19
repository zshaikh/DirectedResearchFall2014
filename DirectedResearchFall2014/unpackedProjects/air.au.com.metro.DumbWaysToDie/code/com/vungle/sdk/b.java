package com.vungle.sdk;

import android.net.*;

final class b
{
    static final class a implements Runnable
    {
        private String a;
        private String b;
        private String c;
        
        public a(final String a, final String b, final String c) {
            super();
            this.a = a;
            this.b = b;
            this.c = c;
        }
        
        @Override
        public final void run() {
            final Uri$Builder buildUpon = Uri.parse(this.a).buildUpon();
            buildUpon.appendQueryParameter("isu", this.c);
            buildUpon.appendQueryParameter("ut", String.valueOf(System.currentTimeMillis() / 1000L));
            buildUpon.appendQueryParameter("app_id", this.b);
            final Uri build = buildUpon.build();
            new StringBuilder("Sending to: ").append(build);
            q.a(build.toString(), null);
        }
    }
}
