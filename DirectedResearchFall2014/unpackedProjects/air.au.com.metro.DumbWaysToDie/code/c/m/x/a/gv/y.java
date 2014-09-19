package c.m.x.a.gv;

import android.os.*;
import android.util.*;
import java.io.*;

final class y extends w
{
    static boolean a;
    final ak b;
    final ak c;
    final String d;
    j e;
    boolean f;
    boolean g;
    boolean h;
    
    static {
        y.a = false;
    }
    
    y(final String d, final j e, final boolean f) {
        super();
        this.b = new ak();
        this.c = new ak();
        this.d = d;
        this.e = e;
        this.f = f;
    }
    
    private z b(final x x) {
        try {
            this.h = true;
            final z z = new z(this, x);
            z.d = x.onCreateLoader(0, null);
            this.a(z);
            return z;
        }
        finally {
            this.h = false;
        }
    }
    
    @Override
    public final ac a(final x c) {
        if (this.h) {
            throw new IllegalStateException("Called while creating a loader");
        }
        z b = (z)this.b.a(0);
        if (y.a) {
            Log.v("LoaderManager", "initLoader in " + this + ": args=" + (Object)null);
        }
        if (b == null) {
            b = this.b(c);
            if (y.a) {
                Log.v("LoaderManager", "  Created new loader " + b);
            }
        }
        else {
            if (y.a) {
                Log.v("LoaderManager", "  Re-using existing loader " + b);
            }
            b.c = c;
        }
        if (b.e && this.f) {
            b.b(b.d, b.g);
        }
        return b.d;
    }
    
    final void a(final j e) {
        this.e = e;
    }
    
    final void a(final z z) {
        this.b.a(z.a, z);
        if (this.f) {
            z.a();
        }
    }
    
    public final void a(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        if (this.b.a() > 0) {
            printWriter.print(s);
            printWriter.println("Active Loaders:");
            final String string = s + "    ";
            for (int i = 0; i < this.b.a(); ++i) {
                final z z = (z)this.b.d(i);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.b.c(i));
                printWriter.print(": ");
                printWriter.println(z.toString());
                z.a(string, fileDescriptor, printWriter, array);
            }
        }
        if (this.c.a() > 0) {
            printWriter.print(s);
            printWriter.println("Inactive Loaders:");
            final String string2 = s + "    ";
            for (int j = 0; j < this.c.a(); ++j) {
                final z z2 = (z)this.c.d(j);
                printWriter.print(s);
                printWriter.print("  #");
                printWriter.print(this.c.c(j));
                printWriter.print(": ");
                printWriter.println(z2.toString());
                z2.a(string2, fileDescriptor, printWriter, array);
            }
        }
    }
    
    @Override
    public final boolean a() {
        final int a = this.b.a();
        int i = 0;
        boolean b = false;
        while (i < a) {
            final z z = (z)this.b.d(i);
            final boolean b2 = (z.h && !z.f) | b;
            ++i;
            b = b2;
        }
        return b;
    }
    
    final void b() {
        if (y.a) {
            Log.v("LoaderManager", "Starting in " + this);
        }
        if (this.f) {
            final RuntimeException ex = new RuntimeException("here");
            ex.fillInStackTrace();
            Log.w("LoaderManager", "Called doStart when already started: " + this, (Throwable)ex);
        }
        else {
            this.f = true;
            for (int i = this.b.a() - 1; i >= 0; --i) {
                ((z)this.b.d(i)).a();
            }
        }
    }
    
    final void c() {
        if (y.a) {
            Log.v("LoaderManager", "Stopping in " + this);
        }
        if (!this.f) {
            final RuntimeException ex = new RuntimeException("here");
            ex.fillInStackTrace();
            Log.w("LoaderManager", "Called doStop when not started: " + this, (Throwable)ex);
            return;
        }
        for (int i = this.b.a() - 1; i >= 0; --i) {
            ((z)this.b.d(i)).b();
        }
        this.f = false;
    }
    
    final void d() {
        if (y.a) {
            Log.v("LoaderManager", "Retaining in " + this);
        }
        if (!this.f) {
            final RuntimeException ex = new RuntimeException("here");
            ex.fillInStackTrace();
            Log.w("LoaderManager", "Called doRetain when not started: " + this, (Throwable)ex);
        }
        else {
            this.g = true;
            this.f = false;
            for (int i = this.b.a() - 1; i >= 0; --i) {
                final z obj = (z)this.b.d(i);
                if (y.a) {
                    Log.v("LoaderManager", "  Retaining: " + obj);
                }
                obj.i = true;
                obj.j = obj.h;
                obj.h = false;
                obj.c = null;
            }
        }
    }
    
    final void e() {
        if (this.g) {
            if (y.a) {
                Log.v("LoaderManager", "Finished Retaining in " + this);
            }
            this.g = false;
            for (int i = this.b.a() - 1; i >= 0; --i) {
                final z obj = (z)this.b.d(i);
                if (obj.i) {
                    if (y.a) {
                        Log.v("LoaderManager", "  Finished Retaining: " + obj);
                    }
                    obj.i = false;
                    if (obj.h != obj.j && !obj.h) {
                        obj.b();
                    }
                }
                if (obj.h && obj.e && !obj.k) {
                    obj.b(obj.d, obj.g);
                }
            }
        }
    }
    
    final void f() {
        for (int i = this.b.a() - 1; i >= 0; --i) {
            ((z)this.b.d(i)).k = true;
        }
    }
    
    final void g() {
        for (int i = this.b.a() - 1; i >= 0; --i) {
            final z z = (z)this.b.d(i);
            if (z.h && z.k) {
                z.k = false;
                if (z.e) {
                    z.b(z.d, z.g);
                }
            }
        }
    }
    
    final void h() {
        if (!this.g) {
            if (y.a) {
                Log.v("LoaderManager", "Destroying Active in " + this);
            }
            for (int i = this.b.a() - 1; i >= 0; --i) {
                ((z)this.b.d(i)).c();
            }
        }
        if (y.a) {
            Log.v("LoaderManager", "Destroying Inactive in " + this);
        }
        for (int j = this.c.a() - 1; j >= 0; --j) {
            ((z)this.c.d(j)).c();
        }
        this.c.b();
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        ai.a(this.e, sb);
        sb.append("}}");
        return sb.toString();
    }
}
