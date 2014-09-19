package com.flurry.android;

import java.nio.*;
import java.util.*;
import com.flurry.org.apache.avro.specific.*;
import com.flurry.org.apache.avro.io.*;
import java.util.regex.*;
import java.util.concurrent.*;
import org.apache.http.entity.*;
import org.apache.http.*;
import org.apache.http.params.*;
import org.apache.http.client.methods.*;
import org.apache.http.client.*;
import android.app.*;
import android.net.*;
import android.text.*;
import android.util.*;
import android.os.*;
import android.content.*;
import java.io.*;
import android.view.*;

final class ab extends AsyncTask<Void, Void, String>
{
    private Context J;
    private String ae;
    private final String d;
    
    public ab(final FlurryAds flurryAds, final Context j, final String ae) {
        super();
        this.d = this.getClass().getSimpleName();
        this.J = j;
        this.ae = ae;
    }
    
    private String g() {
        int i = 0;
        while (i < 5) {
            Label_0238: {
                Label_0263: {
                    try {
                        if (Uri.parse(this.ae).getScheme().equals("http")) {
                            if (!i(this.J) || h(this.J)) {
                                try {
                                    Thread.sleep(100L);
                                }
                                catch (InterruptedException ex) {
                                    ex.getMessage();
                                }
                                break Label_0263;
                            }
                            final HttpResponse a = bd.a(this.ae, 10000, 15000, false);
                            if (a == null) {
                                break Label_0263;
                            }
                            final int statusCode = a.getStatusLine().getStatusCode();
                            if (statusCode == 200) {
                                new StringBuilder().append("Redirect URL found for: ").append(this.ae).toString();
                                return this.ae;
                            }
                            if (statusCode < 300 || statusCode >= 400) {
                                new StringBuilder().append("Bad Response status code: ").append(statusCode).toString();
                                return null;
                            }
                            new StringBuilder().append("NumRedirects: ").append(i + 1).toString();
                            if (a.containsHeader("Location")) {
                                this.ae = a.getFirstHeader("Location").getValue();
                            }
                            break Label_0263;
                        }
                    }
                    catch (Throwable t) {
                        t.printStackTrace();
                        return null;
                    }
                    break Label_0238;
                }
                ++i;
                continue;
            }
            if (FlurryAds.a(this.J, this.ae, "android.intent.action.VIEW")) {
                return this.ae;
            }
            break;
        }
        return null;
    }
}
