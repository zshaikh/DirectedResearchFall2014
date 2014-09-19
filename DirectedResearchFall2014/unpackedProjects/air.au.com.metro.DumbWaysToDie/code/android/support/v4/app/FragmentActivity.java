package android.support.v4.app;

import android.app.*;
import java.io.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import android.view.*;

public class FragmentActivity extends Activity
{
    static final String FRAGMENTS_TAG = "android:support:fragments";
    private static final int HONEYCOMB = 11;
    static final int MSG_REALLY_STOPPED = 1;
    static final int MSG_RESUME_PENDING = 2;
    private static final String TAG = "FragmentActivity";
    HashMap<String, LoaderManagerImpl> mAllLoaderManagers;
    boolean mCheckedForLoaderManager;
    final FragmentContainer mContainer;
    boolean mCreated;
    final FragmentManagerImpl mFragments;
    final Handler mHandler;
    LoaderManagerImpl mLoaderManager;
    boolean mLoadersStarted;
    boolean mOptionsMenuInvalidated;
    boolean mReallyStopped;
    boolean mResumed;
    boolean mRetaining;
    boolean mStopped;
    
    public FragmentActivity() {
        super();
        this.mHandler = new Handler() {
            public void handleMessage(final Message message) {
                switch (message.what) {
                    default: {
                        super.handleMessage(message);
                        break;
                    }
                    case 1: {
                        if (FragmentActivity.this.mStopped) {
                            FragmentActivity.this.doReallyStop(false);
                            return;
                        }
                        break;
                    }
                    case 2: {
                        FragmentActivity.this.onResumeFragments();
                        FragmentActivity.this.mFragments.execPendingActions();
                    }
                }
            }
        };
        this.mFragments = new FragmentManagerImpl();
        this.mContainer = new FragmentContainer() {
            @Override
            public View findViewById(final int n) {
                return FragmentActivity.this.findViewById(n);
            }
        };
    }
    
