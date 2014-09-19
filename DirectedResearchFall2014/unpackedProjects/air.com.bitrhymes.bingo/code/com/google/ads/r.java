package com.google.ads;

import android.webkit.*;
import com.google.ads.util.*;
import android.net.*;
import java.util.*;
import android.content.*;
import com.google.ads.internal.*;

public class r implements o
{
    @Override
    public void a(final d d, final HashMap<String, String> hashMap, final WebView webView) {
        final String str = hashMap.get("u");
        if (str == null) {
            b.e("Could not get URL from click gmsg.");
            return;
        }
        final g n = d.n();
        Label_0134: {
            if (n != null) {
                final Uri parse = Uri.parse(str);
                final String host = parse.getHost();
                if (host != null && host.toLowerCase(Locale.US).endsWith(".admob.com")) {
                    final String path = parse.getPath();
                    while (true) {
                        Label_0260: {
                            if (path == null) {
                                break Label_0260;
                            }
                            final String[] split = path.split("/");
                            if (split.length < 4) {
                                break Label_0260;
                            }
                            final String string = split[2] + "/" + split[3];
                            n.a(string);
                            break Label_0134;
                        }
                        final String string = null;
                        continue;
                    }
                }
            }
        }
        while (true) {
            final n i = d.i();
            final Context context = i.f.a();
            final Uri parse2 = Uri.parse(str);
            while (true) {
                try {
                    final al al = i.s.a();
                    if (al != null && al.a(parse2)) {
                        final Uri a = al.a(parse2, context);
                        new Thread(new ae(a.toString(), context)).start();
                        return;
                    }
                }
                catch (am am) {
                    b.e("Unable to append parameter to URL: " + str);
                }
                final Uri a = parse2;
                continue;
            }
        }
    }
}
