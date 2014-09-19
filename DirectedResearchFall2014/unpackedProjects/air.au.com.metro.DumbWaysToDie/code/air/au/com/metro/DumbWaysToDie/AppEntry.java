package air.au.com.metro.DumbWaysToDie;

import dalvik.system.*;
import java.net.*;
import java.lang.reflect.*;
import android.content.pm.*;
import android.os.*;
import android.content.*;
import com.adobe.air.*;
import android.content.res.*;
import java.util.*;
import android.app.*;
import android.graphics.*;
import android.util.*;
import android.*;
import android.view.*;

public class AppEntry extends Activity
{
    private static final String LOG_TAG = "AppEntry";
    private static final String RESOURCE_BUTTON_EXIT = "string.button_exit";
    private static final String RESOURCE_BUTTON_INSTALL = "string.button_install";
    private static final String RESOURCE_CLASS = "air.au.com.metro.DumbWaysToDie.R";
    private static final String RESOURCE_TEXT_RUNTIME_REQUIRED = "string.text_runtime_required";
    private static final String RESOURCE_TITLE_ADOBE_AIR = "string.title_adobe_air";
    private static String RUNTIME_PACKAGE_ID;
    private static Object sAndroidActivityWrapper;
    private static Class<?> sAndroidActivityWrapperClass;
    private static DexClassLoader sDloader;
    private static boolean sRuntimeClassesLoaded;
    
    static {
        AppEntry.sRuntimeClassesLoaded = false;
        AppEntry.sAndroidActivityWrapper = null;
        AppEntry.RUNTIME_PACKAGE_ID = "com.adobe.air";
    }
    
    private void BroadcastIntent(final String action, final String s) {
        try {
            this.startActivity(Intent.parseUri(s, 0).setAction(action).addFlags(268435456));
        }
        catch (ActivityNotFoundException ex) {}
        catch (URISyntaxException ex2) {}
    }
    
    private Object InvokeMethod(final Method method, final Object... args) {
        if (!AppEntry.sRuntimeClassesLoaded) {
            return null;
        }
        Object o = null;
        while (true) {
            if (args != null) {
                try {
                    o = method.invoke(AppEntry.sAndroidActivityWrapper, args);
                    return o;
                    o = method.invoke(AppEntry.sAndroidActivityWrapper, new Object[0]);
                }
                catch (Exception ex) {}
                return o;
            }
            continue;
        }
    }
    
