package c.m.x.a.gv;

import android.content.*;
import android.util.*;
import java.io.*;
import android.content.res.*;
import android.app.*;
import android.view.animation.*;
import java.util.*;
import android.view.*;
import android.os.*;

final class o extends n
{
    static final Interpolator A;
    static final Interpolator B;
    static final Interpolator C;
    static boolean a;
    static final boolean b;
    static final Interpolator z;
    ArrayList c;
    Runnable[] d;
    boolean e;
    ArrayList f;
    ArrayList g;
    ArrayList h;
    ArrayList i;
    ArrayList j;
    ArrayList k;
    ArrayList l;
    ArrayList m;
    int n;
    j o;
    m p;
    e q;
    boolean r;
    boolean s;
    boolean t;
    String u;
    boolean v;
    Bundle w;
    SparseArray x;
    Runnable y;
    
    static {
        o.a = false;
        b = (Build$VERSION.SDK_INT >= 11);
        z = (Interpolator)new DecelerateInterpolator(2.5f);
        A = (Interpolator)new DecelerateInterpolator(1.5f);
        B = (Interpolator)new AccelerateInterpolator(2.5f);
        C = (Interpolator)new AccelerateInterpolator(1.5f);
    }
    
    o() {
        super();
        this.n = 0;
        this.w = null;
        this.x = null;
        this.y = new p(this);
    }
    
