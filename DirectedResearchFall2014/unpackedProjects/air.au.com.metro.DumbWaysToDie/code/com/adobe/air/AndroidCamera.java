package com.adobe.air;

import java.lang.reflect.*;
import java.util.*;
import android.view.*;
import android.content.res.*;
import android.hardware.*;
import android.graphics.*;

public class AndroidCamera
{
    private static final int CAMERA_POSITION_UNKNOWN = -1;
    private static final String LOG_TAG = "AndroidCamera";
    private static boolean sAreMultipleCamerasSupportedInitialized;
    private static boolean sAreMultipleCamerasSupportedOnDevice;
    private static Class<?> sCameraInfoClass;
    private static Method sMIDGetCameraInfo;
    private static Method sMIDGetNumberOfCameras;
    private static Method sMIDOpen;
    private static Method sMIDOpenWithCameraID;
    private AndroidActivityWrapper.StateChangeCallback mActivityStateCB;
    private byte[] mBuffer1;
    private byte[] mBuffer2;
    private byte[] mCallbackBuffer;
    private boolean mCallbacksRegistered;
    private Camera mCamera;
    private int mCameraId;
    private boolean mCapturing;
    private long mClientId;
    private boolean mInitialized;
    private boolean mPreviewSurfaceValid;
    
    static {
        AndroidCamera.sCameraInfoClass = null;
        AndroidCamera.sMIDOpen = null;
        AndroidCamera.sMIDOpenWithCameraID = null;
        AndroidCamera.sMIDGetNumberOfCameras = null;
        AndroidCamera.sMIDGetCameraInfo = null;
        AndroidCamera.sAreMultipleCamerasSupportedOnDevice = false;
        AndroidCamera.sAreMultipleCamerasSupportedInitialized = false;
    }
    
    public AndroidCamera(final long mClientId) {
        super();
        this.mCamera = null;
        this.mClientId = 0L;
        this.mCameraId = 0;
        this.mInitialized = false;
        this.mCallbacksRegistered = false;
        this.mPreviewSurfaceValid = true;
        this.mCapturing = false;
        this.mActivityStateCB = null;
        this.mCallbackBuffer = null;
        this.mBuffer1 = null;
        this.mBuffer2 = null;
        this.mClientId = mClientId;
        areMultipleCamerasSupportedOnDevice();
    }
    
    public static boolean areMultipleCamerasSupportedOnDevice() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/adobe/air/AndroidCamera.sAreMultipleCamerasSupportedInitialized:Z
        //     3: ifeq            10
        //     6: getstatic       com/adobe/air/AndroidCamera.sAreMultipleCamerasSupportedOnDevice:Z
        //     9: ireturn        
        //    10: iconst_1       
        //    11: putstatic       com/adobe/air/AndroidCamera.sAreMultipleCamerasSupportedInitialized:Z
        //    14: iconst_1       
        //    15: anewarray       Ljava/lang/Class;
        //    18: astore_1       
        //    19: aload_1        
        //    20: iconst_0       
        //    21: getstatic       java/lang/Integer.TYPE:Ljava/lang/Class;
        //    24: aastore        
        //    25: ldc             Landroid/hardware/Camera;.class
        //    27: ldc             "open"
        //    29: aload_1        
        //    30: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    33: putstatic       com/adobe/air/AndroidCamera.sMIDOpenWithCameraID:Ljava/lang/reflect/Method;
        //    36: ldc             Landroid/hardware/Camera;.class
        //    38: ldc             "getNumberOfCameras"
        //    40: aconst_null    
        //    41: checkcast       [Ljava/lang/Class;
        //    44: invokevirtual   java/lang/Class.getDeclaredMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    47: putstatic       com/adobe/air/AndroidCamera.sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;
        //    50: ldc             "android.hardware.Camera$CameraInfo"
        //    52: invokestatic    java/lang/Class.forName:(Ljava/lang/String;)Ljava/lang/Class;
        //    55: putstatic       com/adobe/air/AndroidCamera.sCameraInfoClass:Ljava/lang/Class;
        //    58: iconst_2       
        //    59: anewarray       Ljava/lang/Class;
        //    62: astore_3       
        //    63: aload_3        
        //    64: iconst_0       
        //    65: getstatic       java/lang/Integer.TYPE:Ljava/lang/Class;
        //    68: aastore        
        //    69: aload_3        
        //    70: iconst_1       
        //    71: getstatic       com/adobe/air/AndroidCamera.sCameraInfoClass:Ljava/lang/Class;
        //    74: aastore        
        //    75: ldc             Landroid/hardware/Camera;.class
        //    77: ldc             "getCameraInfo"
        //    79: aload_3        
        //    80: invokevirtual   java/lang/Class.getMethod:(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
        //    83: putstatic       com/adobe/air/AndroidCamera.sMIDGetCameraInfo:Ljava/lang/reflect/Method;
        //    86: getstatic       com/adobe/air/AndroidCamera.sMIDOpenWithCameraID:Ljava/lang/reflect/Method;
        //    89: ifnull          108
        //    92: getstatic       com/adobe/air/AndroidCamera.sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;
        //    95: ifnull          108
        //    98: getstatic       com/adobe/air/AndroidCamera.sMIDGetCameraInfo:Ljava/lang/reflect/Method;
        //   101: ifnull          108
        //   104: iconst_1       
        //   105: putstatic       com/adobe/air/AndroidCamera.sAreMultipleCamerasSupportedOnDevice:Z
        //   108: getstatic       com/adobe/air/AndroidCamera.sAreMultipleCamerasSupportedOnDevice:Z
        //   111: ireturn        
        //   112: astore_0       
        //   113: iconst_0       
        //   114: ireturn        
        //   115: astore_2       
        //   116: iconst_0       
        //   117: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  14     50     112    115    Ljava/lang/NoSuchMethodException;
        //  50     86     115    118    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0108:
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
    
