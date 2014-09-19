package com.applovin.impl.sdk;

import java.util.*;

class o implements Comparator
{
    final /* synthetic */ n a;
    
    o(final n a) {
        this.a = a;
        super();
    }
    
    public int a(final q q, final q q2) {
        if (q.d > q2.d) {
            return -1;
        }
        if (q.d < q2.d) {
            return 1;
        }
        return 0;
    }
}