    private static Animation a(final float n, final float n2) {
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n, n2);
        alphaAnimation.setInterpolator(o.A);
        alphaAnimation.setDuration(220L);
        return (Animation)alphaAnimation;
    }
    
    private static Animation a(final float n, final float n2, final float n3, final float n4) {
        final AnimationSet set = new AnimationSet(false);
        final ScaleAnimation scaleAnimation = new ScaleAnimation(n, n2, n, n2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(o.z);
        scaleAnimation.setDuration(220L);
        set.addAnimation((Animation)scaleAnimation);
        final AlphaAnimation alphaAnimation = new AlphaAnimation(n3, n4);
        alphaAnimation.setInterpolator(o.A);
        alphaAnimation.setDuration(220L);
        set.addAnimation((Animation)alphaAnimation);
        return (Animation)set;
    }
    
    private Animation a(final e e, final int n, final boolean b, final int n2) {
        Animation animation = e.onCreateAnimation(n, b, e.mNextAnim);
        if (animation == null) {
            if (e.mNextAnim != 0) {
                animation = AnimationUtils.loadAnimation((Context)this.o, e.mNextAnim);
                if (animation != null) {
                    return animation;
                }
            }
            if (n == 0) {
                return null;
            }
            int n3 = -1;
            switch (n) {
                case 4097: {
                    if (b) {
                        n3 = 1;
                        break;
                    }
                    n3 = 2;
                    break;
                }
                case 8194: {
                    if (b) {
                        n3 = 3;
                        break;
                    }
                    n3 = 4;
                    break;
                }
                case 4099: {
                    if (b) {
                        n3 = 5;
                        break;
                    }
                    n3 = 6;
                    break;
                }
            }
            if (n3 < 0) {
                return null;
            }
            switch (n3) {
                default: {
                    int windowAnimations;
                    if (n2 == 0 && this.o.getWindow() != null) {
                        windowAnimations = this.o.getWindow().getAttributes().windowAnimations;
                    }
                    else {
                        windowAnimations = n2;
                    }
                    if (windowAnimations == 0) {
                        return null;
                    }
                    return null;
                }
                case 1: {
                    final j o = this.o;
                    return a(1.125f, 1.0f, 0.0f, 1.0f);
                }
                case 2: {
                    final j o2 = this.o;
                    return a(1.0f, 0.975f, 1.0f, 0.0f);
                }
                case 3: {
                    final j o3 = this.o;
                    return a(0.975f, 1.0f, 0.0f, 1.0f);
                }
                case 4: {
                    final j o4 = this.o;
                    return a(1.0f, 1.075f, 1.0f, 0.0f);
                }
                case 5: {
                    final j o5 = this.o;
                    return a(0.0f, 1.0f);
                }
                case 6: {
                    final j o6 = this.o;
                    return a(1.0f, 0.0f);
                }
            }
        }
        return animation;
    }
    
    private e a(final Bundle bundle, final String s) {
        final int int1 = bundle.getInt(s, -1);
        e e;
        if (int1 == -1) {
            e = null;
        }
        else {
            if (int1 >= this.f.size()) {
                this.a(new IllegalStateException("Fragement no longer exists for key " + s + ": index " + int1));
            }
            e = this.f.get(int1);
            if (e == null) {
                this.a(new IllegalStateException("Fragement no longer exists for key " + s + ": index " + int1));
                return e;
            }
        }
        return e;
    }
    
    private void a(final int i, final a a) {
        synchronized (this) {
            if (this.k == null) {
                this.k = new ArrayList();
            }
            int j = this.k.size();
            if (i < j) {
                if (c.m.x.a.gv.o.a) {
                    Log.v("FragmentManager", "Setting back stack index " + i + " to " + a);
                }
                this.k.set(i, a);
            }
            else {
                while (j < i) {
                    this.k.add(null);
                    if (this.l == null) {
                        this.l = new ArrayList();
                    }
                    if (c.m.x.a.gv.o.a) {
                        Log.v("FragmentManager", "Adding available back stack index " + j);
                    }
                    this.l.add(j);
                    ++j;
                }
                if (c.m.x.a.gv.o.a) {
                    Log.v("FragmentManager", "Adding back stack index " + i + " with " + a);
                }
                this.k.add(a);
            }
        }
    }
    
    private void a(final RuntimeException ex) {
        Log.e("FragmentManager", ex.getMessage());
        Log.e("FragmentManager", "Activity state:");
        final PrintWriter printWriter = new PrintWriter(new aj("FragmentManager"));
        while (true) {
            Label_0079: {
                if (this.o == null) {
                    break Label_0079;
                }
                try {
                    this.o.dump("  ", null, printWriter, new String[0]);
                    throw ex;
                }
                catch (Exception ex2) {
                    Log.e("FragmentManager", "Failed dumping state", (Throwable)ex2);
                    throw ex;
                }
                try {
                    this.a("  ", null, printWriter, new String[0]);
                    continue;
                }
                catch (Exception ex3) {
                    Log.e("FragmentManager", "Failed dumping state", (Throwable)ex3);
                    continue;
                }
            }
            continue;
        }
    }
    
    public static int c(final int n) {
        switch (n) {
            default: {
                return 0;
            }
            case 4097: {
                return 8194;
            }
            case 8194: {
                return 4097;
            }
            case 4099: {
                return 4099;
            }
        }
    }
    
    private void c(final e e) {
        if (e.mInnerView != null) {
            if (this.x == null) {
                this.x = new SparseArray();
            }
            else {
                this.x.clear();
            }
            e.mInnerView.saveHierarchyState(this.x);
            if (this.x.size() > 0) {
                e.mSavedViewState = this.x;
                this.x = null;
            }
        }
    }
    
    private void d(final int n) {
        this.a(n, 0, 0, false);
    }
    
    private void q() {
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); ++i) {
                this.m.get(i);
            }
        }
    }
    
    public final e a(final int n) {
        if (this.g != null) {
            for (int i = this.g.size() - 1; i >= 0; --i) {
                final e e = this.g.get(i);
                if (e != null && e.mFragmentId == n) {
                    return e;
                }
            }
        }
        Label_0056: {
            break Label_0056;
        }
        if (this.f != null) {
            for (int j = this.f.size() - 1; j >= 0; --j) {
                final e e = (e)this.f.get(j);
                if (e != null && e.mFragmentId == n) {
                    return e;
                }
            }
        }
        return null;
    }
    
    public final e a(final String s) {
        if (this.g != null && s != null) {
            for (int i = this.g.size() - 1; i >= 0; --i) {
                final e e = this.g.get(i);
                if (e != null && s.equals(e.mTag)) {
                    return e;
                }
            }
        }
        Label_0063: {
            break Label_0063;
        }
        if (this.f != null && s != null) {
            for (int j = this.f.size() - 1; j >= 0; --j) {
                final e e = (e)this.f.get(j);
                if (e != null && s.equals(e.mTag)) {
                    return e;
                }
            }
        }
        return null;
    }
    
    final void a(final int n, final int n2, final int n3, final boolean b) {
        if (this.o == null && n != 0) {
            throw new IllegalStateException("No activity");
        }
        if (b || this.n != n) {
            this.n = n;
            if (this.f != null) {
                int i = 0;
                boolean b2 = false;
            Label_0116_Outer:
                while (i < this.f.size()) {
                    final e e = this.f.get(i);
                    while (true) {
                        Label_0170: {
                            if (e == null) {
                                break Label_0170;
                            }
                            this.a(e, n, n2, n3, false);
                            if (e.mLoaderManager == null) {
                                break Label_0170;
                            }
                            final boolean b3 = b2 | e.mLoaderManager.a();
                            ++i;
                            b2 = b3;
                            continue Label_0116_Outer;
                        }
                        final boolean b3 = b2;
                        continue;
                    }
                }
                if (!b2) {
                    this.b();
                }
                if (this.r && this.o != null && this.n == 5) {
                    this.o.a();
                    this.r = false;
                }
            }
        }
    }
    
    public final void a(final Configuration configuration) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); ++i) {
                final e e = this.g.get(i);
                if (e != null) {
                    e.performConfigurationChanged(configuration);
                }
            }
        }
    }
    
    final void a(final Parcelable parcelable, final ArrayList list) {
        if (parcelable != null) {
            final r r = (r)parcelable;
            if (r.a != null) {
                if (list != null) {
                    for (int i = 0; i < list.size(); ++i) {
                        final e e = list.get(i);
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "restoreAllState: re-attaching retained " + e);
                        }
                        final t t = r.a[e.mIndex];
                        t.k = e;
                        e.mSavedViewState = null;
                        e.mBackStackNesting = 0;
                        e.mInLayout = false;
                        e.mAdded = false;
                        e.mTarget = null;
                        if (t.j != null) {
                            t.j.setClassLoader(this.o.getClassLoader());
                            e.mSavedViewState = t.j.getSparseParcelableArray("android:view_state");
                        }
                    }
                }
                this.f = new ArrayList(r.a.length);
                if (this.h != null) {
                    this.h.clear();
                }
                for (int j = 0; j < r.a.length; ++j) {
                    final t t2 = r.a[j];
                    if (t2 != null) {
                        final e a = t2.a(this.o, this.q);
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "restoreAllState: active #" + j + ": " + a);
                        }
                        this.f.add(a);
                        t2.k = null;
                    }
                    else {
                        this.f.add(null);
                        if (this.h == null) {
                            this.h = new ArrayList();
                        }
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + j);
                        }
                        this.h.add(j);
                    }
                }
                if (list != null) {
                    for (int k = 0; k < list.size(); ++k) {
                        final e obj = list.get(k);
                        if (obj.mTargetIndex >= 0) {
                            if (obj.mTargetIndex < this.f.size()) {
                                obj.mTarget = (e)this.f.get(obj.mTargetIndex);
                            }
                            else {
                                Log.w("FragmentManager", "Re-attaching retained fragment " + obj + " target no longer exists: " + obj.mTargetIndex);
                                obj.mTarget = null;
                            }
                        }
                    }
                }
                if (r.b != null) {
                    this.g = new ArrayList(r.b.length);
                    for (int l = 0; l < r.b.length; ++l) {
                        final e e2 = this.f.get(r.b[l]);
                        if (e2 == null) {
                            this.a(new IllegalStateException("No instantiated fragment for index #" + r.b[l]));
                        }
                        e2.mAdded = true;
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "restoreAllState: added #" + l + ": " + e2);
                        }
                        if (this.g.contains(e2)) {
                            throw new IllegalStateException("Already added!");
                        }
                        this.g.add(e2);
                    }
                }
                else {
                    this.g = null;
                }
                if (r.c == null) {
                    this.i = null;
                    return;
                }
                this.i = new ArrayList(r.c.length);
                for (int m = 0; m < r.c.length; ++m) {
                    final a a2 = r.c[m].a(this);
                    if (c.m.x.a.gv.o.a) {
                        Log.v("FragmentManager", "restoreAllState: back stack #" + m + " (index " + a2.o + "): " + a2);
                        a2.a("  ", new PrintWriter(new aj("FragmentManager")), false);
                    }
                    this.i.add(a2);
                    if (a2.o >= 0) {
                        this.a(a2.o, a2);
                    }
                }
            }
        }
    }
    
    final void a(final a e) {
        if (this.i == null) {
            this.i = new ArrayList();
        }
        this.i.add(e);
        this.q();
    }
    
    public final void a(final e e) {
        if (e.mDeferStart) {
            if (!this.e) {
                e.mDeferStart = false;
                this.a(e, this.n, 0, 0, false);
                return;
            }
            this.v = true;
        }
    }
    
    public final void a(final e e, final int n, final int n2) {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "remove: " + e + " nesting=" + e.mBackStackNesting);
        }
        boolean b;
        if (!e.isInBackStack()) {
            b = true;
        }
        else {
            b = false;
        }
        if (!e.mDetached || b) {
            if (this.g != null) {
                this.g.remove(e);
            }
            if (e.mHasMenu && e.mMenuVisible) {
                this.r = true;
            }
            e.mAdded = false;
            e.mRemoving = true;
            int n3;
            if (b) {
                n3 = 0;
            }
            else {
                n3 = 1;
            }
            this.a(e, n3, n, n2, false);
        }
    }
    
    final void a(final e obj, final int n, final int n2, final int n3, final boolean b) {
        int mState;
        if ((!obj.mAdded || obj.mDetached) && n > 1) {
            mState = 1;
        }
        else {
            mState = n;
        }
        if (obj.mRemoving && mState > obj.mState) {
            mState = obj.mState;
        }
        int n4;
        if (obj.mDeferStart && obj.mState < 4 && mState > 3) {
            n4 = 3;
        }
        else {
            n4 = mState;
        }
        int mState2 = 0;
        Label_0160: {
            Label_0156: {
                if (obj.mState < n4) {
                    if (obj.mFromLayout && !obj.mInLayout) {
                        return;
                    }
                    if (obj.mAnimatingAway != null) {
                        obj.mAnimatingAway = null;
                        this.a(obj, obj.mStateAfterAnimating, 0, 0, true);
                    }
                    Label_0847: {
                        Label_0808: {
                            int n6 = 0;
                            switch (obj.mState) {
                                default: {
                                    break Label_0156;
                                }
                                case 0: {
                                    if (c.m.x.a.gv.o.a) {
                                        Log.v("FragmentManager", "moveto CREATED: " + obj);
                                    }
                                    while (true) {
                                        Label_1557: {
                                            if (obj.mSavedFragmentState == null) {
                                                break Label_1557;
                                            }
                                            obj.mSavedViewState = obj.mSavedFragmentState.getSparseParcelableArray("android:view_state");
                                            obj.mTarget = this.a(obj.mSavedFragmentState, "android:target_state");
                                            if (obj.mTarget != null) {
                                                obj.mTargetRequestCode = obj.mSavedFragmentState.getInt("android:target_req_state", 0);
                                            }
                                            if (obj.mUserVisibleHint = obj.mSavedFragmentState.getBoolean("android:user_visible_hint", true)) {
                                                break Label_1557;
                                            }
                                            obj.mDeferStart = true;
                                            if (n4 <= 3) {
                                                break Label_1557;
                                            }
                                            final int n5 = 3;
                                            obj.mActivity = this.o;
                                            obj.mParentFragment = this.q;
                                            o mFragmentManager;
                                            if (this.q != null) {
                                                mFragmentManager = this.q.mChildFragmentManager;
                                            }
                                            else {
                                                mFragmentManager = this.o.b;
                                            }
                                            obj.mFragmentManager = mFragmentManager;
                                            obj.mCalled = false;
                                            obj.onAttach(this.o);
                                            if (!obj.mCalled) {
                                                throw new ab("Fragment " + obj + " did not call through to super.onAttach()");
                                            }
                                            if (obj.mParentFragment == null) {
                                                final j o = this.o;
                                                c.m.x.a.gv.j.b();
                                            }
                                            if (!obj.mRetaining) {
                                                obj.performCreate(obj.mSavedFragmentState);
                                            }
                                            obj.mRetaining = false;
                                            if (obj.mFromLayout) {
                                                obj.mView = obj.performCreateView(obj.getLayoutInflater(obj.mSavedFragmentState), null, obj.mSavedFragmentState);
                                                if (obj.mView != null) {
                                                    obj.mInnerView = obj.mView;
                                                    obj.mView = (View)aa.a(obj.mView);
                                                    if (obj.mHidden) {
                                                        obj.mView.setVisibility(8);
                                                    }
                                                    obj.onViewCreated(obj.mView, obj.mSavedFragmentState);
                                                    n6 = n5;
                                                    break;
                                                }
                                                obj.mInnerView = null;
                                            }
                                            n6 = n5;
                                            break;
                                        }
                                        final int n5 = n4;
                                        continue;
                                    }
                                }
                                case 4: {
                                    mState2 = n4;
                                    break Label_0847;
                                }
                                case 2:
                                case 3: {
                                    mState2 = n4;
                                    break Label_0808;
                                }
                                case 1: {
                                    n6 = n4;
                                    break;
                                }
                            }
                            if (n6 > 1) {
                                if (c.m.x.a.gv.o.a) {
                                    Log.v("FragmentManager", "moveto ACTIVITY_CREATED: " + obj);
                                }
                                if (!obj.mFromLayout) {
                                    ViewGroup mContainer;
                                    if (obj.mContainerId != 0) {
                                        mContainer = (ViewGroup)this.p.a(obj.mContainerId);
                                        if (mContainer == null && !obj.mRestored) {
                                            this.a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(obj.mContainerId) + " (" + obj.getResources().getResourceName(obj.mContainerId) + ") for fragment " + obj));
                                        }
                                    }
                                    else {
                                        mContainer = null;
                                    }
                                    obj.mContainer = mContainer;
                                    obj.mView = obj.performCreateView(obj.getLayoutInflater(obj.mSavedFragmentState), mContainer, obj.mSavedFragmentState);
                                    if (obj.mView != null) {
                                        obj.mInnerView = obj.mView;
                                        obj.mView = (View)aa.a(obj.mView);
                                        if (mContainer != null) {
                                            final Animation a = this.a(obj, n2, true, n3);
                                            if (a != null) {
                                                obj.mView.startAnimation(a);
                                            }
                                            mContainer.addView(obj.mView);
                                        }
                                        if (obj.mHidden) {
                                            obj.mView.setVisibility(8);
                                        }
                                        obj.onViewCreated(obj.mView, obj.mSavedFragmentState);
                                    }
                                    else {
                                        obj.mInnerView = null;
                                    }
                                }
                                obj.performActivityCreated(obj.mSavedFragmentState);
                                if (obj.mView != null) {
                                    obj.restoreViewState(obj.mSavedFragmentState);
                                }
                                obj.mSavedFragmentState = null;
                            }
                            mState2 = n6;
                        }
                        if (mState2 > 3) {
                            if (c.m.x.a.gv.o.a) {
                                Log.v("FragmentManager", "moveto STARTED: " + obj);
                            }
                            obj.performStart();
                        }
                    }
                    if (mState2 > 4) {
                        if (c.m.x.a.gv.o.a) {
                            Log.v("FragmentManager", "moveto RESUMED: " + obj);
                        }
                        obj.mResumed = true;
                        obj.performResume();
                        obj.mSavedFragmentState = null;
                        obj.mSavedViewState = null;
                    }
                    break Label_0160;
                }
                else if (obj.mState > n4) {
                    switch (obj.mState) {
                        case 3: {
                            if (n4 < 3) {
                                if (c.m.x.a.gv.o.a) {
                                    Log.v("FragmentManager", "movefrom STOPPED: " + obj);
                                }
                                obj.performReallyStop();
                            }
                        }
                        case 2: {
                            if (n4 < 2) {
                                if (c.m.x.a.gv.o.a) {
                                    Log.v("FragmentManager", "movefrom ACTIVITY_CREATED: " + obj);
                                }
                                if (obj.mView != null && !this.o.isFinishing() && obj.mSavedViewState == null) {
                                    this.c(obj);
                                }
                                obj.performDestroyView();
                                if (obj.mView != null && obj.mContainer != null) {
                                    Animation a2;
                                    if (this.n > 0 && !this.t) {
                                        a2 = this.a(obj, n2, false, n3);
                                    }
                                    else {
                                        a2 = null;
                                    }
                                    if (a2 != null) {
                                        obj.mAnimatingAway = obj.mView;
                                        obj.mStateAfterAnimating = n4;
                                        a2.setAnimationListener((Animation$AnimationListener)new q(this, obj));
                                        obj.mView.startAnimation(a2);
                                    }
                                    obj.mContainer.removeView(obj.mView);
                                }
                                obj.mContainer = null;
                                obj.mView = null;
                                obj.mInnerView = null;
                            }
                        }
                        case 1: {
                            if (n4 > 0) {
                                break;
                            }
                            if (this.t && obj.mAnimatingAway != null) {
                                final View mAnimatingAway = obj.mAnimatingAway;
                                obj.mAnimatingAway = null;
                                mAnimatingAway.clearAnimation();
                            }
                            if (obj.mAnimatingAway != null) {
                                obj.mStateAfterAnimating = n4;
                                mState2 = 1;
                                break Label_0160;
                            }
                            if (c.m.x.a.gv.o.a) {
                                Log.v("FragmentManager", "movefrom CREATED: " + obj);
                            }
                            if (!obj.mRetaining) {
                                obj.performDestroy();
                            }
                            obj.mCalled = false;
                            obj.onDetach();
                            if (!obj.mCalled) {
                                throw new ab("Fragment " + obj + " did not call through to super.onDetach()");
                            }
                            if (b) {
                                break;
                            }
                            if (!obj.mRetaining) {
                                if (obj.mIndex >= 0) {
                                    if (c.m.x.a.gv.o.a) {
                                        Log.v("FragmentManager", "Freeing fragment index " + obj);
                                    }
                                    this.f.set(obj.mIndex, null);
                                    if (this.h == null) {
                                        this.h = new ArrayList();
                                    }
                                    this.h.add(obj.mIndex);
                                    this.o.a(obj.mWho);
                                    obj.initState();
                                }
                                mState2 = n4;
                                break Label_0160;
                            }
                            obj.mActivity = null;
                            obj.mFragmentManager = null;
                            break;
                        }
                        case 5: {
                            if (n4 < 5) {
                                if (c.m.x.a.gv.o.a) {
                                    Log.v("FragmentManager", "movefrom RESUMED: " + obj);
                                }
                                obj.performPause();
                                obj.mResumed = false;
                            }
                        }
                        case 4: {
                            if (n4 < 4) {
                                if (c.m.x.a.gv.o.a) {
                                    Log.v("FragmentManager", "movefrom STARTED: " + obj);
                                }
                                obj.performStop();
                            }
                        }
                    }
                }
            }
            mState2 = n4;
        }
        obj.mState = mState2;
    }
    
    public final void a(final e e, final boolean b) {
        if (this.g == null) {
            this.g = new ArrayList();
        }
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "add: " + e);
        }
        if (e.mIndex < 0) {
            if (this.h == null || this.h.size() <= 0) {
                if (this.f == null) {
                    this.f = new ArrayList();
                }
                e.setIndex(this.f.size(), this.q);
                this.f.add(e);
            }
            else {
                e.setIndex(this.h.remove(this.h.size() - 1), this.q);
                this.f.set(e.mIndex, e);
            }
            if (c.m.x.a.gv.o.a) {
                Log.v("FragmentManager", "Allocated fragment index " + e);
            }
        }
        if (!e.mDetached) {
            if (this.g.contains(e)) {
                throw new IllegalStateException("Fragment already added: " + e);
            }
            this.g.add(e);
            e.mAdded = true;
            e.mRemoving = false;
            if (e.mHasMenu && e.mMenuVisible) {
                this.r = true;
            }
            if (b) {
                this.b(e);
            }
        }
    }
    
    public final void a(final j o, final m p3, final e q) {
        if (this.o != null) {
            throw new IllegalStateException("Already attached");
        }
        this.o = o;
        this.p = p3;
        this.q = q;
    }
    
    public final void a(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final String string = s + "    ";
        if (this.f != null) {
            final int size = this.f.size();
            if (size > 0) {
                printWriter.print(s);
                printWriter.print("Active Fragments in ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(":");
                for (int i = 0; i < size; ++i) {
                    final e x = this.f.get(i);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(i);
                    printWriter.print(": ");
                    printWriter.println(x);
                    if (x != null) {
                        x.dump(string, fileDescriptor, printWriter, array);
                    }
                }
            }
        }
        if (this.g != null) {
            final int size2 = this.g.size();
            if (size2 > 0) {
                printWriter.print(s);
                printWriter.println("Added Fragments:");
                for (int j = 0; j < size2; ++j) {
                    final e e = this.g.get(j);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(j);
                    printWriter.print(": ");
                    printWriter.println(e.toString());
                }
            }
        }
        if (this.j != null) {
            final int size3 = this.j.size();
            if (size3 > 0) {
                printWriter.print(s);
                printWriter.println("Fragments Created Menus:");
                for (int k = 0; k < size3; ++k) {
                    final e e2 = this.j.get(k);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(k);
                    printWriter.print(": ");
                    printWriter.println(e2.toString());
                }
            }
        }
        if (this.i != null) {
            final int size4 = this.i.size();
            if (size4 > 0) {
                printWriter.print(s);
                printWriter.println("Back Stack:");
                for (int l = 0; l < size4; ++l) {
                    final a a = this.i.get(l);
                    printWriter.print(s);
                    printWriter.print("  #");
                    printWriter.print(l);
                    printWriter.print(": ");
                    printWriter.println(a.toString());
                    a.a(string, printWriter);
                }
            }
        }
        synchronized (this) {
            if (this.k != null) {
                final int size5 = this.k.size();
                if (size5 > 0) {
                    printWriter.print(s);
                    printWriter.println("Back Stack Indices:");
                    for (int n = 0; n < size5; ++n) {
                        final a x2 = this.k.get(n);
                        printWriter.print(s);
                        printWriter.print("  #");
                        printWriter.print(n);
                        printWriter.print(": ");
                        printWriter.println(x2);
                    }
                }
            }
            if (this.l != null && this.l.size() > 0) {
                printWriter.print(s);
                printWriter.print("mAvailBackStackIndices: ");
                printWriter.println(Arrays.toString(this.l.toArray()));
            }
            // monitorexit(this)
            if (this.c != null) {
                final int size6 = this.c.size();
                if (size6 > 0) {
                    printWriter.print(s);
                    printWriter.println("Pending Actions:");
                    for (int n2 = 0; n2 < size6; ++n2) {
                        final Runnable x3 = this.c.get(n2);
                        printWriter.print(s);
                        printWriter.print("  #");
                        printWriter.print(n2);
                        printWriter.print(": ");
                        printWriter.println(x3);
                    }
                }
            }
        }
        printWriter.print(s);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(s);
        printWriter.print("  mActivity=");
        printWriter.println(this.o);
        printWriter.print(s);
        printWriter.print("  mContainer=");
        printWriter.println(this.p);
        if (this.q != null) {
            printWriter.print(s);
            printWriter.print("  mParent=");
            printWriter.println(this.q);
        }
        printWriter.print(s);
        printWriter.print("  mCurState=");
        printWriter.print(this.n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.s);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.t);
        if (this.r) {
            printWriter.print(s);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.r);
        }
        if (this.u != null) {
            printWriter.print(s);
            printWriter.print("  mNoTransactionsBecause=");
            printWriter.println(this.u);
        }
        if (this.h != null && this.h.size() > 0) {
            printWriter.print(s);
            printWriter.print("  mAvailIndices: ");
            printWriter.println(Arrays.toString(this.h.toArray()));
        }
    }
    
    public final boolean a() {
        if (this.s) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.u != null) {
            throw new IllegalStateException("Can not perform this action inside of " + this.u);
        }
        this.c();
        final Handler a = this.o.a;
        if (this.i == null) {
            return false;
        }
        final int index = this.i.size() - 1;
        if (index < 0) {
            return false;
        }
        ((a)this.i.remove(index)).a();
        this.q();
        return true;
    }
    
    public final boolean a(final Menu menu) {
        int i = 0;
        if (this.g != null) {
            boolean b = false;
            while (i < this.g.size()) {
                final e e = this.g.get(i);
                final boolean b2 = (e != null && e.performPrepareOptionsMenu(menu)) || b;
                ++i;
                b = b2;
            }
            return b;
        }
        return false;
    }
    
    public final boolean a(final Menu menu, final MenuInflater menuInflater) {
        ArrayList<e> j;
        boolean b3;
        if (this.g != null) {
            int i = 0;
            ArrayList<e> list = null;
            boolean b = false;
            while (i < this.g.size()) {
                final e e = this.g.get(i);
                if (e != null && e.performCreateOptionsMenu(menu, menuInflater)) {
                    b = true;
                    if (list == null) {
                        list = new ArrayList<e>();
                    }
                    list.add(e);
                }
                final ArrayList<e> list2 = list;
                final boolean b2 = b;
                ++i;
                b = b2;
                list = list2;
            }
            j = list;
            b3 = b;
        }
        else {
            j = null;
            b3 = false;
        }
        if (this.j != null) {
            for (int k = 0; k < this.j.size(); ++k) {
                final e o = this.j.get(k);
                if (j == null || !j.contains(o)) {
                    o.onDestroyOptionsMenu();
                }
            }
        }
        this.j = j;
        return b3;
    }
    
    public final boolean a(final MenuItem menuItem) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); ++i) {
                final e e = this.g.get(i);
                if (e != null && e.performOptionsItemSelected(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public final e b(final String s) {
        if (this.f != null && s != null) {
            for (int i = this.f.size() - 1; i >= 0; --i) {
                final e e = this.f.get(i);
                if (e != null) {
                    final e fragmentByWho = e.findFragmentByWho(s);
                    if (fragmentByWho != null) {
                        return fragmentByWho;
                    }
                }
            }
        }
        return null;
    }
    
    final void b() {
        if (this.f != null) {
            for (int i = 0; i < this.f.size(); ++i) {
                final e e = this.f.get(i);
                if (e != null) {
                    this.a(e);
                }
            }
        }
    }
    
    public final void b(final int i) {
        synchronized (this) {
            this.k.set(i, null);
            if (this.l == null) {
                this.l = new ArrayList();
            }
            if (c.m.x.a.gv.o.a) {
                Log.v("FragmentManager", "Freeing back stack index " + i);
            }
            this.l.add(i);
        }
    }
    
    public final void b(final Menu menu) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); ++i) {
                final e e = this.g.get(i);
                if (e != null) {
                    e.performOptionsMenuClosed(menu);
                }
            }
        }
    }
    
    final void b(final e e) {
        this.a(e, this.n, 0, 0, false);
    }
    
    public final void b(final e obj, final int n, final int n2) {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "hide: " + obj);
        }
        if (!obj.mHidden) {
            obj.mHidden = true;
            if (obj.mView != null) {
                final Animation a = this.a(obj, n, true, n2);
                if (a != null) {
                    obj.mView.startAnimation(a);
                }
                obj.mView.setVisibility(8);
            }
            if (obj.mAdded && obj.mHasMenu && obj.mMenuVisible) {
                this.r = true;
            }
            obj.onHiddenChanged(true);
        }
    }
    
    public final boolean b(final MenuItem menuItem) {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); ++i) {
                final e e = this.g.get(i);
                if (e != null && e.performContextItemSelected(menuItem)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    public final void c(final e obj, final int n, final int n2) {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "show: " + obj);
        }
        if (obj.mHidden) {
            obj.mHidden = false;
            if (obj.mView != null) {
                final Animation a = this.a(obj, n, true, n2);
                if (a != null) {
                    obj.mView.startAnimation(a);
                }
                obj.mView.setVisibility(0);
            }
            if (obj.mAdded && obj.mHasMenu && obj.mMenuVisible) {
                this.r = true;
            }
            obj.onHiddenChanged(false);
        }
    }
    
    public final boolean c() {
        if (this.e) {
            throw new IllegalStateException("Recursive entry to executePendingTransactions");
        }
        if (Looper.myLooper() != this.o.a.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        boolean b = false;
    Label_0130_Outer:
        while (true) {
            boolean b2 = false;
        Label_0266:
            while (true) {
                Label_0282: {
                    synchronized (this) {
                        if (this.c == null || this.c.size() == 0) {
                            // monitorexit(this)
                            if (this.v) {
                                int i = 0;
                                b2 = false;
                                while (i < this.f.size()) {
                                    final e e = this.f.get(i);
                                    if (e == null || e.mLoaderManager == null) {
                                        break Label_0282;
                                    }
                                    final boolean b3 = b2 | e.mLoaderManager.a();
                                    ++i;
                                    b2 = b3;
                                }
                                break Label_0266;
                            }
                            break;
                        }
                        else {
                            final int size = this.c.size();
                            if (this.d == null || this.d.length < size) {
                                this.d = new Runnable[size];
                            }
                            this.c.toArray(this.d);
                            this.c.clear();
                            this.o.a.removeCallbacks(this.y);
                            // monitorexit(this)
                            this.e = true;
                            for (int j = 0; j < size; ++j) {
                                this.d[j].run();
                                this.d[j] = null;
                            }
                        }
                    }
                    this.e = false;
                    b = true;
                    continue Label_0130_Outer;
                }
                final boolean b3 = b2;
                continue;
            }
            if (!b2) {
                this.v = false;
                this.b();
                break;
            }
            break;
        }
        return b;
    }
    
    final ArrayList d() {
        final ArrayList f = this.f;
        ArrayList<e> list = null;
        if (f != null) {
            int i = 0;
            ArrayList<e> list2 = null;
            while (i < this.f.size()) {
                final e e = this.f.get(i);
                if (e != null && e.mRetainInstance) {
                    if (list2 == null) {
                        list2 = new ArrayList<e>();
                    }
                    list2.add(e);
                    e.mRetaining = true;
                    int mIndex;
                    if (e.mTarget != null) {
                        mIndex = e.mTarget.mIndex;
                    }
                    else {
                        mIndex = -1;
                    }
                    e.mTargetIndex = mIndex;
                    if (c.m.x.a.gv.o.a) {
                        Log.v("FragmentManager", "retainNonConfig: keeping retained " + e);
                    }
                }
                final ArrayList<e> list3 = list2;
                ++i;
                list2 = list3;
            }
            list = list2;
        }
        return list;
    }
    
    public final void d(final e o, final int n, final int n2) {
        if (o.a) {
            Log.v("FragmentManager", "detach: " + o);
        }
        if (!o.mDetached) {
            o.mDetached = true;
            if (o.mAdded) {
                if (this.g != null) {
                    if (o.a) {
                        Log.v("FragmentManager", "remove from detach: " + o);
                    }
                    this.g.remove(o);
                }
                if (o.mHasMenu && o.mMenuVisible) {
                    this.r = true;
                }
                this.a(o, 1, n, n2, o.mAdded = false);
            }
        }
    }
    
    final Parcelable e() {
        this.c();
        if (c.m.x.a.gv.o.b) {
            this.s = true;
        }
        if (this.f == null || this.f.size() <= 0) {
            return null;
        }
        final int size = this.f.size();
        final t[] a = new t[size];
        int i = 0;
        int n = 0;
        while (i < size) {
            final e obj = this.f.get(i);
            if (obj != null) {
                if (obj.mIndex < 0) {
                    this.a(new IllegalStateException("Failure saving state: active " + obj + " has cleared index: " + obj.mIndex));
                }
                n = 1;
                final t t = new t(obj);
                a[i] = t;
                if (obj.mState > 0 && t.j == null) {
                    if (this.w == null) {
                        this.w = new Bundle();
                    }
                    obj.performSaveInstanceState(this.w);
                    final boolean empty = this.w.isEmpty();
                    Bundle w = null;
                    if (!empty) {
                        w = this.w;
                        this.w = null;
                    }
                    if (obj.mView != null) {
                        this.c(obj);
                    }
                    if (obj.mSavedViewState != null) {
                        if (w == null) {
                            w = new Bundle();
                        }
                        w.putSparseParcelableArray("android:view_state", obj.mSavedViewState);
                    }
                    if (!obj.mUserVisibleHint) {
                        if (w == null) {
                            w = new Bundle();
                        }
                        w.putBoolean("android:user_visible_hint", obj.mUserVisibleHint);
                    }
                    t.j = w;
                    if (obj.mTarget != null) {
                        if (obj.mTarget.mIndex < 0) {
                            this.a(new IllegalStateException("Failure saving state: " + obj + " has target not in fragment manager: " + obj.mTarget));
                        }
                        if (t.j == null) {
                            t.j = new Bundle();
                        }
                        final Bundle j = t.j;
                        final e mTarget = obj.mTarget;
                        if (mTarget.mIndex < 0) {
                            this.a(new IllegalStateException("Fragment " + mTarget + " is not currently in the FragmentManager"));
                        }
                        j.putInt("android:target_state", mTarget.mIndex);
                        if (obj.mTargetRequestCode != 0) {
                            t.j.putInt("android:target_req_state", obj.mTargetRequestCode);
                        }
                    }
                }
                else {
                    t.j = obj.mSavedFragmentState;
                }
                if (c.m.x.a.gv.o.a) {
                    Log.v("FragmentManager", "Saved state of " + obj + ": " + t.j);
                }
            }
            final int n2 = n;
            ++i;
            n = n2;
        }
        if (n == 0) {
            if (c.m.x.a.gv.o.a) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        while (true) {
            Label_0912: {
                if (this.g == null) {
                    break Label_0912;
                }
                final int size2 = this.g.size();
                if (size2 <= 0) {
                    break Label_0912;
                }
                final int[] array = new int[size2];
                for (int k = 0; k < size2; ++k) {
                    array[k] = ((e)this.g.get(k)).mIndex;
                    if (array[k] < 0) {
                        this.a(new IllegalStateException("Failure saving state: active " + this.g.get(k) + " has cleared index: " + array[k]));
                    }
                    if (c.m.x.a.gv.o.a) {
                        Log.v("FragmentManager", "saveAllState: adding fragment #" + k + ": " + this.g.get(k));
                    }
                }
                final int[] b = array;
                while (true) {
                    Label_0906: {
                        if (this.i == null) {
                            break Label_0906;
                        }
                        final int size3 = this.i.size();
                        if (size3 <= 0) {
                            break Label_0906;
                        }
                        final c[] array2 = new c[size3];
                        for (int l = 0; l < size3; ++l) {
                            array2[l] = new c((a)this.i.get(l));
                            if (c.m.x.a.gv.o.a) {
                                Log.v("FragmentManager", "saveAllState: adding back stack #" + l + ": " + this.i.get(l));
                            }
                        }
                        final c[] c = array2;
                        final r r = new r();
                        r.a = a;
                        r.b = b;
                        r.c = c;
                        return (Parcelable)r;
                    }
                    final c[] c = null;
                    continue;
                }
            }
            final int[] b = null;
            continue;
        }
    }
    
    public final void e(final e e, final int n, final int n2) {
        if (c.m.x.a.gv.o.a) {
            Log.v("FragmentManager", "attach: " + e);
        }
        if (e.mDetached) {
            e.mDetached = false;
            if (!e.mAdded) {
                if (this.g == null) {
                    this.g = new ArrayList();
                }
                if (this.g.contains(e)) {
                    throw new IllegalStateException("Fragment already added: " + e);
                }
                if (c.m.x.a.gv.o.a) {
                    Log.v("FragmentManager", "add from attach: " + e);
                }
                this.g.add(e);
                e.mAdded = true;
                if (e.mHasMenu && e.mMenuVisible) {
                    this.r = true;
                }
                this.a(e, this.n, n, n2, false);
            }
        }
    }
    
    public final void f() {
        this.s = false;
    }
    
    public final void g() {
        this.s = false;
        this.d(1);
    }
    
    public final void h() {
        this.s = false;
        this.d(2);
    }
    
    public final void i() {
        this.s = false;
        this.d(4);
    }
    
    public final void j() {
        this.s = false;
        this.d(5);
    }
    
    public final void k() {
        this.d(4);
    }
    
    public final void l() {
        this.s = true;
        this.d(3);
    }
    
    public final void m() {
        this.d(2);
    }
    
    public final void n() {
        this.d(1);
    }
    
    public final void o() {
        this.t = true;
        this.c();
        this.d(0);
        this.o = null;
        this.p = null;
        this.q = null;
    }
    
    public final void p() {
        if (this.g != null) {
            for (int i = 0; i < this.g.size(); ++i) {
                final e e = this.g.get(i);
                if (e != null) {
                    e.performLowMemory();
                }
            }
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        if (this.q != null) {
            ai.a(this.q, sb);
        }
        else {
            ai.a(this.o, sb);
        }
        sb.append("}}");
        return sb.toString();
    }
}
