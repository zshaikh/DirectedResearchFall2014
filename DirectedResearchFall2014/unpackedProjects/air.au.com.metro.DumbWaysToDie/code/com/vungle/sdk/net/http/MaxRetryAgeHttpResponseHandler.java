package com.vungle.sdk.net.http;

import android.os.*;
import com.vungle.sdk.*;

public abstract class MaxRetryAgeHttpResponseHandler extends ak
{
    public int a;
    int b;
    long c;
    private long d;
    private long e;
    
    protected MaxRetryAgeHttpResponseHandler() {
        super();
        this.a = 100;
        this.d = 2000L;
        this.e = 300000L;
    }
    
    public MaxRetryAgeHttpResponseHandler(final byte b) {
        this('\0');
    }
    
    private MaxRetryAgeHttpResponseHandler(final char c) {
        super();
        this.a = 100;
        this.d = 2000L;
        this.e = 300000L;
        this.b = 1;
        this.c = 0L;
    }
    
    protected abstract void a(final ah p0, final aj p1, final am p2);
    
    public MaxRetryAgeHttpResponseHandler b(final Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        return this;
    }
    
    @Override
    public void b(final ah ah, final aj aj, final am am) {
        final int a = aj.a();
        int n;
        if (a / 100 == 2) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            this.a(ah, aj, am);
        }
        else {
            final al j = ah.j();
            final int b = j.b();
            int n2;
            if (this.a > 0 && b >= this.a) {
                n2 = 1;
            }
            else {
                n2 = 0;
            }
            if (n2 == 0) {
                final long a2 = j.a();
                boolean b2;
                if (this.c > 0L && System.currentTimeMillis() - a2 >= this.c) {
                    b2 = true;
                }
                else {
                    b2 = false;
                }
                if (!b2 && ak.a(a)) {
                    final int c = j.c();
                    final boolean b3 = ak.b(a);
                    int e;
                    if (!b3) {
                        e = j.e();
                    }
                    else {
                        e = c;
                    }
                    int n3;
                    if (this.b > 0 && e >= this.b) {
                        n3 = 1;
                    }
                    else {
                        n3 = 0;
                    }
                    if (n3 == 0) {
                        if (b3) {
                            final long c2 = this.c(e);
                            final String a3 = IVungleConstants.a;
                            new StringBuilder("Retrying ").append(ah).append(" request in ").append(c2 / 1000L).append(" seconds");
                            am.a(ah, c2);
                            return;
                        }
                        final String a4 = IVungleConstants.a;
                        new StringBuilder("Retrying ").append(ah).append(" request soon");
                        am.a(ah);
                    }
                }
            }
        }
    }
    
    protected final long c(final int n) {
        if (n <= 0) {
            return 0L;
        }
        return (long)Math.min(this.d * Math.pow(2.0, n - 1), this.e);
    }
    
    @Override
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
    }
}
