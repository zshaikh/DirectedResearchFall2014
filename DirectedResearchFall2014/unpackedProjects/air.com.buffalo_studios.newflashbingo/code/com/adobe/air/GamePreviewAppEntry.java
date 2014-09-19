package com.adobe.air;

import dalvik.system.*;
import java.net.*;
import java.lang.reflect.*;
import android.content.pm.*;
import android.content.*;
import android.content.res.*;
import android.os.*;
import android.app.*;
import android.graphics.*;
import android.util.*;
import android.*;
import android.view.*;

public class GamePreviewAppEntry extends Activity
{
    private static final String GAME_PREVIEW_APP_XML = "assets/META-INF/AIR/GamePreview-app.xml";
    private static final String GAME_PREVIEW_SRC_DIR = "assets";
    private static final String GAME_PREVIEW_SWF = "assets/GamePreview.swf";
    private static final String LOG_TAG = "AppEntry";
    private static final String RESOURCE_BUTTON_EXIT = "string.button_exit";
    private static final String RESOURCE_BUTTON_INSTALL = "string.button_install";
    private static final String RESOURCE_CLASS = "air.com.adobe.appentry.R";
    private static final String RESOURCE_TEXT_RUNTIME_REQUIRED = "string.text_runtime_required";
    private static final String RESOURCE_TITLE_ADOBE_AIR = "string.title_adobe_air";
    private static String RUNTIME_PACKAGE_ID;
    private static Object sAndroidActivityWrapper;
    private static Class<?> sAndroidActivityWrapperClass;
    private static DexClassLoader sDloader;
    private static boolean sRuntimeClassesLoaded;
    
    static {
        GamePreviewAppEntry.sRuntimeClassesLoaded = false;
        GamePreviewAppEntry.sAndroidActivityWrapper = null;
        GamePreviewAppEntry.RUNTIME_PACKAGE_ID = "com.adobe.air";
    }
    
    private void BroadcastIntent(final String action, final String s) {
        try {
            this.startActivity(Intent.parseUri(s, 0).setAction(action).addFlags(268435456));
        }
        catch (ActivityNotFoundException ex) {}
        catch (URISyntaxException ex2) {}
    }
    
    private Object InvokeMethod(final Method method, final Object... args) {
        if (!GamePreviewAppEntry.sRuntimeClassesLoaded) {
            return null;
        }
        Label_0021: {
            if (args == null) {
                break Label_0021;
            }
            try {
                return method.invoke(GamePreviewAppEntry.sAndroidActivityWrapper, args);
                return method.invoke(GamePreviewAppEntry.sAndroidActivityWrapper, new Object[0]);
            }
            catch (Exception ex) {
                return null;
            }
        }
    }
    
