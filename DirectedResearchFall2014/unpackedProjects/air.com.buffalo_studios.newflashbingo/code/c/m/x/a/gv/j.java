package c.m.x.a.gv;

import android.app.*;
import java.io.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import android.view.*;

public final class j extends Activity
{
    final Handler a;
    final o b;
    final m c;
    boolean d;
    boolean e;
    boolean f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    boolean k;
    at<String, y> l;
    y m;
    
    private static String a(final View view) {
        final StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        Resources resources;
        int id = 0;
        String resourcePackageName;
        String resourceTypeName;
        String resourceEntryName;
        char c = '\0';
        char c2 = '\0';
        char c3 = '\0';
        char c4 = '\0';
        char c5 = '\0';
        char c6 = '\0';
        char c7 = '\0';
        char c8 = '\0';
        char c9 = '\0';
        char c10 = '\0';
        Label_0493_Outer:Label_0612_Outer:
        while (true) {
        Label_0605_Outer:
            while (true) {
                while (true) {
                    Label_0525_Outer:Label_0549_Outer:Label_0577_Outer:Label_0591_Outer:
                    while (true) {
                        Label_0275: {
                            while (true) {
                                Label_0257: {
                                Label_0584_Outer:
                                    while (true) {
                                        Label_0239: {
                                            while (true) {
                                                Label_0214: {
                                                    Label_0556_Outer:Label_0563_Outer:
                                                    while (true) {
                                                        Label_0196: {
                                                            while (true) {
                                                                Label_0178: {
                                                                    while (true) {
                                                                        Label_0160: {
                                                                            while (true) {
                                                                                Label_0142: {
                                                                                    while (true) {
                                                                                        Label_0124: {
                                                                                            while (true) {
                                                                                                Label_0106: {
                                                                                                    while (true) {
                                                                                                        while (true) {
                                                                                                            while (true) {
                                                                                                                switch (view.getVisibility()) {
                                                                                                                    default: {
                                                                                                                        sb.append('.');
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    case 0: {
                                                                                                                        Label_0505: {
                                                                                                                            break Label_0505;
                                                                                                                            try {
                                                                                                                                resourcePackageName = resources.getResourcePackageName(id);
                                                                                                                                while (true) {
                                                                                                                                    resourceTypeName = resources.getResourceTypeName(id);
                                                                                                                                    resourceEntryName = resources.getResourceEntryName(id);
                                                                                                                                    sb.append(" ");
                                                                                                                                    sb.append(resourcePackageName);
                                                                                                                                    sb.append(":");
                                                                                                                                    sb.append(resourceTypeName);
                                                                                                                                    sb.append("/");
                                                                                                                                    sb.append(resourceEntryName);
                                                                                                                                    sb.append("}");
                                                                                                                                    return sb.toString();
                                                                                                                                    sb.append('G');
                                                                                                                                    break;
                                                                                                                                    c = 'D';
                                                                                                                                    break Label_0142;
                                                                                                                                    c2 = '.';
                                                                                                                                    break Label_0214;
                                                                                                                                    c3 = '.';
                                                                                                                                    break Label_0257;
                                                                                                                                    c4 = '.';
                                                                                                                                    break Label_0106;
                                                                                                                                    resourcePackageName = "android";
                                                                                                                                    continue Label_0493_Outer;
                                                                                                                                    c5 = '.';
                                                                                                                                    break Label_0275;
                                                                                                                                    sb.append('I');
                                                                                                                                    break;
                                                                                                                                    c6 = '.';
                                                                                                                                    break Label_0160;
                                                                                                                                    c7 = '.';
                                                                                                                                    break Label_0178;
                                                                                                                                    resourcePackageName = "app";
                                                                                                                                    continue Label_0493_Outer;
                                                                                                                                }
                                                                                                                                sb.append('V');
                                                                                                                                break;
                                                                                                                                c8 = '.';
                                                                                                                                break Label_0124;
                                                                                                                                c9 = '.';
                                                                                                                                break Label_0239;
                                                                                                                                c10 = '.';
                                                                                                                                break Label_0196;
                                                                                                                            }
                                                                                                                            catch (Resources$NotFoundException ex) {
                                                                                                                                continue Label_0525_Outer;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    case 4: {
                                                                                                                        continue Label_0556_Outer;
                                                                                                                    }
                                                                                                                    case 8: {
                                                                                                                        continue Label_0549_Outer;
                                                                                                                    }
                                                                                                                }
                                                                                                                break;
                                                                                                            }
                                                                                                            break;
                                                                                                        }
                                                                                                        if (!view.isFocusable()) {
                                                                                                            continue Label_0612_Outer;
                                                                                                        }
                                                                                                        break;
                                                                                                    }
                                                                                                    c4 = 'F';
                                                                                                }
                                                                                                sb.append(c4);
                                                                                                if (!view.isEnabled()) {
                                                                                                    continue Label_0584_Outer;
                                                                                                }
                                                                                                break;
                                                                                            }
                                                                                            c8 = 'E';
                                                                                        }
                                                                                        sb.append(c8);
                                                                                        if (!view.willNotDraw()) {
                                                                                            continue Label_0577_Outer;
                                                                                        }
                                                                                        break;
                                                                                    }
                                                                                    c = '.';
                                                                                }
                                                                                sb.append(c);
                                                                                if (!view.isHorizontalScrollBarEnabled()) {
                                                                                    continue Label_0563_Outer;
                                                                                }
                                                                                break;
                                                                            }
                                                                            c6 = 'H';
                                                                        }
                                                                        sb.append(c6);
                                                                        if (!view.isVerticalScrollBarEnabled()) {
                                                                            continue Label_0605_Outer;
                                                                        }
                                                                        break;
                                                                    }
                                                                    c7 = 'V';
                                                                }
                                                                sb.append(c7);
                                                                if (!view.isClickable()) {
                                                                    continue;
                                                                }
                                                                break;
                                                            }
                                                            c10 = 'C';
                                                        }
                                                        sb.append(c10);
                                                        if (!view.isLongClickable()) {
                                                            continue Label_0591_Outer;
                                                        }
                                                        break;
                                                    }
                                                    c2 = 'L';
                                                }
                                                sb.append(c2);
                                                sb.append(' ');
                                                if (!view.isFocused()) {
                                                    continue;
                                                }
                                                break;
                                            }
                                            c9 = 'F';
                                        }
                                        sb.append(c9);
                                        if (!view.isSelected()) {
                                            continue Label_0612_Outer;
                                        }
                                        break;
                                    }
                                    c3 = 'S';
                                }
                                sb.append(c3);
                                if (!view.isPressed()) {
                                    continue Label_0605_Outer;
                                }
                                break;
                            }
                            c5 = 'P';
                        }
                        sb.append(c5);
                        sb.append(' ');
                        sb.append(view.getLeft());
                        sb.append(',');
                        sb.append(view.getTop());
                        sb.append('-');
                        sb.append(view.getRight());
                        sb.append(',');
                        sb.append(view.getBottom());
                        id = view.getId();
                        if (id == -1) {
                            continue Label_0549_Outer;
                        }
                        sb.append(" #");
                        sb.append(Integer.toHexString(id));
                        resources = view.getResources();
                        if (id == 0 || resources == null) {
                            continue Label_0549_Outer;
                        }
                        break;
                    }
                    switch (0xFF000000 & id) {
                        default: {
                            continue Label_0493_Outer;
                        }
                        case 2130706432: {
                            continue;
                        }
                        case 16777216: {
                            continue Label_0605_Outer;
                        }
                    }
                    break;
                }
                break;
            }
            break;
        }
    }
    
    private void a(final String s, final PrintWriter printWriter, final View view) {
        printWriter.print(s);
        if (view == null) {
            printWriter.println("null");
        }
        else {
            printWriter.println(a(view));
            if (view instanceof ViewGroup) {
                final ViewGroup viewGroup = (ViewGroup)view;
                final int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    final String string = s + "  ";
                    for (int i = 0; i < childCount; ++i) {
                        this.a(string, printWriter, viewGroup.getChildAt(i));
                    }
                }
            }
        }
    }
    
    private void a(final boolean h) {
        if (!this.g) {
            this.g = true;
            this.h = h;
            this.a.removeMessages(1);
            if (this.k) {
                this.k = false;
                if (this.m != null) {
                    if (!this.h) {
                        this.m.c();
                    }
                    else {
                        this.m.d();
                    }
                }
            }
            this.b.m();
        }
    }
    
    public static void b() {
    }
    
    final y a(final String s, final boolean b, final boolean b2) {
        if (this.l == null) {
            this.l = new at<String, y>();
        }
        y y = this.l.get(s);
        if (y == null) {
            if (b2) {
                y = new y(s, this, b);
                this.l.put(s, y);
            }
            return y;
        }
        y.a(this);
        return y;
    }
    
    public final void a() {
        if (Build$VERSION.SDK_INT >= 11) {
            this.invalidateOptionsMenu();
            return;
        }
        this.i = true;
    }
    
    public final void a(final e e, final Intent intent, final int n) {
        if (n == -1) {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, (1 + e.mIndex << 16) + (0xFFFF & n));
    }
    
    final void a(final String s) {
        if (this.l != null) {
            final y y = this.l.get(s);
            if (y != null && !y.g) {
                y.h();
                this.l.remove(s);
            }
        }
    }
    
    public final void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final int sdk_INT = Build$VERSION.SDK_INT;
        printWriter.print(s);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        final String string = s + "  ";
        printWriter.print(string);
        printWriter.print("mCreated=");
        printWriter.print(this.d);
        printWriter.print("mResumed=");
        printWriter.print(this.e);
        printWriter.print(" mStopped=");
        printWriter.print(this.f);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.g);
        printWriter.print(string);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.k);
        if (this.m != null) {
            printWriter.print(s);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.m)));
            printWriter.println(":");
            this.m.a(s + "  ", fileDescriptor, printWriter, array);
        }
        this.b.a(s, fileDescriptor, printWriter, array);
        printWriter.print(s);
        printWriter.println("View Hierarchy:");
        this.a(s + "  ", printWriter, this.getWindow().getDecorView());
    }
    
    protected final void onActivityResult(final int n, final int n2, final Intent intent) {
        this.b.f();
        final int n3 = n >> 16;
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
            return;
        }
        final int index = n3 - 1;
        if (this.b.f == null || index < 0 || index >= this.b.f.size()) {
            Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(n));
            return;
        }
        final e e = this.b.f.get(index);
        if (e == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(n));
            return;
        }
        e.onActivityResult(0xFFFF & n, n2, intent);
    }
    
    public final void onBackPressed() {
        if (!this.b.a()) {
            this.finish();
        }
    }
    
    public final void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.b.a(configuration);
    }
    
    protected final void onCreate(final Bundle bundle) {
        this.b.a(this, this.c, null);
        if (this.getLayoutInflater().getFactory() == null) {
            this.getLayoutInflater().setFactory((LayoutInflater$Factory)this);
        }
        super.onCreate(bundle);
        final l l = (l)this.getLastNonConfigurationInstance();
        if (l != null) {
            this.l = l.e;
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            final o b = this.b;
            ArrayList<e> d;
            if (l != null) {
                d = l.d;
            }
            else {
                d = null;
            }
            b.a(parcelable, d);
        }
        this.b.g();
    }
    
    public final boolean onCreatePanelMenu(final int n, final Menu menu) {
        if (n == 0) {
            final boolean b = super.onCreatePanelMenu(n, menu) | this.b.a(menu, this.getMenuInflater());
            return Build$VERSION.SDK_INT < 11 || b;
        }
        return super.onCreatePanelMenu(n, menu);
    }
    
    public final View onCreateView(final String anObject, final Context context, final AttributeSet set) {
        if (!"fragment".equals(anObject)) {
            return super.onCreateView(anObject, context, set);
        }
        String str = set.getAttributeValue((String)null, "class");
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, c.m.x.a.gv.k.a);
        if (str == null) {
            str = obtainStyledAttributes.getString(0);
        }
        final int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        final String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        if (!c.m.x.a.gv.e.isSupportFragmentClass((Context)this, str)) {
            return super.onCreateView(anObject, context, set);
        }
        e obj;
        if (resourceId != -1) {
            obj = this.b.a(resourceId);
        }
        else {
            obj = null;
        }
        if (obj == null && string != null) {
            obj = this.b.a(string);
        }
        if (obj == null) {
            obj = this.b.a(0);
        }
        if (o.a) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str + " existing=" + obj);
        }
        if (obj == null) {
            obj = c.m.x.a.gv.e.instantiate((Context)this, str);
            obj.mFromLayout = true;
            int mFragmentId;
            if (resourceId != 0) {
                mFragmentId = resourceId;
            }
            else {
                mFragmentId = 0;
            }
            obj.mFragmentId = mFragmentId;
            obj.mContainerId = 0;
            obj.mTag = string;
            obj.mInLayout = true;
            obj.mFragmentManager = this.b;
            obj.onInflate(this, set, obj.mSavedFragmentState);
            this.b.a(obj, true);
        }
        else {
            if (obj.mInLayout) {
                throw new IllegalArgumentException(set.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + str);
            }
            obj.mInLayout = true;
            if (!obj.mRetaining) {
                obj.onInflate(this, set, obj.mSavedFragmentState);
            }
            this.b.b(obj);
        }
        if (obj.mView == null) {
            throw new IllegalStateException("Fragment " + str + " did not create a view.");
        }
        if (resourceId != 0) {
            obj.mView.setId(resourceId);
        }
        if (obj.mView.getTag() == null) {
            obj.mView.setTag((Object)string);
        }
        return obj.mView;
    }
    
    protected final void onDestroy() {
        super.onDestroy();
        this.a(false);
        this.b.o();
        if (this.m != null) {
            this.m.h();
        }
    }
    
    public final boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (Build$VERSION.SDK_INT < 5 && n == 4 && keyEvent.getRepeatCount() == 0) {
            this.onBackPressed();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public final void onLowMemory() {
        super.onLowMemory();
        this.b.p();
    }
    
    public final boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                return this.b.a(menuItem);
            }
            case 6: {
                return this.b.b(menuItem);
            }
        }
    }
    
    protected final void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.b.f();
    }
    
    public final void onPanelClosed(final int n, final Menu menu) {
        switch (n) {
            case 0: {
                this.b.b(menu);
                break;
            }
        }
        super.onPanelClosed(n, menu);
    }
    
    protected final void onPause() {
        super.onPause();
        this.e = false;
        if (this.a.hasMessages(2)) {
            this.a.removeMessages(2);
            this.b.j();
        }
        this.b.k();
    }
    
    protected final void onPostResume() {
        super.onPostResume();
        this.a.removeMessages(2);
        this.b.j();
        this.b.c();
    }
    
    public final boolean onPreparePanel(final int n, final View view, final Menu menu) {
        if (n == 0 && menu != null) {
            if (this.i) {
                this.i = false;
                menu.clear();
                this.onCreatePanelMenu(n, menu);
            }
            return super.onPreparePanel(0, view, menu) | this.b.a(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }
    
    protected final void onResume() {
        super.onResume();
        this.a.sendEmptyMessage(2);
        this.e = true;
        this.b.c();
    }
    
    public final Object onRetainNonConfigurationInstance() {
        if (this.f) {
            this.a(true);
        }
        final ArrayList<e> d = this.b.d();
        int n2;
        if (this.l != null) {
            final int size = this.l.size();
            final y[] array = new y[size];
            for (int i = size - 1; i >= 0; --i) {
                array[i] = this.l.b(i);
            }
            int j = 0;
            int n = 0;
            while (j < size) {
                final y y = array[j];
                if (y.g) {
                    n = 1;
                }
                else {
                    y.h();
                    this.l.remove(y.d);
                }
                ++j;
            }
            n2 = n;
        }
        else {
            n2 = 0;
        }
        if (d == null && n2 == 0) {
            return null;
        }
        final l l = new l();
        l.a = null;
        l.b = null;
        l.c = null;
        l.d = d;
        l.e = this.l;
        return l;
    }
    
    protected final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Parcelable e = this.b.e();
        if (e != null) {
            bundle.putParcelable("android:support:fragments", e);
        }
    }
    
    protected final void onStart() {
        super.onStart();
        this.f = false;
        this.g = false;
        this.a.removeMessages(1);
        if (!this.d) {
            this.d = true;
            this.b.h();
        }
        this.b.f();
        this.b.c();
        if (!this.k) {
            this.k = true;
            if (this.m != null) {
                this.m.b();
            }
            else if (!this.j) {
                this.m = this.a("(root)", this.k, false);
                if (this.m != null && !this.m.f) {
                    this.m.b();
                }
            }
            this.j = true;
        }
        this.b.i();
        if (this.l != null) {
            final int size = this.l.size();
            final y[] array = new y[size];
            for (int i = size - 1; i >= 0; --i) {
                array[i] = this.l.b(i);
            }
            for (final y y : array) {
                y.e();
                y.g();
            }
        }
    }
    
    protected final void onStop() {
        super.onStop();
        this.f = true;
        this.a.sendEmptyMessage(1);
        this.b.l();
    }
    
    public final void startActivityForResult(final Intent intent, final int n) {
        if (n != -1 && (0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, n);
    }
}
