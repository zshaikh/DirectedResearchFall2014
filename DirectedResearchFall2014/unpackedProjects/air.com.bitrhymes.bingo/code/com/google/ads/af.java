package com.google.ads;

import java.lang.ref.*;
import com.google.ads.internal.*;
import com.google.ads.util.*;

public class af implements Runnable
{
    private WeakReference<d> a;
    
    public af(final d referent) {
        super();
        this.a = new WeakReference<d>(referent);
    }
    
    @Override
    public void run() {
        final d d = this.a.get();
        if (d == null) {
            b.a("The ad must be gone, so cancelling the refresh timer.");
            return;
        }
        d.A();
    }
}
