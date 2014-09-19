package c.m.x.a.gv;

import java.util.*;

final class ao<T> implements Iterator<T>
{
    final int a;
    int b;
    int c;
    boolean d;
    final /* synthetic */ an e;
    
    ao(final an e, final int a) {
        this.e = e;
        super();
        this.d = false;
        this.a = a;
        this.b = e.a();
    }
    
    @Override
    public final boolean hasNext() {
        return this.c < this.b;
    }
    
    @Override
    public final T next() {
        final Object a = this.e.a(this.c, this.a);
        ++this.c;
        this.d = true;
        return (T)a;
    }
    
    @Override
    public final void remove() {
        if (!this.d) {
            throw new IllegalStateException();
        }
        --this.c;
        --this.b;
        this.d = false;
        this.e.a(this.c);
    }
}
