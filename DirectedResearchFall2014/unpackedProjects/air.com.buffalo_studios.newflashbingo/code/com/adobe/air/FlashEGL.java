package com.adobe.air;

import javax.microedition.khronos.egl.*;
import android.view.*;
import com.adobe.flashruntime.air.*;
import android.app.*;
import android.os.*;

public class FlashEGL
{
    private static int EGL_BUFFER_DESTROYED;
    private static int EGL_BUFFER_PRESERVED;
    private static int EGL_CONTEXT_CLIENT_VERSION;
    private static int EGL_COVERAGE_BUFFERS_NV;
    private static int EGL_COVERAGE_SAMPLES_NV;
    private static int EGL_OPENGL_ES2_BIT;
    private static int EGL_SWAP_BEHAVIOR;
    private static String TAG;
    private static int[] cfgAttrs;
    private static int[] fbPBufferSurfaceAttrs;
    private static int[] fbWindowSurfaceOffAttrs;
    private static int[] fbWindowSurfaceOnAttrs;
    private int kAlphaBits;
    private int kBlueBits;
    private int kColorBits;
    private int kConfigId;
    private int kCsaaSamp;
    private int kDepthBits;
    private int kGreenBits;
    private int kMsaaSamp;
    private int kNumElements;
    private int kRedBits;
    private int kStencilBits;
    private int kSurfaceTypes;
    private int kSwapPreserve;
    private int kSwapPreserveDefault;
    private int kSwapPreserveOff;
    private int kSwapPreserveOn;
    private EGL10 mEgl;
    private EGLConfig mEglConfig;
    private int mEglConfigCount;
    private EGLConfig[] mEglConfigList;
    volatile EGLContext mEglContext;
    private EGLDisplay mEglDisplay;
    private EGLSurface mEglPbufferSurface;
    private EGLSurface mEglSurface;
    private int[] mEglVersion;
    private EGLSurface mEglWindowSurface;
    private boolean mIsARGBSurface;
    private boolean mIsBufferPreserve;
    private boolean mIsGPUOOM;
    private int mPbufferConfigCount;
    private int mPixmapConfigCount;
    private int mWindowConfigCount;
    
    static {
        FlashEGL.TAG = "FlashEGL";
        FlashEGL.EGL_CONTEXT_CLIENT_VERSION = 12440;
        FlashEGL.EGL_OPENGL_ES2_BIT = 4;
        FlashEGL.EGL_COVERAGE_BUFFERS_NV = 12512;
        FlashEGL.EGL_COVERAGE_SAMPLES_NV = 12513;
        FlashEGL.EGL_SWAP_BEHAVIOR = 12435;
        FlashEGL.EGL_BUFFER_PRESERVED = 12436;
        FlashEGL.EGL_BUFFER_DESTROYED = 12437;
        FlashEGL.cfgAttrs = new int[] { 12339, -1, 12325, -1, 12326, -1, 12352, FlashEGL.EGL_OPENGL_ES2_BIT, 12344 };
        FlashEGL.fbWindowSurfaceOnAttrs = new int[] { FlashEGL.EGL_SWAP_BEHAVIOR, FlashEGL.EGL_BUFFER_PRESERVED, 12344 };
        FlashEGL.fbWindowSurfaceOffAttrs = new int[] { FlashEGL.EGL_SWAP_BEHAVIOR, FlashEGL.EGL_BUFFER_DESTROYED, 12344 };
        FlashEGL.fbPBufferSurfaceAttrs = new int[] { 12375, 64, 12374, 64, 12344 };
    }
    