    private void InvokeWrapperOnCreate() {
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreate", Activity.class, String[].class), this, new String[] { "", "", "-nodebug", new Boolean(false).toString(), new Boolean(false).toString() });
        }
        catch (Exception ex) {}
    }
    
    private static void KillSelf() {
        Process.killProcess(Process.myPid());
    }
    
    private void createActivityWrapper(final boolean b) {
        Label_0057: {
            if (!b) {
                break Label_0057;
            }
            try {
                AppEntry.sAndroidActivityWrapper = AppEntry.sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", Activity.class, Boolean.class).invoke(null, this, b);
                return;
                AppEntry.sAndroidActivityWrapper = AppEntry.sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", Activity.class).invoke(null, this);
            }
            catch (Exception ex) {}
        }
    }
    
    private boolean isRuntimeInstalled() {
        final PackageManager packageManager = this.getPackageManager();
        try {
            packageManager.getPackageInfo(AppEntry.RUNTIME_PACKAGE_ID, 256);
            return true;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return false;
        }
    }
    
    private boolean isRuntimeOnExternalStorage() {
        final PackageManager packageManager = this.getPackageManager();
        try {
            if ((packageManager.getApplicationInfo(AppEntry.RUNTIME_PACKAGE_ID, 8192).flags & 0x40000) == 0x40000) {
                return true;
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
        return false;
    }
    
    private void launchAIRService() {
        try {
            final Intent intent = new Intent("com.adobe.air.AIRServiceAction");
            intent.setClassName(AppEntry.RUNTIME_PACKAGE_ID, "com.adobe.air.AIRService");
            this.bindService(intent, (ServiceConnection)new ServiceConnection() {
                public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
                    AppEntry.this.unbindService((ServiceConnection)this);
                    AppEntry.this.loadSharedRuntimeDex();
                    AppEntry.this.createActivityWrapper(false);
                    if (AppEntry.sRuntimeClassesLoaded) {
                        AppEntry.this.InvokeWrapperOnCreate();
                        return;
                    }
                    KillSelf();
                }
                
                public void onServiceDisconnected(final ComponentName componentName) {
                }
            }, 1);
        }
        catch (Exception ex) {}
    }
    
    private void launchMarketPlaceForAIR() {
        while (true) {
            try {
                final Bundle metaData = this.getPackageManager().getActivityInfo(this.getComponentName(), 128).metaData;
                String s = null;
                if (metaData != null) {
                    s = (String)metaData.get("airDownloadURL");
                }
                String string = s;
                if (string == null) {
                    string = "market://details?id=" + AppEntry.RUNTIME_PACKAGE_ID;
                }
                try {
                    this.BroadcastIntent("android.intent.action.VIEW", string);
                }
                catch (Exception ex) {}
            }
            catch (PackageManager$NameNotFoundException ex2) {
                final String s = null;
                continue;
            }
            break;
        }
    }
    
    private boolean loadCaptiveRuntimeClasses() {
        boolean b = false;
        try {
            AppEntry.sAndroidActivityWrapperClass = Class.forName("com.adobe.air.AndroidActivityWrapper");
            b = true;
            if (AppEntry.sAndroidActivityWrapperClass != null) {
                AppEntry.sRuntimeClassesLoaded = true;
            }
            return b;
        }
        catch (Exception ex) {
            return b;
        }
    }
    
    private void loadSharedRuntimeDex() {
        try {
            if (!AppEntry.sRuntimeClassesLoaded) {
                AppEntry.sDloader = new DexClassLoader(AppEntry.RUNTIME_PACKAGE_ID, this.getFilesDir().getAbsolutePath(), (String)null, this.createPackageContext(AppEntry.RUNTIME_PACKAGE_ID, 3).getClassLoader());
                AppEntry.sAndroidActivityWrapperClass = (Class<?>)AppEntry.sDloader.loadClass("com.adobe.air.AndroidActivityWrapper");
                if (AppEntry.sAndroidActivityWrapperClass != null) {
                    AppEntry.sRuntimeClassesLoaded = true;
                }
            }
        }
        catch (Exception ex) {}
    }
    
    private void showDialog(final int title, final String message, final int n, final int n2) {
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder((Context)this);
        alertDialog$Builder.setTitle(title);
        alertDialog$Builder.setMessage((CharSequence)message);
        alertDialog$Builder.setPositiveButton(n, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                AppEntry.this.launchMarketPlaceForAIR();
                System.exit(0);
            }
        });
        alertDialog$Builder.setNegativeButton(n2, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
            public void onClick(final DialogInterface dialogInterface, final int n) {
                System.exit(0);
            }
        });
        alertDialog$Builder.setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
            public void onCancel(final DialogInterface dialogInterface) {
                System.exit(0);
            }
        });
        alertDialog$Builder.show();
    }
    
    private void showRuntimeNotInstalledDialog() {
        final ResourceIdMap resourceIdMap = new ResourceIdMap("air.au.com.metro.DumbWaysToDie.R");
        this.showDialog(resourceIdMap.getId("string.title_adobe_air"), this.getString(resourceIdMap.getId("string.text_runtime_required")) + this.getString(resourceIdMap.getId("string.text_install_runtime")), resourceIdMap.getId("string.button_install"), resourceIdMap.getId("string.button_exit"));
    }
    
    private void showRuntimeOnExternalStorageDialog() {
        final ResourceIdMap resourceIdMap = new ResourceIdMap("air.au.com.metro.DumbWaysToDie.R");
        this.showDialog(resourceIdMap.getId("string.title_adobe_air"), this.getString(resourceIdMap.getId("string.text_runtime_required")) + this.getString(resourceIdMap.getId("string.text_runtime_on_external_storage")), resourceIdMap.getId("string.button_install"), resourceIdMap.getId("string.button_exit"));
    }
    
    public boolean dispatchGenericMotionEvent(final MotionEvent motionEvent) {
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("dispatchGenericMotionEvent", MotionEvent.class, Boolean.TYPE), motionEvent, false);
            return 0 != 0 || super.dispatchGenericMotionEvent(motionEvent);
        }
        catch (Exception ex) {
            return 0 != 0 || super.dispatchGenericMotionEvent(motionEvent);
        }
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("dispatchKeyEvent", KeyEvent.class, Boolean.TYPE), keyEvent, false);
            return 0 != 0 || super.dispatchKeyEvent(keyEvent);
        }
        catch (Exception ex) {
            return 0 != 0 || super.dispatchKeyEvent(keyEvent);
        }
    }
    
    public void finishActivityFromChild(final Activity activity, final int i) {
        super.finishActivityFromChild(activity, i);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("finishActivityFromChild", Activity.class, Integer.TYPE), activity, i);
        }
        catch (Exception ex) {}
    }
    
    public void finishFromChild(final Activity activity) {
        super.finishFromChild(activity);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("finishFromChild", Activity.class), activity);
        }
        catch (Exception ex) {}
    }
    
    protected void onActivityResult(final int i, final int j, final Intent intent) {
        try {
            if (AppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onActivityResult", Integer.TYPE, Integer.TYPE, Intent.class), i, j, intent);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onApplyThemeResource(final Resources$Theme resources$Theme, final int i, final boolean b) {
        super.onApplyThemeResource(resources$Theme, i, b);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onApplyThemeResource", Resources$Theme.class, Integer.TYPE, Boolean.TYPE), resources$Theme, i, b);
        }
        catch (Exception ex) {}
    }
    
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onAttachedToWindow", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onBackPressed() {
        super.onBackPressed();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onBackPressed", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onChildTitleChanged(final Activity activity, final CharSequence charSequence) {
        super.onChildTitleChanged(activity, charSequence);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onChildTitleChanged", Activity.class, CharSequence.class), activity, charSequence);
        }
        catch (Exception ex) {}
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onConfigurationChanged", Configuration.class), configuration);
        }
        catch (Exception ex) {}
    }
    
    public void onContentChanged() {
        super.onContentChanged();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onContentChanged", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onContextItemSelected(final MenuItem menuItem) {
        final boolean onContextItemSelected = super.onContextItemSelected(menuItem);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onContextItemSelected", MenuItem.class, Boolean.TYPE), menuItem, onContextItemSelected);
        }
        catch (Exception ex) {
            return onContextItemSelected;
        }
    }
    
    public void onContextMenuClosed(final Menu menu) {
        super.onContextMenuClosed(menu);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onContextMenuClosed", Menu.class), menu);
        }
        catch (Exception ex) {}
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        Log.i("StartupTime1", ":" + new Date().getTime());
        final boolean loadCaptiveRuntimeClasses = this.loadCaptiveRuntimeClasses();
        if (!loadCaptiveRuntimeClasses) {
            if (!AppEntry.sRuntimeClassesLoaded && !this.isRuntimeInstalled()) {
                if (this.isRuntimeOnExternalStorage()) {
                    this.showRuntimeOnExternalStorageDialog();
                    return;
                }
                this.showRuntimeNotInstalledDialog();
                return;
            }
            else {
                this.loadSharedRuntimeDex();
            }
        }
        if (AppEntry.sRuntimeClassesLoaded) {
            this.createActivityWrapper(loadCaptiveRuntimeClasses);
            this.InvokeWrapperOnCreate();
            return;
        }
        if (loadCaptiveRuntimeClasses) {
            KillSelf();
            return;
        }
        this.launchAIRService();
    }
    
    public void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        super.onCreateContextMenu(contextMenu, view, contextMenu$ContextMenuInfo);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateContextMenu", ContextMenu.class, View.class, ContextMenu$ContextMenuInfo.class), contextMenu, view, contextMenu$ContextMenuInfo);
        }
        catch (Exception ex) {}
    }
    
    public CharSequence onCreateDescription() {
        final CharSequence onCreateDescription = super.onCreateDescription();
        try {
            return (CharSequence)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDescription", CharSequence.class), onCreateDescription);
        }
        catch (Exception ex) {
            return onCreateDescription;
        }
    }
    
    protected Dialog onCreateDialog(final int i) {
        final Dialog onCreateDialog = super.onCreateDialog(i);
        try {
            return (Dialog)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDialog", Integer.TYPE, Dialog.class), i, onCreateDialog);
        }
        catch (Exception ex) {
            return onCreateDialog;
        }
    }
    
    protected Dialog onCreateDialog(final int i, final Bundle bundle) {
        final Dialog onCreateDialog = super.onCreateDialog(i, bundle);
        try {
            return (Dialog)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDialog", Integer.TYPE, Bundle.class, Dialog.class), i, bundle, onCreateDialog);
        }
        catch (Exception ex) {
            return onCreateDialog;
        }
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        final boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateOptionsMenu", Menu.class, Boolean.TYPE), menu, onCreateOptionsMenu);
        }
        catch (Exception ex) {
            return onCreateOptionsMenu;
        }
    }
    
    public boolean onCreatePanelMenu(final int i, final Menu menu) {
        final boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreatePanelMenu", Integer.TYPE, Menu.class, Boolean.TYPE), i, menu, onCreatePanelMenu);
        }
        catch (Exception ex) {
            return onCreatePanelMenu;
        }
    }
    
    public View onCreatePanelView(final int i) {
        final View onCreatePanelView = super.onCreatePanelView(i);
        try {
            return (View)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreatePanelView", Integer.TYPE, View.class), i, onCreatePanelView);
        }
        catch (Exception ex) {
            return onCreatePanelView;
        }
    }
    
    public boolean onCreateThumbnail(final Bitmap bitmap, final Canvas canvas) {
        final boolean onCreateThumbnail = super.onCreateThumbnail(bitmap, canvas);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateThumbnail", Bitmap.class, Canvas.class, Boolean.TYPE), bitmap, canvas, onCreateThumbnail);
        }
        catch (Exception ex) {
            return onCreateThumbnail;
        }
    }
    
    public View onCreateView(final String s, final Context context, final AttributeSet set) {
        final View onCreateView = super.onCreateView(s, context, set);
        try {
            return (View)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onCreateView", String.class, Context.class, AttributeSet.class, View.class), s, context, set, onCreateView);
        }
        catch (Exception ex) {
            return onCreateView;
        }
    }
    
    public void onDestroy() {
        super.onDestroy();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onDestroy", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onDetachedFromWindow", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onKeyDown(final int i, final KeyEvent keyEvent) {
        final boolean onKeyDown = super.onKeyDown(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onKeyDown", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyDown);
        }
        catch (Exception ex) {
            return onKeyDown;
        }
    }
    
    public boolean onKeyLongPress(final int i, final KeyEvent keyEvent) {
        final boolean onKeyLongPress = super.onKeyLongPress(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onKeyLongPress", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyLongPress);
        }
        catch (Exception ex) {
            return onKeyLongPress;
        }
    }
    
    public boolean onKeyMultiple(final int i, final int j, final KeyEvent keyEvent) {
        final boolean onKeyMultiple = super.onKeyMultiple(i, j, keyEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onKeyMultiple", Integer.TYPE, Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, j, keyEvent, onKeyMultiple);
        }
        catch (Exception ex) {
            return onKeyMultiple;
        }
    }
    
    public boolean onKeyUp(final int i, final KeyEvent keyEvent) {
        final boolean onKeyUp = super.onKeyUp(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onKeyUp", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyUp);
        }
        catch (Exception ex) {
            return onKeyUp;
        }
    }
    
    public void onLowMemory() {
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onLowMemory", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onMenuItemSelected(final int i, final MenuItem menuItem) {
        final boolean onMenuItemSelected = super.onMenuItemSelected(i, menuItem);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onMenuItemSelected", Integer.TYPE, MenuItem.class, Boolean.TYPE), i, menuItem, onMenuItemSelected);
        }
        catch (Exception ex) {
            return onMenuItemSelected;
        }
    }
    
    public boolean onMenuOpened(final int i, final Menu menu) {
        final boolean onMenuOpened = super.onMenuOpened(i, menu);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onMenuOpened", Integer.TYPE, Menu.class, Boolean.TYPE), i, menu, onMenuOpened);
        }
        catch (Exception ex) {
            return onMenuOpened;
        }
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onNewIntent", Intent.class), intent);
        }
        catch (Exception ex) {}
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onOptionsItemSelected", MenuItem.class, Boolean.TYPE), menuItem, onOptionsItemSelected);
        }
        catch (Exception ex) {
            return onOptionsItemSelected;
        }
    }
    
    public void onOptionsMenuClosed(final Menu menu) {
        super.onOptionsMenuClosed(menu);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onOptionsMenuClosed", Menu.class), menu);
        }
        catch (Exception ex) {}
    }
    
    public void onPanelClosed(final int i, final Menu menu) {
        super.onPanelClosed(i, menu);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPanelClosed", Integer.TYPE, Menu.class), i, menu);
        }
        catch (Exception ex) {}
    }
    
    public void onPause() {
        super.onPause();
        try {
            if (AppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPause", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onPostCreate(final Bundle bundle) {
        super.onPostCreate(bundle);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPostCreate", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    protected void onPostResume() {
        super.onPostResume();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPostResume", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onPrepareDialog(final int i, final Dialog dialog) {
        super.onPrepareDialog(i, dialog);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareDialog", R$id.class, Dialog.class), i, dialog);
        }
        catch (Exception ex) {}
    }
    
    protected void onPrepareDialog(final int i, final Dialog dialog, final Bundle bundle) {
        super.onPrepareDialog(i, dialog, bundle);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareDialog", R$id.class, Dialog.class, Bundle.class), i, dialog, bundle);
        }
        catch (Exception ex) {}
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        final boolean onPrepareOptionsMenu = super.onPrepareOptionsMenu(menu);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareOptionsMenu", Menu.class, Boolean.TYPE), menu, onPrepareOptionsMenu);
        }
        catch (Exception ex) {
            return onPrepareOptionsMenu;
        }
    }
    
    public boolean onPreparePanel(final int i, final View view, final Menu menu) {
        final boolean onPreparePanel = super.onPreparePanel(i, view, menu);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onPreparePanel", Integer.TYPE, View.class, Menu.class, Boolean.TYPE), i, view, menu, onPreparePanel);
        }
        catch (Exception ex) {
            return onPreparePanel;
        }
    }
    
    public void onRestart() {
        super.onRestart();
        try {
            if (AppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onRestart", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onRestoreInstanceState", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    public void onResume() {
        super.onResume();
        try {
            if (AppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onResume", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    public Object onRetainNonConfigurationInstance() {
        final Object onRetainNonConfigurationInstance = super.onRetainNonConfigurationInstance();
        try {
            return this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onRetainNonConfigurationInstance", Object.class), onRetainNonConfigurationInstance);
        }
        catch (Exception ex) {
            return onRetainNonConfigurationInstance;
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onSaveInstanceState", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    public boolean onSearchRequested() {
        final boolean onSearchRequested = super.onSearchRequested();
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onSearchRequested", Boolean.TYPE), onSearchRequested);
        }
        catch (Exception ex) {
            return onSearchRequested;
        }
    }
    
    public void onStart() {
        super.onStart();
    }
    
    public void onStop() {
        super.onStop();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onStop", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onTitleChanged(final CharSequence charSequence, final int i) {
        super.onTitleChanged(charSequence, i);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onTitleChanged", CharSequence.class, Integer.TYPE), charSequence, i);
        }
        catch (Exception ex) {}
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onTouchEvent", MotionEvent.class, Boolean.TYPE), motionEvent, onTouchEvent);
        }
        catch (Exception ex) {
            return onTouchEvent;
        }
    }
    
    public boolean onTrackballEvent(final MotionEvent motionEvent) {
        final boolean onTrackballEvent = super.onTrackballEvent(motionEvent);
        try {
            return (boolean)this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onTrackballEvent", MotionEvent.class, Boolean.TYPE), motionEvent, onTrackballEvent);
        }
        catch (Exception ex) {
            return onTrackballEvent;
        }
    }
    
    public void onUserInteraction() {
        super.onUserInteraction();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onUserInteraction", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onUserLeaveHint", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onWindowAttributesChanged(final WindowManager$LayoutParams windowManager$LayoutParams) {
        super.onWindowAttributesChanged(windowManager$LayoutParams);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onWindowAttributesChanged", WindowManager$LayoutParams.class), windowManager$LayoutParams);
        }
        catch (Exception ex) {}
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        try {
            this.InvokeMethod(AppEntry.sAndroidActivityWrapperClass.getMethod("onWindowFocusChanged", Boolean.TYPE), b);
        }
        catch (Exception ex) {}
    }
}
