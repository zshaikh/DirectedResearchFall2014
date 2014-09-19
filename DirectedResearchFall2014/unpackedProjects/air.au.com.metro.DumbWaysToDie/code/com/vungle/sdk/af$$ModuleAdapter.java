package com.vungle.sdk;

import java.util.*;
import android.media.*;
import javax.inject.*;
import android.content.*;
import com.vungle.sdk.net.http.*;
import android.telephony.*;

public final class af$$ModuleAdapter extends ay<af>
{
    private static final String[] h;
    private static final Class<?>[] i;
    private static final Class<?>[] j;
    
    static {
        h = new String[] { "members/com.vungle.sdk.VunglePub", "members/com.vungle.sdk.VungleAdvert", "members/com.vungle.sdk.net.http.RequestAdHttpRequest$Creator", "members/com.vungle.sdk.net.http.RequestAdHttpResponseHandler$Creator" };
        i = new Class[] { VungleConnectionHandler.class };
        j = new Class[0];
    }
    
    public af$$ModuleAdapter() {
        super(af$$ModuleAdapter.h, af$$ModuleAdapter.i, af$$ModuleAdapter.j);
    }
    
    @Override
    public final void a(final Map<String, aq<?>> map) {
        map.put("android.media.AudioManager", new a((af)this.g));
        map.put("android.content.Context", new b((af)this.g));
        map.put("@javax.inject.Named(value=RequestAdHttpResponseHandler)/com.vungle.sdk.net.http.HttpResponseHandler", new c((af)this.g));
        map.put("android.telephony.TelephonyManager", new d((af)this.g));
        map.put("com.vungle.sdk.VungleCache", new e((af)this.g));
    }
    
    public static final class a extends aq<AudioManager> implements Provider<AudioManager>
    {
        private final af e;
        
        public a(final af e) {
            super("android.media.AudioManager", null, false, "com.vungle.sdk.inject.PublisherModule.provideAudioManager()");
            this.e = e;
            this.c(false);
        }
    }
    
    public static final class b extends aq<Context> implements Provider<Context>
    {
        private final af e;
        
        public b(final af e) {
            super("android.content.Context", null, false, "com.vungle.sdk.inject.PublisherModule.provideContext()");
            this.e = e;
            this.c(false);
        }
    }
    
    public static final class c extends aq<ak> implements Provider<ak>
    {
        private final af e;
        
        public c(final af e) {
            super("@javax.inject.Named(value=RequestAdHttpResponseHandler)/com.vungle.sdk.net.http.HttpResponseHandler", null, true, "com.vungle.sdk.inject.PublisherModule.provideRequestAdHttpResponseHandler()");
            this.e = e;
            this.c(false);
        }
    }
    
    public static final class d extends aq<TelephonyManager> implements Provider<TelephonyManager>
    {
        private final af e;
        
        public d(final af e) {
            super("android.telephony.TelephonyManager", null, false, "com.vungle.sdk.inject.PublisherModule.provideTelephonyManager()");
            this.e = e;
            this.c(false);
        }
    }
    
    public static final class e extends aq<VungleCache> implements Provider<VungleCache>
    {
        private final af e;
        
        public e(final af e) {
            super("com.vungle.sdk.VungleCache", null, false, "com.vungle.sdk.inject.PublisherModule.provideVungleCache()");
            this.e = e;
            this.c(false);
        }
    }
}
