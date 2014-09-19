package c.m.x.a.gv;

import android.os.*;
import android.util.*;
import java.lang.reflect.*;
import java.io.*;

final class z implements ad
{
    final int a;
    final Bundle b;
    x c;
    ac d;
    boolean e;
    boolean f;
    Object g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    boolean l;
    boolean m;
    z n;
    final /* synthetic */ y o;
    
    public z(final y o, final x c) {
        this.o = o;
        super();
        this.a = 0;
        this.b = null;
        this.c = c;
    }
    
    final void a() {
        if (this.i && this.j) {
            this.h = true;
        }
        else if (!this.h) {
            this.h = true;
            if (y.a) {
                Log.v("LoaderManager", "  Starting: " + this);
            }
            if (this.d == null && this.c != null) {
                this.d = this.c.onCreateLoader(this.a, this.b);
            }
            if (this.d != null) {
                if (this.d.getClass().isMemberClass() && !Modifier.isStatic(this.d.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: " + this.d);
                }
                if (!this.m) {
                    this.d.registerListener(this.a, this);
                    this.m = true;
                }
                this.d.startLoading();
            }
        }
    }
    
    @Override
    public final void a(final ac ac, final Object g) {
        if (y.a) {
            Log.v("LoaderManager", "onLoadComplete: " + this);
        }
        if (this.l) {
            if (y.a) {
                Log.v("LoaderManager", "  Ignoring load complete -- destroyed");
            }
        }
        else if (this.o.b.a(this.a) != this) {
            if (y.a) {
                Log.v("LoaderManager", "  Ignoring load complete -- not active");
            }
        }
        else {
            final z n = this.n;
            if (n != null) {
                if (y.a) {
                    Log.v("LoaderManager", "  Switching to pending loader: " + n);
                }
                this.n = null;
                this.o.b.a(this.a, null);
                this.c();
                this.o.a(n);
                return;
            }
            if (this.g != g || !this.e) {
                this.g = g;
                this.e = true;
                if (this.h) {
                    this.b(ac, g);
                }
            }
            final z z = (z)this.o.c.a(this.a);
            if (z != null && z != this) {
                z.f = false;
                z.c();
                this.o.c.b(this.a);
            }
            if (this.o.e != null && !this.o.a()) {
                this.o.e.b.b();
            }
        }
    }
    
    public final void a(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        String string = s;
        z n = this;
        while (true) {
            printWriter.print(string);
            printWriter.print("mId=");
            printWriter.print(n.a);
            printWriter.print(" mArgs=");
            printWriter.println(n.b);
            printWriter.print(string);
            printWriter.print("mCallbacks=");
            printWriter.println(n.c);
            printWriter.print(string);
            printWriter.print("mLoader=");
            printWriter.println(n.d);
            if (n.d != null) {
                n.d.dump(string + "  ", fileDescriptor, printWriter, array);
            }
            if (n.e || n.f) {
                printWriter.print(string);
                printWriter.print("mHaveData=");
                printWriter.print(n.e);
                printWriter.print("  mDeliveredData=");
                printWriter.println(n.f);
                printWriter.print(string);
                printWriter.print("mData=");
                printWriter.println(n.g);
            }
            printWriter.print(string);
            printWriter.print("mStarted=");
            printWriter.print(n.h);
            printWriter.print(" mReportNextStart=");
            printWriter.print(n.k);
            printWriter.print(" mDestroyed=");
            printWriter.println(n.l);
            printWriter.print(string);
            printWriter.print("mRetaining=");
            printWriter.print(n.i);
            printWriter.print(" mRetainingStarted=");
            printWriter.print(n.j);
            printWriter.print(" mListenerRegistered=");
            printWriter.println(n.m);
            if (n.n == null) {
                break;
            }
            printWriter.print(string);
            printWriter.println("Pending Loader ");
            printWriter.print(n.n);
            printWriter.println(":");
            n = n.n;
            string += "  ";
        }
    }
    
    final void b() {
        if (y.a) {
            Log.v("LoaderManager", "  Stopping: " + this);
        }
        this.h = false;
        if (!this.i && this.d != null && this.m) {
            this.m = false;
            this.d.unregisterListener(this);
            this.d.stopLoading();
        }
    }
    
    final void b(final ac obj, final Object o) {
        if (this.c == null) {
            return;
        }
        final j e = this.o.e;
        String u = null;
        if (e != null) {
            u = this.o.e.b.u;
            this.o.e.b.u = "onLoadFinished";
        }
        try {
            if (y.a) {
                Log.v("LoaderManager", "  onLoadFinished in " + obj + ": " + obj.dataToString(o));
            }
            this.c.onLoadFinished(obj, o);
            if (this.o.e != null) {
                this.o.e.b.u = u;
            }
            this.f = true;
        }
        finally {
            if (this.o.e != null) {
                this.o.e.b.u = u;
            }
        }
    }
    
    final void c() {
        z n = this;
        while (true) {
            if (y.a) {
                Log.v("LoaderManager", "  Destroying: " + n);
            }
            n.l = true;
            final boolean f = n.f;
            n.f = false;
            Label_0177: {
                if (n.c == null || n.d == null || !n.e || !f) {
                    break Label_0177;
                }
                if (y.a) {
                    Log.v("LoaderManager", "  Reseting: " + n);
                }
                String u;
                if (n.o.e != null) {
                    u = n.o.e.b.u;
                    n.o.e.b.u = "onLoaderReset";
                }
                else {
                    u = null;
                }
                try {
                    n.c.onLoaderReset(n.d);
                    if (n.o.e != null) {
                        n.o.e.b.u = u;
                    }
                    n.c = null;
                    n.g = null;
                    n.e = false;
                    if (n.d != null) {
                        if (n.m) {
                            n.m = false;
                            n.d.unregisterListener(n);
                        }
                        n.d.reset();
                    }
                    if (n.n != null) {
                        n = n.n;
                        continue;
                    }
                }
                finally {
                    if (n.o.e != null) {
                        n.o.e.b.u = u;
                    }
                }
            }
            break;
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(64);
        sb.append("LoaderInfo{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" #");
        sb.append(this.a);
        sb.append(" : ");
        ai.a(this.d, sb);
        sb.append("}}");
        return sb.toString();
    }
}
