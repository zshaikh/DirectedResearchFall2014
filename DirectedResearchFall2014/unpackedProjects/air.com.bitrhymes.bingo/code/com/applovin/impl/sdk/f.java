package com.applovin.impl.sdk;

import android.os.*;
import com.applovin.sdk.*;
import java.util.*;

class f extends an
{
    final /* synthetic */ b a;
    private final AppLovinAdSize b;
    
    public f(final b a, final AppLovinAdSize b) {
        this.a = a;
        super("UpdateAdTask", a.a);
        this.b = b;
    }
    
    @Override
    public void run() {
    Label_0078_Outer:
        while (true) {
            final e e = this.a.d.get(this.b);
            while (true) {
            Label_0135:
                while (true) {
                    synchronized (e.b) {
                        final boolean a = this.a.a(this.b);
                        final boolean d = this.a.a();
                        if (!e.f.isEmpty()) {
                            final int n = 1;
                            if (System.currentTimeMillis() > e.d) {
                                final int n2 = 1;
                                if (a && n != 0 && n2 != 0 && d && !e.e) {
                                    e.e = true;
                                    this.a.c(this.b);
                                }
                                return;
                            }
                            break Label_0135;
                        }
                    }
                    final int n = 0;
                    continue Label_0078_Outer;
                }
                final int n2 = 0;
                continue;
            }
        }
    }
}
