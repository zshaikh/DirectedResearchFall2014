package c.m.x.a.iab;

import java.util.*;

public final class q
{
    Map a;
    Map b;
    
    q() {
        super();
        this.a = new HashMap();
        this.b = new HashMap();
    }
    
    final List a(final String anObject) {
        final ArrayList<String> list = new ArrayList<String>();
        for (final r r : this.b.values()) {
            if (r.a.equals(anObject)) {
                list.add(r.d);
            }
        }
        return list;
    }
    
    public final Map a() {
        return this.a;
    }
    
    public final Map b() {
        return this.b;
    }
}