    private void InvokeWrapperOnCreate() {
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreate", Activity.class, String[].class), this, new String[] { "assets/META-INF/AIR/GamePreview-app.xml", "assets", "-nodebug", new Boolean(false).toString(), new Boolean(false).toString(), new Boolean(true).toString() });
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
                GamePreviewAppEntry.sAndroidActivityWrapper = GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", Activity.class, Boolean.class).invoke(null, this, b);
                return;
                GamePreviewAppEntry.sAndroidActivityWrapper = GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("CreateAndroidActivityWrapper", Activity.class).invoke(null, this);
            }
            catch (Exception ex) {}
        }
    }
    
    private boolean isRuntimeInstalled() {
        final PackageManager packageManager = this.getPackageManager();
        try {
            packageManager.getPackageInfo(GamePreviewAppEntry.RUNTIME_PACKAGE_ID, 256);
            return true;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return false;
        }
    }
    
    private boolean isRuntimeOnExternalStorage() {
        final PackageManager packageManager = this.getPackageManager();
        try {
            if ((packageManager.getApplicationInfo(GamePreviewAppEntry.RUNTIME_PACKAGE_ID, 8192).flags & 0x40000) == 0x40000) {
                return true;
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
        return false;
    }
    
    private void launchAIRService() {
        try {
            final Intent intent = new Intent("com.adobe.air.AIRServiceAction");
            intent.setClassName(GamePreviewAppEntry.RUNTIME_PACKAGE_ID, "com.adobe.air.AIRService");
            this.bindService(intent, (ServiceConnection)new ServiceConnection() {
                public void onServiceConnected(final ComponentName componentName, final IBinder binder) {
                    GamePreviewAppEntry.this.unbindService((ServiceConnection)this);
                    GamePreviewAppEntry.this.loadSharedRuntimeDex();
                    GamePreviewAppEntry.this.createActivityWrapper(false);
                    if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
                        GamePreviewAppEntry.this.InvokeWrapperOnCreate();
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
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/adobe/air/GamePreviewAppEntry.getPackageManager:()Landroid/content/pm/PackageManager;
        //     4: aload_0        
        //     5: invokevirtual   com/adobe/air/GamePreviewAppEntry.getComponentName:()Landroid/content/ComponentName;
        //     8: sipush          128
        //    11: invokevirtual   android/content/pm/PackageManager.getActivityInfo:(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
        //    14: getfield        android/content/pm/ActivityInfo.metaData:Landroid/os/Bundle;
        //    17: astore          4
        //    19: aload           4
        //    21: ifnull          77
        //    24: aload           4
        //    26: ldc             "airDownloadURL"
        //    28: invokevirtual   android/os/Bundle.get:(Ljava/lang/String;)Ljava/lang/Object;
        //    31: checkcast       Ljava/lang/String;
        //    34: astore_2       
        //    35: aload_2        
        //    36: ifnonnull       61
        //    39: new             Ljava/lang/StringBuilder;
        //    42: dup            
        //    43: invokespecial   java/lang/StringBuilder.<init>:()V
        //    46: ldc             "market://details?id="
        //    48: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    51: getstatic       com/adobe/air/GamePreviewAppEntry.RUNTIME_PACKAGE_ID:Ljava/lang/String;
        //    54: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    57: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    60: astore_2       
        //    61: aload_0        
        //    62: ldc             "android.intent.action.VIEW"
        //    64: aload_2        
        //    65: invokespecial   com/adobe/air/GamePreviewAppEntry.BroadcastIntent:(Ljava/lang/String;Ljava/lang/String;)V
        //    68: return         
        //    69: astore_1       
        //    70: aconst_null    
        //    71: astore_2       
        //    72: goto            35
        //    75: astore_3       
        //    76: return         
        //    77: aconst_null    
        //    78: astore_2       
        //    79: goto            35
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                     
        //  -----  -----  -----  -----  ---------------------------------------------------------
        //  0      19     69     75     Landroid/content/pm/PackageManager$NameNotFoundException;
        //  24     35     69     75     Landroid/content/pm/PackageManager$NameNotFoundException;
        //  61     68     75     77     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0061:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private boolean loadCaptiveRuntimeClasses() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "com.adobe.air.AndroidActivityWrapper"
        //     2: invokestatic    java/lang/Class.forName:(Ljava/lang/String;)Ljava/lang/Class;
        //     5: putstatic       com/adobe/air/GamePreviewAppEntry.sAndroidActivityWrapperClass:Ljava/lang/Class;
        //     8: getstatic       com/adobe/air/GamePreviewAppEntry.sAndroidActivityWrapperClass:Ljava/lang/Class;
        //    11: ifnull          18
        //    14: iconst_1       
        //    15: putstatic       com/adobe/air/GamePreviewAppEntry.sRuntimeClassesLoaded:Z
        //    18: iconst_1       
        //    19: ireturn        
        //    20: astore_1       
        //    21: iconst_0       
        //    22: ireturn        
        //    23: astore_2       
        //    24: iconst_1       
        //    25: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      8      20     23     Ljava/lang/Exception;
        //  8      18     23     26     Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0018:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private void loadSharedRuntimeDex() {
        try {
            if (!GamePreviewAppEntry.sRuntimeClassesLoaded) {
                GamePreviewAppEntry.sDloader = new DexClassLoader(GamePreviewAppEntry.RUNTIME_PACKAGE_ID, this.getFilesDir().getAbsolutePath(), (String)null, this.createPackageContext(GamePreviewAppEntry.RUNTIME_PACKAGE_ID, 3).getClassLoader());
                GamePreviewAppEntry.sAndroidActivityWrapperClass = (Class<?>)GamePreviewAppEntry.sDloader.loadClass("com.adobe.air.AndroidActivityWrapper");
                if (GamePreviewAppEntry.sAndroidActivityWrapperClass != null) {
                    GamePreviewAppEntry.sRuntimeClassesLoaded = true;
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
                GamePreviewAppEntry.this.launchMarketPlaceForAIR();
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
        final ResourceIdMap resourceIdMap = new ResourceIdMap("air.com.adobe.appentry.R");
        this.showDialog(resourceIdMap.getId("string.title_adobe_air"), this.getString(resourceIdMap.getId("string.text_runtime_required")) + this.getString(resourceIdMap.getId("string.text_install_runtime")), resourceIdMap.getId("string.button_install"), resourceIdMap.getId("string.button_exit"));
    }
    
    private void showRuntimeOnExternalStorageDialog() {
        final ResourceIdMap resourceIdMap = new ResourceIdMap("air.com.adobe.appentry.R");
        this.showDialog(resourceIdMap.getId("string.title_adobe_air"), this.getString(resourceIdMap.getId("string.text_runtime_required")) + this.getString(resourceIdMap.getId("string.text_runtime_on_external_storage")), resourceIdMap.getId("string.button_install"), resourceIdMap.getId("string.button_exit"));
    }
    
    public boolean dispatchGenericMotionEvent(final MotionEvent motionEvent) {
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("dispatchGenericMotionEvent", MotionEvent.class, Boolean.TYPE), motionEvent, false);
            return 0 != 0 || super.dispatchGenericMotionEvent(motionEvent);
        }
        catch (Exception ex) {
            return 0 != 0 || super.dispatchGenericMotionEvent(motionEvent);
        }
    }
    
    public boolean dispatchKeyEvent(final KeyEvent keyEvent) {
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("dispatchKeyEvent", KeyEvent.class, Boolean.TYPE), keyEvent, false);
            return 0 != 0 || super.dispatchKeyEvent(keyEvent);
        }
        catch (Exception ex) {
            return 0 != 0 || super.dispatchKeyEvent(keyEvent);
        }
    }
    
    public void finishActivityFromChild(final Activity activity, final int i) {
        super.finishActivityFromChild(activity, i);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("finishActivityFromChild", Activity.class, Integer.TYPE), activity, i);
        }
        catch (Exception ex) {}
    }
    
    public void finishFromChild(final Activity activity) {
        super.finishFromChild(activity);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("finishFromChild", Activity.class), activity);
        }
        catch (Exception ex) {}
    }
    
    protected void onActivityResult(final int i, final int j, final Intent intent) {
        try {
            if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onActivityResult", Integer.TYPE, Integer.TYPE, Intent.class), i, j, intent);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onApplyThemeResource(final Resources$Theme resources$Theme, final int i, final boolean b) {
        super.onApplyThemeResource(resources$Theme, i, b);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onApplyThemeResource", Resources$Theme.class, Integer.TYPE, Boolean.TYPE), resources$Theme, i, b);
        }
        catch (Exception ex) {}
    }
    
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onAttachedToWindow", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onBackPressed() {
        super.onBackPressed();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onBackPressed", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onChildTitleChanged(final Activity activity, final CharSequence charSequence) {
        super.onChildTitleChanged(activity, charSequence);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onChildTitleChanged", Activity.class, CharSequence.class), activity, charSequence);
        }
        catch (Exception ex) {}
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onConfigurationChanged", Configuration.class), configuration);
        }
        catch (Exception ex) {}
    }
    
    public void onContentChanged() {
        super.onContentChanged();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onContentChanged", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onContextItemSelected(final MenuItem menuItem) {
        final boolean onContextItemSelected = super.onContextItemSelected(menuItem);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onContextItemSelected", MenuItem.class, Boolean.TYPE), menuItem, onContextItemSelected);
        }
        catch (Exception ex) {
            return onContextItemSelected;
        }
    }
    
    public void onContextMenuClosed(final Menu menu) {
        super.onContextMenuClosed(menu);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onContextMenuClosed", Menu.class), menu);
        }
        catch (Exception ex) {}
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final boolean loadCaptiveRuntimeClasses = this.loadCaptiveRuntimeClasses();
        if (!loadCaptiveRuntimeClasses) {
            if (!GamePreviewAppEntry.sRuntimeClassesLoaded && !this.isRuntimeInstalled()) {
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
        if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
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
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateContextMenu", ContextMenu.class, View.class, ContextMenu$ContextMenuInfo.class), contextMenu, view, contextMenu$ContextMenuInfo);
        }
        catch (Exception ex) {}
    }
    
    public CharSequence onCreateDescription() {
        final CharSequence onCreateDescription = super.onCreateDescription();
        try {
            return (CharSequence)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDescription", CharSequence.class), onCreateDescription);
        }
        catch (Exception ex) {
            return onCreateDescription;
        }
    }
    
    protected Dialog onCreateDialog(final int i) {
        final Dialog onCreateDialog = super.onCreateDialog(i);
        try {
            return (Dialog)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDialog", Integer.TYPE, Dialog.class), i, onCreateDialog);
        }
        catch (Exception ex) {
            return onCreateDialog;
        }
    }
    
    protected Dialog onCreateDialog(final int i, final Bundle bundle) {
        final Dialog onCreateDialog = super.onCreateDialog(i, bundle);
        try {
            return (Dialog)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateDialog", Integer.TYPE, Bundle.class, Dialog.class), i, bundle, onCreateDialog);
        }
        catch (Exception ex) {
            return onCreateDialog;
        }
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        final boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateOptionsMenu", Menu.class, Boolean.TYPE), menu, onCreateOptionsMenu);
        }
        catch (Exception ex) {
            return onCreateOptionsMenu;
        }
    }
    
    public boolean onCreatePanelMenu(final int i, final Menu menu) {
        final boolean onCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreatePanelMenu", Integer.TYPE, Menu.class, Boolean.TYPE), i, menu, onCreatePanelMenu);
        }
        catch (Exception ex) {
            return onCreatePanelMenu;
        }
    }
    
    public View onCreatePanelView(final int i) {
        final View onCreatePanelView = super.onCreatePanelView(i);
        try {
            return (View)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreatePanelView", Integer.TYPE, View.class), i, onCreatePanelView);
        }
        catch (Exception ex) {
            return onCreatePanelView;
        }
    }
    
    public boolean onCreateThumbnail(final Bitmap bitmap, final Canvas canvas) {
        final boolean onCreateThumbnail = super.onCreateThumbnail(bitmap, canvas);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateThumbnail", Bitmap.class, Canvas.class, Boolean.TYPE), bitmap, canvas, onCreateThumbnail);
        }
        catch (Exception ex) {
            return onCreateThumbnail;
        }
    }
    
    public View onCreateView(final String s, final Context context, final AttributeSet set) {
        final View onCreateView = super.onCreateView(s, context, set);
        try {
            return (View)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onCreateView", String.class, Context.class, AttributeSet.class, View.class), s, context, set, onCreateView);
        }
        catch (Exception ex) {
            return onCreateView;
        }
    }
    
    public void onDestroy() {
        super.onDestroy();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onDestroy", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onDetachedFromWindow", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onKeyDown(final int i, final KeyEvent keyEvent) {
        final boolean onKeyDown = super.onKeyDown(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onKeyDown", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyDown);
        }
        catch (Exception ex) {
            return onKeyDown;
        }
    }
    
    public boolean onKeyLongPress(final int i, final KeyEvent keyEvent) {
        final boolean onKeyLongPress = super.onKeyLongPress(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onKeyLongPress", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyLongPress);
        }
        catch (Exception ex) {
            return onKeyLongPress;
        }
    }
    
    public boolean onKeyMultiple(final int i, final int j, final KeyEvent keyEvent) {
        final boolean onKeyMultiple = super.onKeyMultiple(i, j, keyEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onKeyMultiple", Integer.TYPE, Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, j, keyEvent, onKeyMultiple);
        }
        catch (Exception ex) {
            return onKeyMultiple;
        }
    }
    
    public boolean onKeyUp(final int i, final KeyEvent keyEvent) {
        final boolean onKeyUp = super.onKeyUp(i, keyEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onKeyUp", Integer.TYPE, KeyEvent.class, Boolean.TYPE), i, keyEvent, onKeyUp);
        }
        catch (Exception ex) {
            return onKeyUp;
        }
    }
    
    public void onLowMemory() {
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onLowMemory", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public boolean onMenuItemSelected(final int i, final MenuItem menuItem) {
        final boolean onMenuItemSelected = super.onMenuItemSelected(i, menuItem);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onMenuItemSelected", Integer.TYPE, MenuItem.class, Boolean.TYPE), i, menuItem, onMenuItemSelected);
        }
        catch (Exception ex) {
            return onMenuItemSelected;
        }
    }
    
    public boolean onMenuOpened(final int i, final Menu menu) {
        final boolean onMenuOpened = super.onMenuOpened(i, menu);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onMenuOpened", Integer.TYPE, Menu.class, Boolean.TYPE), i, menu, onMenuOpened);
        }
        catch (Exception ex) {
            return onMenuOpened;
        }
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onNewIntent", Intent.class), intent);
        }
        catch (Exception ex) {}
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final boolean onOptionsItemSelected = super.onOptionsItemSelected(menuItem);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onOptionsItemSelected", MenuItem.class, Boolean.TYPE), menuItem, onOptionsItemSelected);
        }
        catch (Exception ex) {
            return onOptionsItemSelected;
        }
    }
    
    public void onOptionsMenuClosed(final Menu menu) {
        super.onOptionsMenuClosed(menu);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onOptionsMenuClosed", Menu.class), menu);
        }
        catch (Exception ex) {}
    }
    
    public void onPanelClosed(final int i, final Menu menu) {
        super.onPanelClosed(i, menu);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPanelClosed", Integer.TYPE, Menu.class), i, menu);
        }
        catch (Exception ex) {}
    }
    
    public void onPause() {
        super.onPause();
        try {
            if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPause", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onPostCreate(final Bundle bundle) {
        super.onPostCreate(bundle);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPostCreate", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    protected void onPostResume() {
        super.onPostResume();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPostResume", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onPrepareDialog(final int i, final Dialog dialog) {
        super.onPrepareDialog(i, dialog);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareDialog", R$id.class, Dialog.class), i, dialog);
        }
        catch (Exception ex) {}
    }
    
    protected void onPrepareDialog(final int i, final Dialog dialog, final Bundle bundle) {
        super.onPrepareDialog(i, dialog, bundle);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareDialog", R$id.class, Dialog.class, Bundle.class), i, dialog, bundle);
        }
        catch (Exception ex) {}
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        final boolean onPrepareOptionsMenu = super.onPrepareOptionsMenu(menu);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPrepareOptionsMenu", Menu.class, Boolean.TYPE), menu, onPrepareOptionsMenu);
        }
        catch (Exception ex) {
            return onPrepareOptionsMenu;
        }
    }
    
    public boolean onPreparePanel(final int i, final View view, final Menu menu) {
        final boolean onPreparePanel = super.onPreparePanel(i, view, menu);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onPreparePanel", Integer.TYPE, View.class, Menu.class, Boolean.TYPE), i, view, menu, onPreparePanel);
        }
        catch (Exception ex) {
            return onPreparePanel;
        }
    }
    
    public void onRestart() {
        super.onRestart();
        try {
            if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onRestart", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onRestoreInstanceState", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    public void onResume() {
        super.onResume();
        try {
            if (GamePreviewAppEntry.sRuntimeClassesLoaded) {
                this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onResume", (Class<?>[])new Class[0]), new Object[0]);
            }
        }
        catch (Exception ex) {}
    }
    
    public Object onRetainNonConfigurationInstance() {
        final Object onRetainNonConfigurationInstance = super.onRetainNonConfigurationInstance();
        try {
            return this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onRetainNonConfigurationInstance", Object.class), onRetainNonConfigurationInstance);
        }
        catch (Exception ex) {
            return onRetainNonConfigurationInstance;
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onSaveInstanceState", Bundle.class), bundle);
        }
        catch (Exception ex) {}
    }
    
    public boolean onSearchRequested() {
        final boolean onSearchRequested = super.onSearchRequested();
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onSearchRequested", Boolean.TYPE), onSearchRequested);
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
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onStop", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onTitleChanged(final CharSequence charSequence, final int i) {
        super.onTitleChanged(charSequence, i);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onTitleChanged", CharSequence.class, Integer.TYPE), charSequence, i);
        }
        catch (Exception ex) {}
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        final boolean onTouchEvent = super.onTouchEvent(motionEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onTouchEvent", MotionEvent.class, Boolean.TYPE), motionEvent, onTouchEvent);
        }
        catch (Exception ex) {
            return onTouchEvent;
        }
    }
    
    public boolean onTrackballEvent(final MotionEvent motionEvent) {
        final boolean onTrackballEvent = super.onTrackballEvent(motionEvent);
        try {
            return (boolean)this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onTrackballEvent", MotionEvent.class, Boolean.TYPE), motionEvent, onTrackballEvent);
        }
        catch (Exception ex) {
            return onTrackballEvent;
        }
    }
    
    public void onUserInteraction() {
        super.onUserInteraction();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onUserInteraction", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onUserLeaveHint", (Class<?>[])new Class[0]), new Object[0]);
        }
        catch (Exception ex) {}
    }
    
    public void onWindowAttributesChanged(final WindowManager$LayoutParams windowManager$LayoutParams) {
        super.onWindowAttributesChanged(windowManager$LayoutParams);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onWindowAttributesChanged", WindowManager$LayoutParams.class), windowManager$LayoutParams);
        }
        catch (Exception ex) {}
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        try {
            this.InvokeMethod(GamePreviewAppEntry.sAndroidActivityWrapperClass.getMethod("onWindowFocusChanged", Boolean.TYPE), b);
        }
        catch (Exception ex) {}
    }
}
