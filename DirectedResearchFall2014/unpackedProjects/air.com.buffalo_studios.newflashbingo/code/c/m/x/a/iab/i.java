package c.m.x.a.iab;

import java.util.*;

final class i implements Runnable
{
    final /* synthetic */ List a;
    final /* synthetic */ h b;
    
    i(final h b, final List a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public final void run() {
        this.b.b.a(this.b.a.get(0), this.a.get(0));
    }
}