    private void dumpViewHierarchy(final String s, final PrintWriter printWriter, final View view) {
        printWriter.print(s);
        if (view == null) {
            printWriter.println("null");
        }
        else {
            printWriter.println(viewToString(view));
            if (view instanceof ViewGroup) {
                final ViewGroup viewGroup = (ViewGroup)view;
                final int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    final String string = s + "  ";
                    for (int i = 0; i < childCount; ++i) {
                        this.dumpViewHierarchy(string, printWriter, viewGroup.getChildAt(i));
                    }
                }
            }
        }
    }
    
    private static String viewToString(final View view) {
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
                Label_0598_Outer:
                    while (true) {
                        Label_0275: {
                            while (true) {
                                Label_0257: {
                                    Label_0535_Outer:Label_0563_Outer:Label_0577_Outer:Label_0584_Outer:
                                    while (true) {
                                        Label_0239: {
                                            while (true) {
                                                Label_0214: {
                                                Label_0570_Outer:
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
                                                                                                    Label_0515_Outer:
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
                                                                                                                                    resourcePackageName = "android";
                                                                                                                                    continue Label_0493_Outer;
                                                                                                                                    c = '.';
                                                                                                                                    break Label_0257;
                                                                                                                                    c2 = '.';
                                                                                                                                    break Label_0106;
                                                                                                                                    sb.append('G');
                                                                                                                                    break;
                                                                                                                                    sb.append('V');
                                                                                                                                    break;
                                                                                                                                    sb.append('I');
                                                                                                                                    break;
                                                                                                                                    c3 = '.';
                                                                                                                                    break Label_0178;
                                                                                                                                    resourcePackageName = "app";
                                                                                                                                    continue Label_0493_Outer;
                                                                                                                                }
                                                                                                                                c4 = 'D';
                                                                                                                                break Label_0142;
                                                                                                                                c5 = '.';
                                                                                                                                break Label_0214;
                                                                                                                                c6 = '.';
                                                                                                                                break Label_0196;
                                                                                                                                c7 = '.';
                                                                                                                                break Label_0124;
                                                                                                                                c8 = '.';
                                                                                                                                break Label_0239;
                                                                                                                                c9 = '.';
                                                                                                                                break Label_0160;
                                                                                                                                c10 = '.';
                                                                                                                                break Label_0275;
                                                                                                                            }
                                                                                                                            catch (Resources$NotFoundException ex) {
                                                                                                                                continue Label_0612_Outer;
                                                                                                                            }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                    }
                                                                                                                    case 4: {
                                                                                                                        continue Label_0563_Outer;
                                                                                                                    }
                                                                                                                    case 8: {
                                                                                                                        continue Label_0515_Outer;
                                                                                                                    }
                                                                                                                }
                                                                                                                break;
                                                                                                            }
                                                                                                            break;
                                                                                                        }
                                                                                                        if (!view.isFocusable()) {
                                                                                                            continue Label_0563_Outer;
                                                                                                        }
                                                                                                        break;
                                                                                                    }
                                                                                                    c2 = 'F';
                                                                                                }
                                                                                                sb.append(c2);
                                                                                                if (!view.isEnabled()) {
                                                                                                    continue Label_0584_Outer;
                                                                                                }
                                                                                                break;
                                                                                            }
                                                                                            c7 = 'E';
                                                                                        }
                                                                                        sb.append(c7);
                                                                                        if (!view.willNotDraw()) {
                                                                                            continue Label_0577_Outer;
                                                                                        }
                                                                                        break;
                                                                                    }
                                                                                    c4 = '.';
                                                                                }
                                                                                sb.append(c4);
                                                                                if (!view.isHorizontalScrollBarEnabled()) {
                                                                                    continue Label_0598_Outer;
                                                                                }
                                                                                break;
                                                                            }
                                                                            c9 = 'H';
                                                                        }
                                                                        sb.append(c9);
                                                                        if (!view.isVerticalScrollBarEnabled()) {
                                                                            continue Label_0605_Outer;
                                                                        }
                                                                        break;
                                                                    }
                                                                    c3 = 'V';
                                                                }
                                                                sb.append(c3);
                                                                if (!view.isClickable()) {
                                                                    continue Label_0584_Outer;
                                                                }
                                                                break;
                                                            }
                                                            c6 = 'C';
                                                        }
                                                        sb.append(c6);
                                                        if (!view.isLongClickable()) {
                                                            continue Label_0570_Outer;
                                                        }
                                                        break;
                                                    }
                                                    c5 = 'L';
                                                }
                                                sb.append(c5);
                                                sb.append(' ');
                                                if (!view.isFocused()) {
                                                    continue Label_0598_Outer;
                                                }
                                                break;
                                            }
                                            c8 = 'F';
                                        }
                                        sb.append(c8);
                                        if (!view.isSelected()) {
                                            continue Label_0535_Outer;
                                        }
                                        break;
                                    }
                                    c = 'S';
                                }
                                sb.append(c);
                                if (!view.isPressed()) {
                                    continue;
                                }
                                break;
                            }
                            c10 = 'P';
                        }
                        sb.append(c10);
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
                            continue Label_0612_Outer;
                        }
                        sb.append(" #");
                        sb.append(Integer.toHexString(id));
                        resources = view.getResources();
                        if (id == 0 || resources == null) {
                            continue Label_0612_Outer;
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
    
    void doReallyStop(final boolean mRetaining) {
        if (!this.mReallyStopped) {
            this.mReallyStopped = true;
            this.mRetaining = mRetaining;
            this.mHandler.removeMessages(1);
            this.onReallyStop();
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        while (true) {
            if (Build$VERSION.SDK_INT >= 11) {
                printWriter.print(s);
                printWriter.print("Local FragmentActivity ");
                printWriter.print(Integer.toHexString(System.identityHashCode(this)));
                printWriter.println(" State:");
                final String string = s + "  ";
                printWriter.print(string);
                printWriter.print("mCreated=");
                printWriter.print(this.mCreated);
                printWriter.print("mResumed=");
                printWriter.print(this.mResumed);
                printWriter.print(" mStopped=");
                printWriter.print(this.mStopped);
                printWriter.print(" mReallyStopped=");
                printWriter.println(this.mReallyStopped);
                printWriter.print(string);
                printWriter.print("mLoadersStarted=");
                printWriter.println(this.mLoadersStarted);
                if (this.mLoaderManager != null) {
                    printWriter.print(s);
                    printWriter.print("Loader Manager ");
                    printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
                    printWriter.println(":");
                    this.mLoaderManager.dump(s + "  ", fileDescriptor, printWriter, array);
                }
                this.mFragments.dump(s, fileDescriptor, printWriter, array);
                printWriter.print(s);
                printWriter.println("View Hierarchy:");
                this.dumpViewHierarchy(s + "  ", printWriter, this.getWindow().getDecorView());
                return;
            }
            continue;
        }
    }
    
    public Object getLastCustomNonConfigurationInstance() {
        final NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.custom;
        }
        return null;
    }
    
    LoaderManagerImpl getLoaderManager(final String s, final boolean b, final boolean b2) {
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new HashMap<String, LoaderManagerImpl>();
        }
        LoaderManagerImpl value = this.mAllLoaderManagers.get(s);
        if (value == null) {
            if (b2) {
                value = new LoaderManagerImpl(s, this, b);
                this.mAllLoaderManagers.put(s, value);
            }
            return value;
        }
        value.updateActivity(this);
        return value;
    }
    
    public FragmentManager getSupportFragmentManager() {
        return this.mFragments;
    }
    
    public LoaderManager getSupportLoaderManager() {
        if (this.mLoaderManager != null) {
            return this.mLoaderManager;
        }
        this.mCheckedForLoaderManager = true;
        return this.mLoaderManager = this.getLoaderManager(null, this.mLoadersStarted, true);
    }
    
    void invalidateSupportFragment(final String s) {
        if (this.mAllLoaderManagers != null) {
            final LoaderManagerImpl loaderManagerImpl = this.mAllLoaderManagers.get(s);
            if (loaderManagerImpl != null && !loaderManagerImpl.mRetaining) {
                loaderManagerImpl.doDestroy();
                this.mAllLoaderManagers.remove(s);
            }
        }
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.mFragments.noteStateNotSaved();
        final int n3 = n >> 16;
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
            return;
        }
        final int index = n3 - 1;
        if (this.mFragments.mActive == null || index < 0 || index >= this.mFragments.mActive.size()) {
            Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(n));
            return;
        }
        final Fragment fragment = this.mFragments.mActive.get(index);
        if (fragment == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(n));
            return;
        }
        fragment.onActivityResult(0xFFFF & n, n2, intent);
    }
    
    public void onAttachFragment(final Fragment fragment) {
    }
    
    public void onBackPressed() {
        if (!this.mFragments.popBackStackImmediate()) {
            this.finish();
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.dispatchConfigurationChanged(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        this.mFragments.attachActivity(this, this.mContainer, null);
        if (this.getLayoutInflater().getFactory() == null) {
            this.getLayoutInflater().setFactory((LayoutInflater$Factory)this);
        }
        super.onCreate(bundle);
        final NonConfigurationInstances nonConfigurationInstances = (NonConfigurationInstances)this.getLastNonConfigurationInstance();
        if (nonConfigurationInstances != null) {
            this.mAllLoaderManagers = nonConfigurationInstances.loaders;
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            final FragmentManagerImpl mFragments = this.mFragments;
            ArrayList<Fragment> fragments;
            if (nonConfigurationInstances != null) {
                fragments = nonConfigurationInstances.fragments;
            }
            else {
                fragments = null;
            }
            mFragments.restoreAllState(parcelable, fragments);
        }
        this.mFragments.dispatchCreate();
    }
    
    public boolean onCreatePanelMenu(final int n, final Menu menu) {
        if (n == 0) {
            final boolean b = super.onCreatePanelMenu(n, menu) | this.mFragments.dispatchCreateOptionsMenu(menu, this.getMenuInflater());
            return Build$VERSION.SDK_INT < 11 || b;
        }
        return super.onCreatePanelMenu(n, menu);
    }
    
    public View onCreateView(final String anObject, final Context context, final AttributeSet set) {
        if (!"fragment".equals(anObject)) {
            return super.onCreateView(anObject, context, set);
        }
        String s = set.getAttributeValue((String)null, "class");
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, FragmentTag.Fragment);
        if (s == null) {
            s = obtainStyledAttributes.getString(0);
        }
        final int resourceId = obtainStyledAttributes.getResourceId(1, -1);
        final String string = obtainStyledAttributes.getString(2);
        obtainStyledAttributes.recycle();
        int id;
        if (0 != 0) {
            id = null.getId();
        }
        else {
            id = 0;
        }
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(set.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + s);
        }
        Fragment obj;
        if (resourceId != -1) {
            obj = this.mFragments.findFragmentById(resourceId);
        }
        else {
            obj = null;
        }
        if (obj == null && string != null) {
            obj = this.mFragments.findFragmentByTag(string);
        }
        if (obj == null && id != -1) {
            obj = this.mFragments.findFragmentById(id);
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v("FragmentActivity", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + s + " existing=" + obj);
        }
        if (obj == null) {
            obj = Fragment.instantiate((Context)this, s);
            obj.mFromLayout = true;
            int mFragmentId;
            if (resourceId != 0) {
                mFragmentId = resourceId;
            }
            else {
                mFragmentId = id;
            }
            obj.mFragmentId = mFragmentId;
            obj.mContainerId = id;
            obj.mTag = string;
            obj.mInLayout = true;
            obj.mFragmentManager = this.mFragments;
            obj.onInflate(this, set, obj.mSavedFragmentState);
            this.mFragments.addFragment(obj, true);
        }
        else {
            if (obj.mInLayout) {
                throw new IllegalArgumentException(set.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + s);
            }
            obj.mInLayout = true;
            if (!obj.mRetaining) {
                obj.onInflate(this, set, obj.mSavedFragmentState);
            }
            this.mFragments.moveToState(obj);
        }
        if (obj.mView == null) {
            throw new IllegalStateException("Fragment " + s + " did not create a view.");
        }
        if (resourceId != 0) {
            obj.mView.setId(resourceId);
        }
        if (obj.mView.getTag() == null) {
            obj.mView.setTag((Object)string);
        }
        return obj.mView;
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.doReallyStop(false);
        this.mFragments.dispatchDestroy();
        if (this.mLoaderManager != null) {
            this.mLoaderManager.doDestroy();
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (Build$VERSION.SDK_INT < 5 && n == 4 && keyEvent.getRepeatCount() == 0) {
            this.onBackPressed();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.dispatchLowMemory();
    }
    
    public boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                return this.mFragments.dispatchOptionsItemSelected(menuItem);
            }
            case 6: {
                return this.mFragments.dispatchContextItemSelected(menuItem);
            }
        }
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.noteStateNotSaved();
    }
    
    public void onPanelClosed(final int n, final Menu menu) {
        switch (n) {
            case 0: {
                this.mFragments.dispatchOptionsMenuClosed(menu);
                break;
            }
        }
        super.onPanelClosed(n, menu);
    }
    
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            this.onResumeFragments();
        }
        this.mFragments.dispatchPause();
    }
    
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.onResumeFragments();
        this.mFragments.execPendingActions();
    }
    
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        if (n == 0 && menu != null) {
            if (this.mOptionsMenuInvalidated) {
                this.mOptionsMenuInvalidated = false;
                menu.clear();
                this.onCreatePanelMenu(n, menu);
            }
            return super.onPreparePanel(n, view, menu) | this.mFragments.dispatchPrepareOptionsMenu(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }
    
    void onReallyStop() {
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            if (this.mLoaderManager != null) {
                if (!this.mRetaining) {
                    this.mLoaderManager.doStop();
                }
                else {
                    this.mLoaderManager.doRetain();
                }
            }
        }
        this.mFragments.dispatchReallyStop();
    }
    
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }
    
    protected void onResumeFragments() {
        this.mFragments.dispatchResume();
    }
    
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }
    
    public final Object onRetainNonConfigurationInstance() {
        if (this.mStopped) {
            this.doReallyStop(true);
        }
        final Object onRetainCustomNonConfigurationInstance = this.onRetainCustomNonConfigurationInstance();
        final ArrayList<Fragment> retainNonConfig = this.mFragments.retainNonConfig();
        final HashMap<String, LoaderManagerImpl> mAllLoaderManagers = this.mAllLoaderManagers;
        boolean b = false;
        if (mAllLoaderManagers != null) {
            final LoaderManagerImpl[] array = new LoaderManagerImpl[this.mAllLoaderManagers.size()];
            this.mAllLoaderManagers.values().toArray(array);
            b = false;
            if (array != null) {
                for (int i = 0; i < array.length; ++i) {
                    final LoaderManagerImpl loaderManagerImpl = array[i];
                    if (loaderManagerImpl.mRetaining) {
                        b = true;
                    }
                    else {
                        loaderManagerImpl.doDestroy();
                        this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
                    }
                }
            }
        }
        if (retainNonConfig == null && !b && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        final NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.activity = null;
        nonConfigurationInstances.custom = onRetainCustomNonConfigurationInstance;
        nonConfigurationInstances.children = null;
        nonConfigurationInstances.fragments = retainNonConfig;
        nonConfigurationInstances.loaders = this.mAllLoaderManagers;
        return nonConfigurationInstances;
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Parcelable saveAllState = this.mFragments.saveAllState();
        if (saveAllState != null) {
            bundle.putParcelable("android:support:fragments", saveAllState);
        }
    }
    
    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        this.mReallyStopped = false;
        this.mHandler.removeMessages(1);
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.noteStateNotSaved();
        this.mFragments.execPendingActions();
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            if (this.mLoaderManager != null) {
                this.mLoaderManager.doStart();
            }
            else if (!this.mCheckedForLoaderManager) {
                this.mLoaderManager = this.getLoaderManager(null, this.mLoadersStarted, false);
                if (this.mLoaderManager != null && !this.mLoaderManager.mStarted) {
                    this.mLoaderManager.doStart();
                }
            }
            this.mCheckedForLoaderManager = true;
        }
        this.mFragments.dispatchStart();
        if (this.mAllLoaderManagers != null) {
            final LoaderManagerImpl[] array = new LoaderManagerImpl[this.mAllLoaderManagers.size()];
            this.mAllLoaderManagers.values().toArray(array);
            if (array != null) {
                for (int i = 0; i < array.length; ++i) {
                    final LoaderManagerImpl loaderManagerImpl = array[i];
                    loaderManagerImpl.finishRetain();
                    loaderManagerImpl.doReportStart();
                }
            }
        }
    }
    
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        this.mHandler.sendEmptyMessage(1);
        this.mFragments.dispatchStop();
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        if (n != -1 && (0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, n);
    }
    
    public void startActivityFromFragment(final Fragment fragment, final Intent intent, final int n) {
        if (n == -1) {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, (1 + fragment.mIndex << 16) + (0xFFFF & n));
    }
    
    public void supportInvalidateOptionsMenu() {
        if (Build$VERSION.SDK_INT >= 11) {
            ActivityCompatHoneycomb.invalidateOptionsMenu(this);
            return;
        }
        this.mOptionsMenuInvalidated = true;
    }
    
    static class FragmentTag
    {
        public static final int[] Fragment;
        public static final int Fragment_id = 1;
        public static final int Fragment_name = 0;
        public static final int Fragment_tag = 2;
        
        static {
            Fragment = new int[] { 16842755, 16842960, 16842961 };
        }
    }
    
    static final class NonConfigurationInstances
    {
        Object activity;
        HashMap<String, Object> children;
        Object custom;
        ArrayList<Fragment> fragments;
        HashMap<String, LoaderManagerImpl> loaders;
    }
}