    public FlashEGL() {
        super();
        this.kSurfaceTypes = 0;
        this.kConfigId = 1;
        this.kRedBits = 2;
        this.kGreenBits = 3;
        this.kBlueBits = 4;
        this.kAlphaBits = 5;
        this.kColorBits = 6;
        this.kDepthBits = 7;
        this.kStencilBits = 8;
        this.kMsaaSamp = 9;
        this.kCsaaSamp = 10;
        this.kSwapPreserve = 11;
        this.kNumElements = 12;
        this.kSwapPreserveDefault = 0;
        this.kSwapPreserveOn = 1;
        this.kSwapPreserveOff = 2;
        this.mEgl = null;
        this.mEglDisplay = EGL10.EGL_NO_DISPLAY;
        this.mEglSurface = EGL10.EGL_NO_SURFACE;
        this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
        this.mEglPbufferSurface = EGL10.EGL_NO_SURFACE;
        this.mEglConfig = null;
        this.mEglConfigList = null;
        this.mEglVersion = null;
        this.mEglConfigCount = 0;
        this.mWindowConfigCount = 0;
        this.mPixmapConfigCount = 0;
        this.mPbufferConfigCount = 0;
        this.mEglContext = EGL10.EGL_NO_CONTEXT;
        this.mIsARGBSurface = false;
        this.mIsGPUOOM = false;
        this.mIsBufferPreserve = false;
    }
    
    private int XX(final int n, final int n2) {
        return n2 + n * this.kNumElements;
    }
    
