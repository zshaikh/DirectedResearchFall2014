package c.m.x.a.iab;

import java.util.*;
import android.os.*;

final class f implements Runnable
{
    final /* synthetic */ boolean a;
    final /* synthetic */ List b;
    final /* synthetic */ Handler c;
    final /* synthetic */ o d;
    final /* synthetic */ d e;
    
    f(final d e, final boolean a, final List b, final Handler c, final o d) {
        this.e = e;
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
        super();
    }
    
    @Override
    public final void run() {
        final p p = new p(0, "Inventory refresh successful.");
        while (true) {
            try {
                final q a = this.e.a(this.a, this.b);
                final p a2 = p;
                final q q = a;
                this.e.c();
                this.c.post((Runnable)new g(this, a2, q));
            }
            catch (c c) {
                final p a2 = c.a();
                final q q = null;
                continue;
            }
            break;
        }
    }
}
