package c.m.x.a.gv;

import android.view.*;

final class f implements m
{
    final /* synthetic */ e a;
    
    f(final e a) {
        this.a = a;
        super();
    }
    
    @Override
    public final View a(final int n) {
        if (this.a.mView == null) {
            throw new IllegalStateException("Fragment does not have a view");
        }
        return this.a.mView.findViewById(n);
    }
}
