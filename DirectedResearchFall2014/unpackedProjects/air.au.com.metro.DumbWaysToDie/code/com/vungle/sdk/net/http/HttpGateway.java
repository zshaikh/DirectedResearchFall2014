package com.vungle.sdk.net.http;

import javax.inject.*;
import java.util.*;
import android.net.*;
import android.os.*;
import android.content.*;
import com.vungle.sdk.*;

@Singleton
public class HttpGateway
{
    @Inject
    Provider<RequestAdHttpRequest> a;
    
    private static String a(final String str, final Map<String, String> map) {
        if (map != null) {
            final StringBuilder sb = new StringBuilder(str);
            for (final Map.Entry<String, String> entry : map.entrySet()) {
                final String str2 = entry.getKey();
                int fromIndex = -1;
                while (true) {
                    final int index = sb.indexOf(str2, fromIndex);
                    if (index <= 0) {
                        break;
                    }
                    String str3;
                    if (entry.getValue() == null) {
                        str3 = "";
                    }
                    else {
                        str3 = entry.getValue();
                    }
                    sb.replace(index, index + str2.length(), str3);
                    fromIndex = index;
                }
            }
            return sb.toString();
        }
        return str;
    }
    
    private static void a(final ah ah) {
        final Context e = n.e();
        final Intent intent = new Intent("Http", Uri.parse(ah.c()), e, (Class)VungleIntentService.class);
        intent.putExtra("httpRequest", (Parcelable)ah);
        e.startService(intent);
    }
    
    public static void a(final Map<String, String> map, final String... array) {
        if (array != null) {
            for (final String s : array) {
                if (s != null) {
                    a(new ad(a(s, map)));
                }
            }
        }
    }
    
    public final void a(final String s) {
        final RequestAdHttpRequest requestAdHttpRequest = (RequestAdHttpRequest)this.a.get();
        requestAdHttpRequest.a(s);
        a(requestAdHttpRequest);
    }
}