    public static int getNumberOfCameras() {
        if (areMultipleCamerasSupportedOnDevice()) {
            try {
                return (int)AndroidCamera.sMIDGetNumberOfCameras.invoke(null, (Object[])null);
            }
            catch (Exception ex) {}
        }
        return 1;
    }
    
    private native void nativeOnCanOpenCamera(final long p0);
    
    private native void nativeOnFrameCaptured(final long p0, final byte[] p1);
    
    private native void nativeOnShouldCloseCamera(final long p0);
    
    public boolean autoFocus() {
        if (this.mCamera == null || !this.mCapturing) {
            return false;
        }
        try {
            final String focusMode = this.mCamera.getParameters().getFocusMode();
            if (focusMode != "fixed" && focusMode != "infinity") {
                this.mCamera.autoFocus((Camera$AutoFocusCallback)null);
                return true;
            }
        }
        catch (Exception ex) {
            return false;
        }
        return false;
    }
    
    public void close() {
        if (this.mCamera != null) {
            this.stopCapture();
            this.mCamera.release();
            this.mCamera = null;
        }
    }
    
    public Camera getCamera() {
        return this.mCamera;
    }
    
    public int getCameraPosition() {
        int int1 = -1;
        if (!AndroidCamera.sAreMultipleCamerasSupportedOnDevice) {
            return int1;
        }
        Label_0025: {
            if (AndroidCamera.sCameraInfoClass == null) {
                final Object instance = null;
                break Label_0025;
            }
            while (true) {
                while (true) {
                    Label_0115: {
                        try {
                            final Object instance = AndroidCamera.sCameraInfoClass.newInstance();
                            try {
                                AndroidCamera.sMIDGetCameraInfo.invoke(this.mCamera, this.mCameraId, instance);
                                if (instance == null) {
                                    break Label_0115;
                                }
                                try {
                                    final Field field = instance.getClass().getField("facing");
                                    try {
                                        int1 = field.getInt(instance);
                                        return int1;
                                    }
                                    catch (Exception ex) {
                                        return int1;
                                    }
                                }
                                catch (Exception ex2) {
                                    return int1;
                                }
                            }
                            catch (Exception ex3) {
                                return int1;
                            }
                        }
                        catch (Exception ex4) {
                            return int1;
                        }
                    }
                    final Field field = null;
                    continue;
                }
            }
        }
    }
    
    public int getCaptureFormat() {
        try {
            return this.mCamera.getParameters().getPreviewFormat();
        }
        catch (Exception ex) {
            return 0;
        }
    }
    
    public int getCaptureHeight() {
        try {
            return this.mCamera.getParameters().getPreviewSize().height;
        }
        catch (Exception ex) {
            return 0;
        }
    }
    
