package c.m.x.a.gv;

import android.util.*;
import java.io.*;
import java.util.*;

final class a extends v implements Runnable
{
    final o a;
    b b;
    b c;
    int d;
    int e;
    int f;
    int g;
    int h;
    int i;
    int j;
    boolean k;
    boolean l;
    String m;
    boolean n;
    int o;
    int p;
    CharSequence q;
    int r;
    CharSequence s;
    
    public a(final o a) {
        super();
        this.l = true;
        this.o = -1;
        this.a = a;
    }
    
    public final void a() {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "popFromBackStack: " + this);
            this.a("  ", new PrintWriter(new am("FragmentManager")));
        }
        this.a(-1);
        for (b b = this.c; b != null; b = b.b) {
            switch (b.c) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + b.c);
                }
                case 1: {
                    final e d = b.d;
                    d.mNextAnim = b.h;
                    this.a.a(d, c.m.x.a.gv.o.c(this.i), this.j);
                    break;
                }
                case 2: {
                    final e d2 = b.d;
                    if (d2 != null) {
                        d2.mNextAnim = b.h;
                        this.a.a(d2, c.m.x.a.gv.o.c(this.i), this.j);
                    }
                    if (b.i != null) {
                        for (int i = 0; i < b.i.size(); ++i) {
                            final e e = b.i.get(i);
                            e.mNextAnim = b.g;
                            this.a.a(e, false);
                        }
                        break;
                    }
                    break;
                }
                case 3: {
                    final e d3 = b.d;
                    d3.mNextAnim = b.g;
                    this.a.a(d3, false);
                    break;
                }
                case 4: {
                    final e d4 = b.d;
                    d4.mNextAnim = b.g;
                    this.a.c(d4, c.m.x.a.gv.o.c(this.i), this.j);
                    break;
                }
                case 5: {
                    final e d5 = b.d;
                    d5.mNextAnim = b.h;
                    this.a.b(d5, c.m.x.a.gv.o.c(this.i), this.j);
                    break;
                }
                case 6: {
                    final e d6 = b.d;
                    d6.mNextAnim = b.g;
                    this.a.e(d6, c.m.x.a.gv.o.c(this.i), this.j);
                    break;
                }
                case 7: {
                    final e d7 = b.d;
                    d7.mNextAnim = b.g;
                    this.a.d(d7, c.m.x.a.gv.o.c(this.i), this.j);
                    break;
                }
            }
        }
        this.a.a(this.a.n, c.m.x.a.gv.o.c(this.i), this.j, true);
        if (this.o >= 0) {
            this.a.b(this.o);
            this.o = -1;
        }
    }
    
    final void a(final int i) {
        if (this.k) {
            if (c.m.x.a.gv.o.a) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i);
            }
            for (b b = this.b; b != null; b = b.a) {
                if (b.d != null) {
                    final e d = b.d;
                    d.mBackStackNesting += i;
                    if (c.m.x.a.gv.o.a) {
                        Log.v("FragmentManager", "Bump nesting of " + b.d + " to " + b.d.mBackStackNesting);
                    }
                }
                if (b.i != null) {
                    for (int j = b.i.size() - 1; j >= 0; --j) {
                        final e obj = b.i.get(j);
                        obj.mBackStackNesting += i;
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "Bump nesting of " + obj + " to " + obj.mBackStackNesting);
                        }
                    }
                }
            }
        }
    }
    
    final void a(final b b) {
        if (this.b == null) {
            this.c = b;
            this.b = b;
        }
        else {
            b.b = this.c;
            this.c.a = b;
            this.c = b;
        }
        b.e = this.e;
        b.f = this.f;
        b.g = this.g;
        b.h = this.h;
        ++this.d;
    }
    
    public final void a(final String s, final PrintWriter printWriter) {
        this.a(s, printWriter, true);
    }
    
    public final void a(final String s, final PrintWriter printWriter, final boolean b) {
        if (b) {
            printWriter.print(s);
            printWriter.print("mName=");
            printWriter.print(this.m);
            printWriter.print(" mIndex=");
            printWriter.print(this.o);
            printWriter.print(" mCommitted=");
            printWriter.println(this.n);
            if (this.i != 0) {
                printWriter.print(s);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.j));
            }
            if (this.e != 0 || this.f != 0) {
                printWriter.print(s);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (this.g != 0 || this.h != 0) {
                printWriter.print(s);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (this.p != 0 || this.q != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.p));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.q);
            }
            if (this.r != 0 || this.s != null) {
                printWriter.print(s);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.r));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.s);
            }
        }
        if (this.b != null) {
            printWriter.print(s);
            printWriter.println("Operations:");
            final String string = s + "    ";
            b b2 = this.b;
            for (int i = 0; b2 != null; b2 = b2.a, ++i) {
                String string2 = null;
                switch (b2.c) {
                    default: {
                        string2 = "cmd=" + b2.c;
                        break;
                    }
                    case 0: {
                        string2 = "NULL";
                        break;
                    }
                    case 1: {
                        string2 = "ADD";
                        break;
                    }
                    case 2: {
                        string2 = "REPLACE";
                        break;
                    }
                    case 3: {
                        string2 = "REMOVE";
                        break;
                    }
                    case 4: {
                        string2 = "HIDE";
                        break;
                    }
                    case 5: {
                        string2 = "SHOW";
                        break;
                    }
                    case 6: {
                        string2 = "DETACH";
                        break;
                    }
                    case 7: {
                        string2 = "ATTACH";
                        break;
                    }
                }
                printWriter.print(s);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(string2);
                printWriter.print(" ");
                printWriter.println(b2.d);
                if (b) {
                    if (b2.e != 0 || b2.f != 0) {
                        printWriter.print(s);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(b2.e));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(b2.f));
                    }
                    if (b2.g != 0 || b2.h != 0) {
                        printWriter.print(s);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(b2.g));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(b2.h));
                    }
                }
                if (b2.i != null && b2.i.size() > 0) {
                    for (int j = 0; j < b2.i.size(); ++j) {
                        printWriter.print(string);
                        if (b2.i.size() == 1) {
                            printWriter.print("Removed: ");
                        }
                        else {
                            if (j == 0) {
                                printWriter.println("Removed:");
                            }
                            printWriter.print(string);
                            printWriter.print("  #");
                            printWriter.print(j);
                            printWriter.print(": ");
                        }
                        printWriter.println(b2.i.get(j));
                    }
                }
            }
        }
    }
    
    @Override
    public final void run() {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "Run: " + this);
        }
        if (this.k && this.o < 0) {
            throw new IllegalStateException("addToBackStack() called after commit()");
        }
        this.a(1);
        for (b b = this.b; b != null; b = b.a) {
            switch (b.c) {
                default: {
                    throw new IllegalArgumentException("Unknown cmd: " + b.c);
                }
                case 1: {
                    final e d = b.d;
                    d.mNextAnim = b.e;
                    this.a.a(d, false);
                    break;
                }
                case 2: {
                    e d2 = b.d;
                    if (this.a.g != null) {
                        int i = 0;
                        e obj = d2;
                    Label_0305_Outer:
                        while (i < this.a.g.size()) {
                            final e obj2 = this.a.g.get(i);
                            if (c.m.x.a.gv.o.a) {
                                Log.v("FragmentManager", "OP_REPLACE: adding=" + obj + " old=" + obj2);
                            }
                            while (true) {
                                Label_0430: {
                                    if (obj != null && obj2.mContainerId != obj.mContainerId) {
                                        break Label_0430;
                                    }
                                    if (obj2 != obj) {
                                        if (b.i == null) {
                                            b.i = new ArrayList<e>();
                                        }
                                        b.i.add(obj2);
                                        obj2.mNextAnim = b.f;
                                        if (this.k) {
                                            ++obj2.mBackStackNesting;
                                            if (c.m.x.a.gv.o.a) {
                                                Log.v("FragmentManager", "Bump nesting of " + obj2 + " to " + obj2.mBackStackNesting);
                                            }
                                        }
                                        this.a.a(obj2, this.i, this.j);
                                        break Label_0430;
                                    }
                                    final e e = null;
                                    b.d = null;
                                    ++i;
                                    obj = e;
                                    continue Label_0305_Outer;
                                }
                                final e e = obj;
                                continue;
                            }
                        }
                        d2 = obj;
                    }
                    if (d2 != null) {
                        d2.mNextAnim = b.e;
                        this.a.a(d2, false);
                        break;
                    }
                    break;
                }
                case 3: {
                    final e d3 = b.d;
                    d3.mNextAnim = b.f;
                    this.a.a(d3, this.i, this.j);
                    break;
                }
                case 4: {
                    final e d4 = b.d;
                    d4.mNextAnim = b.f;
                    this.a.b(d4, this.i, this.j);
                    break;
                }
                case 5: {
                    final e d5 = b.d;
                    d5.mNextAnim = b.e;
                    this.a.c(d5, this.i, this.j);
                    break;
                }
                case 6: {
                    final e d6 = b.d;
                    d6.mNextAnim = b.f;
                    this.a.d(d6, this.i, this.j);
                    break;
                }
                case 7: {
                    final e d7 = b.d;
                    d7.mNextAnim = b.e;
                    this.a.e(d7, this.i, this.j);
                    break;
                }
            }
        }
        this.a.a(this.a.n, this.i, this.j, true);
        if (this.k) {
            this.a.a(this);
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.o >= 0) {
            sb.append(" #");
            sb.append(this.o);
        }
        if (this.m != null) {
            sb.append(" ");
            sb.append(this.m);
        }
        sb.append("}");
        return sb.toString();
    }
}