    private int checkEglError(final String s) {
        final int eglGetError = this.mEgl.eglGetError();
        if (eglGetError != 12288 && !this.mIsGPUOOM && eglGetError == 12291) {
            if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
                this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglWindowSurface);
                final int eglGetError2 = this.mEgl.eglGetError();
                this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
                this.mEglSurface = EGL10.EGL_NO_SURFACE;
                if (eglGetError2 == 12288) {}
                this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
                this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
                if (this.mEgl.eglGetError() != 12288) {}
            }
            if (this.mEglPbufferSurface != EGL10.EGL_NO_SURFACE && this.mEglContext != EGL10.EGL_NO_CONTEXT) {
                this.mEglSurface = this.mEglPbufferSurface;
                this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext);
                if (this.mEgl.eglGetError() != 12288) {}
            }
            this.mIsGPUOOM = true;
        }
        return eglGetError;
    }
    
    public boolean ChooseConfig(final EGLDisplay eglDisplay, final int[] array, final EGLConfig[] array2, final int n, final int[] array3) {
        if (!this.IsEmulator()) {
            return this.mEgl.eglChooseConfig(eglDisplay, array, array2, n, array3);
        }
        final int[] array4 = { 0 };
        this.mEgl.eglGetConfigs(eglDisplay, (EGLConfig[])null, 0, array4);
        final int n2 = array4[0];
        final EGLConfig[] array5 = new EGLConfig[n2];
        this.mEgl.eglGetConfigs(eglDisplay, array5, n2, array4);
        int length = array.length;
        if (array.length % 2 != 0) {
            length = array.length - 1;
        }
        int n3 = 0;
        for (int i = 0; i < n2; ++i) {
            int j;
            for (j = 0; j < length; j += 2) {
                if (array[j + 1] != -1) {
                    final int[] array6 = { 0 };
                    this.mEgl.eglGetConfigAttrib(eglDisplay, array5[i], array[j], array6);
                    if ((array6[0] & array[j + 1]) != array[j + 1]) {
                        break;
                    }
                }
            }
            if (j == length) {
                if (array2 != null && n3 < n) {
                    array2[n3] = array5[i];
                }
                ++n3;
            }
        }
        array3[0] = n3;
        return true;
    }
    
    public int CreateDummySurfaceAndContext() {
        if (this.mEglDisplay == EGL10.EGL_NO_DISPLAY) {
            return 12296;
        }
        if (this.mEglContext != EGL10.EGL_NO_CONTEXT) {
            if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
                this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglWindowSurface, this.mEglWindowSurface, this.mEglContext);
                return 12288;
            }
            if (this.mEglPbufferSurface != EGL10.EGL_NO_SURFACE) {
                this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglPbufferSurface, this.mEglPbufferSurface, this.mEglContext);
                return 12288;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            this.mEgl.eglDestroyContext(this.mEglDisplay, this.mEglContext);
            this.mEglContext = EGL10.EGL_NO_CONTEXT;
        }
        final int[] array = { 0 };
        final EGLConfig[] array2 = { null };
        FlashEGL.cfgAttrs[1] = 1;
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, array2, 1, array);
        FlashEGL.cfgAttrs[1] = -1;
        if (array[0] == 0) {
            return 12294;
        }
        final int[] array3 = { FlashEGL.EGL_CONTEXT_CLIENT_VERSION, 2, 12344 };
        this.checkEglError("Before eglCreateContext");
        this.mEglContext = this.mEgl.eglCreateContext(this.mEglDisplay, array2[0], EGL10.EGL_NO_CONTEXT, array3);
        this.checkEglError("After eglCreateContext");
        if (this.mEglContext == EGL10.EGL_NO_CONTEXT) {
            return 12294;
        }
        this.checkEglError("Before eglCreatePbufferSurface");
        this.mEglPbufferSurface = this.mEgl.eglCreatePbufferSurface(this.mEglDisplay, array2[0], FlashEGL.fbPBufferSurfaceAttrs);
        this.checkEglError("After eglCreatePbufferSurface");
        if (this.mEglPbufferSurface == EGL10.EGL_NO_SURFACE) {
            return 12294;
        }
        this.checkEglError("Before eglMakeCurrent");
        this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglPbufferSurface, this.mEglPbufferSurface, this.mEglContext);
        this.checkEglError("After eglMakeCurrent");
        return 12288;
    }
    
    public int CreateGLContext(final boolean b) {
        if (this.mEglConfig == null) {
            return 12293;
        }
        if (this.mEglContext != EGL10.EGL_NO_CONTEXT && !b) {
            return 12288;
        }
        final int[] array = { FlashEGL.EGL_CONTEXT_CLIENT_VERSION, 2, 12344 };
        if (b) {
            final EGLContext mEglContext = this.mEglContext;
            this.checkEglError("Before eglCreateContext");
            this.mEglContext = this.mEgl.eglCreateContext(this.mEglDisplay, this.mEglConfig, mEglContext, array);
            this.checkEglError("After eglCreateContext");
            this.mEgl.eglDestroyContext(this.mEglDisplay, mEglContext);
            this.checkEglError("After eglDestroyContext");
        }
        else {
            this.checkEglError("Before eglCreateContext");
            this.mEglContext = this.mEgl.eglCreateContext(this.mEglDisplay, this.mEglConfig, EGL10.EGL_NO_CONTEXT, array);
            this.checkEglError("After eglCreateContext");
        }
        if (this.mEglContext == EGL10.EGL_NO_CONTEXT) {
            return 12294;
        }
        if (EGL10.EGL_NO_SURFACE == this.mEglPbufferSurface) {
            this.checkEglError("Before eglCreatePbufferSurface");
            this.mEglPbufferSurface = this.mEgl.eglCreatePbufferSurface(this.mEglDisplay, this.mEglConfig, FlashEGL.fbPBufferSurfaceAttrs);
            this.checkEglError("After eglCreatePbufferSurface");
        }
        return 12288;
    }
    
    public int CreateWindowSurface(final SurfaceView surfaceView, final int n) {
        if (this.mIsGPUOOM) {
            return 12291;
        }
        final boolean b = surfaceView instanceof AIRWindowSurfaceView;
        if (!(surfaceView instanceof VideoViewAIR) && !(surfaceView instanceof AIRStage3DSurfaceView) && !b) {
            return 12301;
        }
        if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
            this.mEglSurface = this.mEglWindowSurface;
            return this.MakeGLCurrent();
        }
        while (true) {
            Label_0390: {
                int n2;
                if (n == this.kSwapPreserveOn) {
                    this.checkEglError("Before eglCreateWindowSurface");
                    this.mEglWindowSurface = this.mEgl.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, (Object)surfaceView.getHolder(), FlashEGL.fbWindowSurfaceOnAttrs);
                    if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
                        break Label_0390;
                    }
                    this.checkEglError("After eglCreateWindowSurface");
                    n2 = 0;
                }
                else {
                    if (n != this.kSwapPreserveOff) {
                        break Label_0390;
                    }
                    this.checkEglError("Before eglCreateWindowSurface");
                    this.mEglWindowSurface = this.mEgl.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, (Object)surfaceView.getHolder(), FlashEGL.fbWindowSurfaceOffAttrs);
                    if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
                        break Label_0390;
                    }
                    this.checkEglError("After eglCreateWindowSurface");
                    n2 = 0;
                }
                if (this.mEglWindowSurface == EGL10.EGL_NO_SURFACE) {
                    this.checkEglError("Before eglCreateWindowSurface");
                    this.mEglWindowSurface = this.mEgl.eglCreateWindowSurface(this.mEglDisplay, this.mEglConfig, (Object)surfaceView.getHolder(), (int[])null);
                    final int checkEglError = this.checkEglError("After eglCreateWindowSurface");
                    if (checkEglError != 12288) {
                        return checkEglError;
                    }
                }
                if (this.mEglWindowSurface == EGL10.EGL_NO_SURFACE) {
                    return 12301;
                }
                this.mEglSurface = this.mEglWindowSurface;
                if (b) {
                    ((AIRWindowSurfaceView)surfaceView).setFlashEGL(this);
                    final Activity activity = ((AIRWindowSurfaceView)surfaceView).getActivityWrapper().getActivity();
                    if (activity != null) {
                        activity.getWindow().setSoftInputMode(34);
                    }
                }
                final int[] array = { 0 };
                this.mIsBufferPreserve = false;
                if (n2 != 0 && this.mEgl.eglQuerySurface(this.mEglDisplay, this.mEglSurface, FlashEGL.EGL_SWAP_BEHAVIOR, array)) {
                    this.mIsBufferPreserve = (array[0] == FlashEGL.EGL_BUFFER_PRESERVED);
                }
                return this.MakeGLCurrent();
            }
            int n2 = 1;
            continue;
        }
    }
    
    public boolean DestroyGLContext() {
        if (this.mEglContext == EGL10.EGL_NO_CONTEXT || this.mEglDisplay == EGL10.EGL_NO_DISPLAY) {
            return false;
        }
        this.checkEglError("DestroyGLContext: Before eglMakeCurrent for noSurface");
        this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.checkEglError("DestroyGLContext: After eglMakeCurrent");
        if (this.mEglPbufferSurface != EGL10.EGL_NO_SURFACE) {
            this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglPbufferSurface);
            this.mEglPbufferSurface = EGL10.EGL_NO_SURFACE;
        }
        this.checkEglError("Before eglDestroyContext");
        final boolean eglDestroyContext = this.mEgl.eglDestroyContext(this.mEglDisplay, this.mEglContext);
        this.checkEglError("After eglDestroyContext");
        this.mEglContext = EGL10.EGL_NO_CONTEXT;
        return eglDestroyContext;
    }
    
    public boolean DestroyWindowSurface() {
        if (this.mEglWindowSurface == EGL10.EGL_NO_SURFACE) {
            return false;
        }
        this.checkEglError("Before eglMakeCurrent");
        this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        if (12288 != this.checkEglError("After eglMakeCurrent")) {
            return false;
        }
        this.checkEglError("Before eglDestroySurface (window)");
        this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglWindowSurface);
        if (12288 != this.checkEglError("After eglDestroySurface (window)")) {
            return false;
        }
        if (this.mEglSurface == this.mEglWindowSurface) {
            this.mEglSurface = EGL10.EGL_NO_SURFACE;
        }
        this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
        if (this.mEglPbufferSurface != EGL10.EGL_NO_SURFACE && this.mEglContext != EGL10.EGL_NO_CONTEXT) {
            this.mEglSurface = this.mEglPbufferSurface;
            this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext);
            if (12288 != this.checkEglError("After eglMakeCurrent")) {
                return false;
            }
        }
        return true;
    }
    
    public void FlashEGL() {
        this.mEgl = null;
        this.mEglDisplay = EGL10.EGL_NO_DISPLAY;
        this.mEglConfig = null;
        this.mEglContext = EGL10.EGL_NO_CONTEXT;
        this.mEglSurface = EGL10.EGL_NO_SURFACE;
        this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
        this.mEglPbufferSurface = EGL10.EGL_NO_SURFACE;
        this.mIsARGBSurface = false;
    }
    
    public int[] GetConfigs(final boolean b, final boolean b2) {
        final int[] array = new int[this.mEglConfigCount * this.kNumElements];
        final int[] array2 = { 0 };
        final int[] array3 = { 0 };
        this.mEglConfigList = new EGLConfig[this.mEglConfigCount];
        this.checkEglError("Before eglChooseConfig");
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, this.mEglConfigList, this.mEglConfigCount, array2);
        this.checkEglError("After eglChooseConfig");
        final int mEglConfigCount = array2[0];
        this.mEglConfigCount = mEglConfigCount;
        for (int i = 0; i < mEglConfigCount; ++i) {
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12339, array3);
            array[this.XX(i, this.kSurfaceTypes)] = array3[0];
            array[this.XX(i, this.kConfigId)] = i;
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12324, array3);
            array[this.XX(i, this.kRedBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12323, array3);
            array[this.XX(i, this.kGreenBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12322, array3);
            array[this.XX(i, this.kBlueBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12321, array3);
            array[this.XX(i, this.kAlphaBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12320, array3);
            array[this.XX(i, this.kColorBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12325, array3);
            array[this.XX(i, this.kDepthBits)] = array3[0];
            this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12326, array3);
            array[this.XX(i, this.kStencilBits)] = array3[0];
            array[this.XX(i, this.kCsaaSamp)] = 0;
            array[this.XX(i, this.kMsaaSamp)] = 0;
            if (b) {
                this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], FlashEGL.EGL_COVERAGE_SAMPLES_NV, array3);
                if (array3[0] != 1) {
                    array[this.XX(i, this.kCsaaSamp)] = array3[0];
                }
            }
            else {
                this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfigList[i], 12337, array3);
                if (array3[0] != 1) {
                    array[this.XX(i, this.kMsaaSamp)] = array3[0];
                }
            }
            if (b2) {
                final int xx = this.XX(i, this.kSwapPreserve);
                int n;
                if ((this.mEglVersion[0] > 1 || this.mEglVersion[1] > 3) && (array[this.XX(i, this.kSurfaceTypes)] & FlashEGL.EGL_BUFFER_PRESERVED) != 0x0) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                array[xx] = n;
            }
            else {
                array[this.XX(i, this.kSwapPreserve)] = 0;
            }
        }
        return array;
    }
    
    public int[] GetNumConfigs() {
        final int[] array = new int[4];
        final int[] array2 = { 0 };
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, null, 0, array2);
        final int mEglConfigCount = array2[0];
        array[0] = mEglConfigCount;
        this.mEglConfigCount = mEglConfigCount;
        FlashEGL.cfgAttrs[1] = 4;
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, null, 0, array2);
        final int mWindowConfigCount = array2[0];
        array[1] = mWindowConfigCount;
        this.mWindowConfigCount = mWindowConfigCount;
        FlashEGL.cfgAttrs[1] = 2;
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, null, 0, array2);
        final int mPixmapConfigCount = array2[0];
        array[2] = mPixmapConfigCount;
        this.mPixmapConfigCount = mPixmapConfigCount;
        FlashEGL.cfgAttrs[1] = 1;
        this.ChooseConfig(this.mEglDisplay, FlashEGL.cfgAttrs, null, 0, array2);
        final int mPbufferConfigCount = array2[0];
        array[3] = mPbufferConfigCount;
        this.mPbufferConfigCount = mPbufferConfigCount;
        FlashEGL.cfgAttrs[1] = -1;
        return array;
    }
    
    public int GetSurfaceHeight() {
        final int[] array = { 0 };
        this.mEgl.eglQuerySurface(this.mEglDisplay, this.mEglSurface, 12374, array);
        return array[0];
    }
    
    public int GetSurfaceWidth() {
        final int[] array = { 0 };
        this.mEgl.eglQuerySurface(this.mEglDisplay, this.mEglSurface, 12375, array);
        return array[0];
    }
    
    public boolean HasGLContext() {
        return this.mEglContext != EGL10.EGL_NO_CONTEXT;
    }
    
    public int InitEGL() {
        int n;
        if (this.mEglContext != EGL10.EGL_NO_CONTEXT) {
            n = 12288;
        }
        else {
            this.mEgl = (EGL10)EGLContext.getEGL();
            this.checkEglError("Before eglGetDisplay");
            this.mEglDisplay = this.mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            n = this.checkEglError("After eglGetDisplay");
            if (12288 == n) {
                this.mEglVersion = new int[2];
                this.checkEglError("Before eglInitialize");
                this.mEgl.eglInitialize(this.mEglDisplay, this.mEglVersion);
                n = this.checkEglError("After eglInitialize");
                if (12288 == n) {
                    return 12288;
                }
            }
        }
        return n;
    }
    
    public boolean IsARGBSurface() {
        return this.mIsARGBSurface;
    }
    
    public boolean IsBufferPreserve() {
        return this.mIsBufferPreserve;
    }
    
    public boolean IsEmulator() {
        return Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic");
    }
    
    public int MakeGLCurrent() {
        if (this.mEglContext == EGL10.EGL_NO_CONTEXT) {
            return 12294;
        }
        if (this.mEglSurface == EGL10.EGL_NO_SURFACE) {
            return 12301;
        }
        if (this.mEglDisplay == EGL10.EGL_NO_DISPLAY) {
            return 12296;
        }
        this.checkEglError("Before eglMakeCurrent");
        this.mEgl.eglMakeCurrent(this.mEglDisplay, this.mEglSurface, this.mEglSurface, this.mEglContext);
        return this.checkEglError("After eglMakeCurrent");
    }
    
    public void ReleaseGPUResources() {
        if (this.mEglContext == EGL10.EGL_NO_CONTEXT) {
            return;
        }
        this.checkEglError("Before eglMakeCurrent");
        this.mEgl.eglMakeCurrent(this.mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        this.checkEglError("After eglMakeCurrent");
        synchronized (this.mEgl) {
            this.checkEglError("Before eglDestroySurface");
            if (this.mEglWindowSurface != EGL10.EGL_NO_SURFACE) {
                this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglWindowSurface);
                this.mEglWindowSurface = EGL10.EGL_NO_SURFACE;
            }
            this.checkEglError("After eglDestroySurface (window)");
            // monitorexit(this.mEgl)
            if (this.mEglPbufferSurface != EGL10.EGL_NO_SURFACE) {
                this.checkEglError("Before eglDestroySurface (pbuffer)");
                this.mEgl.eglDestroySurface(this.mEglDisplay, this.mEglPbufferSurface);
                this.checkEglError("After eglDestroySurface (pbuffer)");
                this.mEglPbufferSurface = EGL10.EGL_NO_SURFACE;
            }
            this.checkEglError("Before eglDestroyContext");
            this.mEgl.eglDestroyContext(this.mEglDisplay, this.mEglContext);
            this.checkEglError("After eglDestroyContext");
            this.mEglContext = EGL10.EGL_NO_CONTEXT;
            this.mEglSurface = EGL10.EGL_NO_SURFACE;
        }
    }
    
    public void SetConfig(final int n) {
        this.mEglConfig = this.mEglConfigList[n];
        final int[] array = { 0 };
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12324, array);
        final int n2 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12323, array);
        final int n3 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12322, array);
        final int n4 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12321, array);
        final int n5 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12325, array);
        final int n6 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12326, array);
        final int n7 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12337, array);
        final int n8 = array[0];
        this.mEgl.eglGetConfigAttrib(this.mEglDisplay, this.mEglConfig, 12338, array);
        final int n9 = array[0];
    }
    
    public void SwapEGLBuffers() {
        if (12288 != this.MakeGLCurrent()) {
            return;
        }
        this.checkEglError("Before eglSwapBuffers");
        this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface);
        this.checkEglError("After eglSwapBuffers");
    }
    
    public void TerminateEGL() {
        if (this.mEgl != null && this.mEglDisplay != EGL10.EGL_NO_DISPLAY) {
            this.mEgl.eglTerminate(this.mEglDisplay);
        }
        this.mEglDisplay = EGL10.EGL_NO_DISPLAY;
    }
}