    public int getCaptureWidth() {
        try {
            return this.mCamera.getParameters().getPreviewSize().width;
        }
        catch (Exception ex) {
            return 0;
        }
    }
    
    public int[] getSupportedFormats() {
        int[] array = new int[0];
        try {
            final List supportedPreviewFormats = this.mCamera.getParameters().getSupportedPreviewFormats();
            array = new int[supportedPreviewFormats.size()];
            final Iterator<Integer> iterator = supportedPreviewFormats.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final Integer n2 = iterator.next();
                final int n3 = n + 1;
                array[n] = n2;
                n = n3;
            }
        }
        catch (Exception ex) {}
        return array;
    }
    
    public int[] getSupportedFps() {
        int[] array = new int[0];
        try {
            final List supportedPreviewFrameRates = this.mCamera.getParameters().getSupportedPreviewFrameRates();
            array = new int[supportedPreviewFrameRates.size()];
            final Iterator<Integer> iterator = supportedPreviewFrameRates.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final Integer n2 = iterator.next();
                final int n3 = n + 1;
                array[n] = n2;
                n = n3;
            }
        }
        catch (Exception ex) {}
        return array;
    }
    
    public int[] getSupportedVideoSizes() {
        int[] array = new int[0];
        try {
            final List supportedPreviewSizes = this.mCamera.getParameters().getSupportedPreviewSizes();
            array = new int[2 * supportedPreviewSizes.size()];
            final Iterator<Camera$Size> iterator = supportedPreviewSizes.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final Camera$Size camera$Size = iterator.next();
                final int n2 = n + 1;
                array[n] = camera$Size.width;
                n = n2 + 1;
                array[n2] = camera$Size.height;
            }
        }
        catch (Exception ex) {}
        return array;
    }
    
    public boolean open(final int n) {
        if (this.mCamera != null) {
            return true;
        }
        while (true) {
            try {
                final SurfaceHolder holder = AndroidActivityWrapper.GetAndroidActivityWrapper().getCameraView().getHolder();
                Label_0089: {
                    if (holder == null) {
                        break Label_0089;
                    }
                    while (true) {
                        while (true) {
                            try {
                                if (holder.getSurface() != null) {
                                    if (AndroidCamera.sAreMultipleCamerasSupportedOnDevice) {
                                        this.mCamera = (Camera)AndroidCamera.sMIDOpenWithCameraID.invoke(null, n);
                                        this.mCameraId = n;
                                    }
                                    else {
                                        this.mCamera = Camera.open();
                                        this.mCameraId = 0;
                                    }
                                    this.mCamera.setPreviewDisplay(holder);
                                }
                                final SurfaceHolder surfaceHolder = holder;
                                if (this.mCamera != null) {
                                    surfaceHolder.addCallback((SurfaceHolder$Callback)new PreviewSurfaceCallback());
                                    return true;
                                }
                                break;
                            }
                            catch (Exception ex) {
                                final SurfaceHolder surfaceHolder = holder;
                            }
                            if (this.mCamera != null) {
                                this.mCamera.release();
                                this.mCamera = null;
                                continue;
                            }
                            continue;
                        }
                    }
                }
            }
            catch (Exception ex2) {
                final SurfaceHolder surfaceHolder = null;
                continue;
            }
            break;
        }
        return false;
    }
    
    public void registerCallbacks(final boolean mCallbacksRegistered) {
        this.mCallbacksRegistered = mCallbacksRegistered;
        if (mCallbacksRegistered) {
            if (this.mActivityStateCB == null) {
                this.mActivityStateCB = new AndroidActivityWrapper.StateChangeCallback() {
                    @Override
                    public void onActivityStateChanged(final ActivityState activityState) {
                        if (AndroidCamera.this.mClientId != 0L && AndroidCamera.this.mCallbacksRegistered) {
                            if (activityState == ActivityState.RESUMED && AndroidCamera.this.mPreviewSurfaceValid) {
                                AndroidCamera.this.nativeOnCanOpenCamera(AndroidCamera.this.mClientId);
                            }
                            else if (activityState == ActivityState.PAUSED) {
                                AndroidCamera.this.nativeOnShouldCloseCamera(AndroidCamera.this.mClientId);
                            }
                        }
                    }
                    
                    @Override
                    public void onConfigurationChanged(final Configuration configuration) {
                    }
                };
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityStateChangeListner(this.mActivityStateCB);
            return;
        }
        if (this.mActivityStateCB != null) {
            AndroidActivityWrapper.GetAndroidActivityWrapper().removeActivityStateChangeListner(this.mActivityStateCB);
        }
        this.mActivityStateCB = null;
    }
    
    public boolean setContinuousFocusMode() {
        if (this.mCamera == null) {
            return false;
        }
        try {
            final Camera$Parameters parameters = this.mCamera.getParameters();
            if (parameters.getSupportedFocusModes().contains("edof")) {
                parameters.setFocusMode("edof");
                this.mCamera.setParameters(parameters);
                return true;
            }
        }
        catch (Exception ex) {
            return false;
        }
        return false;
    }
    
    public boolean startCapture(final int n, final int n2, final int previewFrameRate, final int previewFormat) {
        if (this.mCamera == null) {
            return false;
        }
        try {
            final Camera$Parameters parameters = this.mCamera.getParameters();
            parameters.setPreviewSize(n, n2);
            parameters.setPreviewFrameRate(previewFrameRate);
            parameters.setPreviewFormat(previewFormat);
            this.mCamera.setParameters(parameters);
            this.mCamera.setPreviewCallbackWithBuffer((Camera$PreviewCallback)new Camera$PreviewCallback() {
                public void onPreviewFrame(final byte[] array, final Camera camera) {
                    try {
                        if (AndroidCamera.this.mClientId != 0L && AndroidCamera.this.mCallbacksRegistered) {
                            AndroidCamera.this.nativeOnFrameCaptured(AndroidCamera.this.mClientId, array);
                        }
                        if (AndroidCamera.this.mCallbackBuffer == AndroidCamera.this.mBuffer1) {
                            AndroidCamera.this.mCallbackBuffer = AndroidCamera.this.mBuffer2;
                        }
                        else {
                            AndroidCamera.this.mCallbackBuffer = AndroidCamera.this.mBuffer1;
                        }
                        AndroidCamera.this.mCamera.addCallbackBuffer(AndroidCamera.this.mCallbackBuffer);
                    }
                    catch (Exception ex) {}
                }
            });
            this.mCamera.startPreview();
            final Camera$Parameters parameters2 = this.mCamera.getParameters();
            final int n3 = parameters2.getPreviewSize().width * parameters2.getPreviewSize().height * ImageFormat.getBitsPerPixel(parameters2.getPreviewFormat());
            this.mBuffer1 = new byte[n3];
            this.mBuffer2 = new byte[n3];
            this.mCallbackBuffer = this.mBuffer1;
            this.mCamera.addCallbackBuffer(this.mCallbackBuffer);
            final AndroidCamera androidCamera = this;
            final boolean b = true;
            androidCamera.mCapturing = b;
            return true;
        }
        catch (Exception ex) {
            return false;
        }
        try {
            final AndroidCamera androidCamera = this;
            final boolean b = true;
            androidCamera.mCapturing = b;
            return true;
        }
        catch (Exception ex2) {
            return true;
        }
    }
    
    public void stopCapture() {
        if (this.mCamera != null) {
            this.mCamera.setPreviewCallback((Camera$PreviewCallback)null);
            this.mCamera.stopPreview();
            this.mCallbackBuffer = null;
            this.mBuffer1 = null;
            this.mBuffer2 = null;
        }
        this.mCapturing = false;
    }
    
    class PreviewSurfaceCallback implements SurfaceHolder$Callback
    {
        public void surfaceChanged(final SurfaceHolder surfaceHolder, final int n, final int n2, final int n3) {
        }
        
        public void surfaceCreated(final SurfaceHolder surfaceHolder) {
            AndroidCamera.this.mPreviewSurfaceValid = true;
            if (AndroidCamera.this.mClientId != 0L && AndroidCamera.this.mCallbacksRegistered) {
                AndroidCamera.this.nativeOnCanOpenCamera(AndroidCamera.this.mClientId);
            }
        }
        
        public void surfaceDestroyed(final SurfaceHolder surfaceHolder) {
            AndroidCamera.this.mPreviewSurfaceValid = false;
            if (AndroidCamera.this.mClientId != 0L && AndroidCamera.this.mCallbacksRegistered) {
                AndroidCamera.this.nativeOnShouldCloseCamera(AndroidCamera.this.mClientId);
            }
        }
    }
}
