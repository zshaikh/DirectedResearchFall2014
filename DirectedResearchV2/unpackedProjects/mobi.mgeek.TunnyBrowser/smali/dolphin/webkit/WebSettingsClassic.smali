.class public Ldolphin/webkit/WebSettingsClassic;
.super Ldolphin/webkit/WebSettings;
.source "WebSettingsClassic.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final ACCEPT_LANG_FOR_US_LOCALE:Ljava/lang/String; = "en-US"

.field static final CACHE_API_PATH:Ljava/lang/String; = "imagecache"

.field static final CONF_API_PATH:Ljava/lang/String; = "imageclientconf"

.field static final DATA_API_PATH:Ljava/lang/String; = "image"

.field private static final DEFAULT_CACHE_LOG_FILE:Ljava/lang/String; = "cachelog.log"

.field private static final DEFAULT_NATIVE_STACK_FILE:Ljava/lang/String; = "minidump.dmp"

.field private static final DEFAULT_REPORT_DIR:Ljava/lang/String; = "pnr_report"

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field static final ENABLE_SERVER_TRANSCODE_TIMEOUT:I = 0xa

.field static final IMAGE_QUALITY_DEFAULT:I = 0x4b

.field static final IMAGE_QUALITY_HIGH:I = 0x3c

.field static final IMAGE_QUALITY_LOW:I = 0x1e

.field static final IMAGE_QUALITY_MID:I = 0x2d

.field static final IMAGE_SERVER_CN:Ljava/lang/String; = "http://image.dolphin-browser.cn"

.field static final IMAGE_SERVER_DISABLED:Ljava/lang/String; = ""

.field static final IMAGE_SERVER_EN:Ljava/lang/String; = "http://image.dolphin-browser.cn"

.field static final IMAGE_SERVER_LOCAL:Ljava/lang/String; = "http://10.2.8.164"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field private static final LOGTAG:Ljava/lang/String; = "WebSettingsClassic"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "4.0.4"

.field static final TRANSCODE_SERVER:Ljava/lang/String; = "http://transcode.dolphin-transcode.com"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;

.field public static sUserAgent:Ljava/lang/String;


# instance fields
.field private mAcceleratedCanvas2dEnabled:Z

.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdBlockOption:I

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAllowFileAccessFromFileURLs:Z

.field private mAllowUniversalAccessFromFileURLs:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mAutoAlignEnabled:Z

.field private mAutoFillEnabled:Z

.field private mAutoFillProfile:Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;

.field private mAutoFitPage:Z

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Ldolphin/webkit/BrowserFrame;

.field private mBrowserModeInNight:Z

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mCustomErrorPageEnabled:Z

.field private mDNSPrefetchEnabled:Z

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

.field private mDelaySubFrameLoading:Z

.field private mDisplayZoomControls:Z

.field private mDomStorageEnabled:Z

.field private mDoubleTapZoom:I

.field private mEnableAdBlock:Z

.field private mEnableAutoPager:Z

.field private mEnableDoubleTapInMobileSite:Z

.field private mEnableKernelTranscoding:Z

.field private mEnableResourceOptimization:Z

.field private mEnableServerTranscodeForWeakNetwork:Z

.field private mEnableSmartReading:Z

.field private mEnableSmoothTransition:Z

.field private mEnableVideoCache:Z

.field private mEnableVideoPlayer:Z

.field private final mEventHandler:Ldolphin/webkit/hr;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mForceChangeTextSize:Z

.field private mForceUserScalable:Z

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mHardwareAccelSkia:Z

.field private mImageCompressionQuality:I

.field private mImageCompressionServerURI:Ljava/lang/String;

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mJavascriptCanAccessCrossOrigin:Z

.field private mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLinkPrefetchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMaximumDecodedImageSize:J

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNativeCLogDumpFile:Ljava/lang/String;

.field private mNativeCrashDumpFile:Ljava/lang/String;

.field private mNativeStackDumpFile:Ljava/lang/String;

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPasswordEchoEnabled:Z

.field private mPluginState:Ldolphin/webkit/WebSettings$PluginState;

.field private mPostSyncObservers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ldolphin/webkit/ht;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateBrowsingEnabled:Z

.field private mReadableFontSize:I

.field private mReadableLineHeight:I

.field private mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShowProgressWhileBackOrForward:Z

.field private mShowVisualIndicator:Z

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSyncPending:Z

.field private mSyntheticLinksEnabled:Z

.field private mTextSize:I

.field private mTranscodeServerURI:Ljava/lang/String;

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundForOverscroll:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebGLEnabled:Z

.field private mWebView:Ldolphin/webkit/WebViewClassic;

.field private mWebpSupported:Z

.field private mWorkersEnabled:Z

.field private mXSSAuditorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x3

    sput v0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ldolphin/webkit/WebViewClassic;)V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 394
    invoke-direct {p0}, Ldolphin/webkit/WebSettings;-><init>()V

    .line 68
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 78
    sget-object v0, Ldolphin/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    .line 79
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFitPage:Z

    .line 81
    const/16 v0, 0x64

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    .line 82
    const-string v0, "sans-serif"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 83
    const-string v0, "monospace"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 84
    const-string v0, "sans-serif"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 85
    const-string v0, "serif"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 86
    const-string v0, "cursive"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 87
    const-string v0, "fantasy"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 92
    iput v4, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 93
    iput v4, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 94
    iput v7, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 95
    const/16 v0, 0xd

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 100
    const/4 v0, 0x5

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 101
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 102
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 113
    const-string v0, "http://transcode.dolphin-transcode.com"

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTranscodeServerURI:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z

    .line 134
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;

    .line 137
    const/16 v0, 0x4b

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionQuality:I

    .line 139
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z

    .line 140
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z

    .line 141
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z

    .line 142
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableResourceOptimization:Z

    .line 143
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mDelaySubFrameLoading:Z

    .line 144
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mWebpSupported:Z

    .line 153
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z

    .line 154
    iput v7, p0, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I

    .line 157
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z

    .line 160
    const/16 v0, 0x23

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I

    .line 161
    const/16 v0, 0x2a

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I

    .line 164
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 165
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 166
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 167
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    .line 168
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 169
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 170
    sget-object v0, Ldolphin/webkit/WebSettings$PluginState;->OFF:Ldolphin/webkit/WebSettings$PluginState;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    .line 171
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 172
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDoubleTree:Z

    .line 173
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 174
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 175
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 176
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Ldolphin/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 177
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 178
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 180
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 181
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 182
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 183
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 184
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 185
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 186
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 188
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceleratedCanvas2dEnabled:Z

    .line 189
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 190
    iput-object v3, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 194
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 195
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 199
    sget-object v0, Ldolphin/webkit/WebSettings$ZoomDensity;->MEDIUM:Ldolphin/webkit/WebSettings$ZoomDensity;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    .line 200
    sget-object v0, Ldolphin/webkit/WebSettings$RenderPriority;->NORMAL:Ldolphin/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 202
    const/16 v0, 0x64

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 203
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 204
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 205
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 206
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 207
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 208
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mNavDump:Z

    .line 209
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 210
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 211
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 212
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 213
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 214
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 215
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 216
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mForceUserScalable:Z

    .line 217
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    .line 219
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    .line 220
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mShowProgressWhileBackOrForward:Z

    .line 221
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    .line 222
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    .line 223
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoPlayer:Z

    .line 224
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    .line 225
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    .line 226
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCrashDumpFile:Ljava/lang/String;

    .line 227
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeStackDumpFile:Ljava/lang/String;

    .line 228
    const-string v0, ""

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCLogDumpFile:Ljava/lang/String;

    .line 229
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mJavascriptCanAccessCrossOrigin:Z

    .line 230
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mForceChangeTextSize:Z

    .line 233
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPostSyncObservers:Ljava/util/Vector;

    .line 289
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 395
    new-instance v0, Ldolphin/webkit/hr;

    invoke-direct {v0, p0, v3}, Ldolphin/webkit/hr;-><init>(Ldolphin/webkit/WebSettingsClassic;Ldolphin/webkit/hq;)V

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEventHandler:Ldolphin/webkit/hr;

    .line 396
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    .line 397
    iput-object p2, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    .line 398
    sget v0, Ldolphin/webkit/R$string;->default_text_encoding:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 400
    sget-object v0, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 402
    sget-object v4, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v4

    .line 403
    :try_start_0
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 404
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 407
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 408
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 410
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 415
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v7, :cond_1

    .line 416
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 417
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 420
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "show_password"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    iput-boolean v2, p0, Ldolphin/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 431
    new-instance v2, Ljava/io/File;

    const-string v4, "pnr_report"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 433
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 436
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v2, "pnr_report"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 438
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v2, "minidump.dmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeStackDumpFile:Ljava/lang/String;

    .line 440
    new-instance v1, Ljava/io/File;

    const-string v2, "cachelog.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCLogDumpFile:Ljava/lang/String;

    .line 441
    return-void

    .line 404
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    move v0, v2

    .line 410
    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    iput-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mPasswordEchoEnabled:Z

    goto :goto_1

    :cond_7
    move-object v0, v3

    goto :goto_2
.end method

.method static synthetic access$000(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Ldolphin/webkit/WebSettingsClassic;I)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ldolphin/webkit/WebSettingsClassic;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Ldolphin/webkit/WebSettingsClassic;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$300(Ldolphin/webkit/WebSettingsClassic;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPostSyncObservers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$500(Ldolphin/webkit/WebSettingsClassic;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 57
    sget v0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$700(Ldolphin/webkit/WebSettingsClassic;)Ldolphin/webkit/WebSettings$RenderPriority;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 559
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 563
    if-eqz v0, :cond_0

    .line 564
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    return-void
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    if-nez p0, :cond_1

    .line 542
    const/4 p0, 0x0

    .line 554
    :cond_0
    :goto_0
    return-object p0

    .line 544
    :cond_1
    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    const-string p0, "he"

    goto :goto_0

    .line 547
    :cond_2
    const-string v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    const-string p0, "id"

    goto :goto_0

    .line 550
    :cond_3
    const-string v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const-string p0, "yi"

    goto :goto_0
.end method

.method private createSettingsJsonDemo()Lorg/json/JSONObject;
    .locals 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2474
    new-instance v0, Ldolphin/webkit/lb;

    invoke-direct {v0}, Ldolphin/webkit/lb;-><init>()V

    .line 2475
    invoke-virtual {v0}, Ldolphin/webkit/lb;->a()V

    .line 2476
    const-string v1, "dolphintest1"

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8fd9\u662f1\u4e2a\u6d4b\u8bd5CheckBox"

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v0}, Ldolphin/webkit/lb;->c()V

    .line 2478
    const-string v1, "dolphintest2"

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8fd9\u662f2\u4e2a\u6d4b\u8bd5CheckBox"

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v0}, Ldolphin/webkit/lb;->c()V

    .line 2480
    const-string v1, "dolphintest3"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8fdc"

    const-string v4, "\u671b\u8fdc\u955c"

    new-array v5, v11, [Ljava/lang/String;

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "label"

    const-string v8, "\u8fdc"

    invoke-virtual {v0, v7, v8}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "value"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v6}, Ldolphin/webkit/lb;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ldolphin/webkit/lb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "label"

    const-string v8, "\u8fd1"

    invoke-virtual {v0, v7, v8}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "value"

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v0, v6}, Ldolphin/webkit/lb;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ldolphin/webkit/lb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v5}, Ldolphin/webkit/lb;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/lb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    invoke-virtual {v0}, Ldolphin/webkit/lb;->b()V

    .line 2491
    const/4 v2, 0x0

    .line 2493
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Ldolphin/webkit/lb;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 2497
    :goto_0
    return-object v0

    .line 2494
    :catch_0
    move-exception v0

    .line 2495
    const-string v0, "WebSettingsClassic"

    const-string v1, "create json error"

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1

    .line 522
    :try_start_0
    sget-object v0, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 523
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    invoke-static {v1, v0}, Ldolphin/webkit/WebSettingsClassic;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 527
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 529
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_0
    const-string v0, "en-US"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 523
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 576
    monitor-enter p0

    :try_start_0
    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 577
    :try_start_1
    sget-object v0, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 578
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 579
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 582
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 583
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 585
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 595
    :goto_0
    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 597
    if-eqz v4, :cond_5

    .line 598
    invoke-static {v4}, Ldolphin/webkit/WebSettingsClassic;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    :cond_0
    :goto_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    const-string v0, "REL"

    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 612
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 613
    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    :cond_1
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 618
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 619
    const-string v4, " Build/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    :cond_2
    sget v0, Ldolphin/webkit/R$string;->web_user_agent_target_content:I

    invoke-static {v0}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 624
    sget v4, Ldolphin/webkit/R$string;->web_user_agent_browser_product:I

    invoke-static {v4}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 625
    sget v5, Ldolphin/webkit/R$string;->dolphin_web_user_agent:I

    invoke-static {v5}, Ldolphin/webkit/WebKitResources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 626
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v4, v6, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getDolphinVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v1

    const/4 v1, 0x3

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 633
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 634
    if-ltz v5, :cond_6

    const-string v0, ")"

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v4, v0

    .line 635
    :goto_2
    if-ltz v5, :cond_9

    if-le v4, v5, :cond_9

    .line 636
    invoke-static {}, Ldolphin/webkit/JniUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 638
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 639
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 640
    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 641
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 642
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    .line 643
    mul-float v6, v7, v7

    mul-float/2addr v0, v0

    add-float/2addr v0, v6

    .line 649
    const v6, 0x41b23a29

    cmpg-float v0, v0, v6

    if-gez v0, :cond_7

    move v0, v2

    .line 651
    :goto_3
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 653
    const-string v2, "Mozilla/5.0 (%s) AppleWebKit/537.16 (KHTML, like Gecko) Version/4.0%s Safari/537.16"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const-string v0, " Mobile"

    :goto_4
    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 656
    :goto_5
    monitor-exit p0

    return-object v0

    .line 578
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 576
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 589
    :cond_3
    :try_start_5
    const-string v4, "4.0.4"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 593
    :cond_4
    const-string v4, "1.0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 606
    :cond_5
    const-string v0, "en"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 634
    :cond_6
    const/4 v0, -0x1

    move v4, v0

    goto :goto_2

    :cond_7
    move v0, v3

    .line 649
    goto :goto_3

    .line 653
    :cond_8
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_5
.end method

.method private declared-synchronized getDefaultLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 671
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 672
    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "system default locale is null, set to US"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 674
    const-string v1, "WebSettingsClassic"

    invoke-static {v1, v0}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    :cond_0
    monitor-exit p0

    return-object v0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDolphinVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 663
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 664
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :goto_0
    return-object v0

    .line 665
    :catch_0
    move-exception v0

    .line 667
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 2442
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 2447
    :cond_0
    :goto_0
    return p1

    .line 2444
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 2445
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 2453
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 2454
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEventHandler:Ldolphin/webkit/hr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hr;->a(Ldolphin/webkit/hr;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2457
    :cond_0
    monitor-exit p0

    return-void

    .line 2453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1610
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1611
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1619
    :cond_0
    return-void
.end method


# virtual methods
.method addPostSyncObserver(Ldolphin/webkit/ht;)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPostSyncObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPostSyncObservers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public enableSmoothTransition()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    return v0
.end method

.method public declared-synchronized ensurePrefetchUserAgentString()V
    .locals 2

    .prologue
    .line 2022
    monitor-enter p0

    :try_start_0
    sget-object v0, Ldolphin/webkit/WebSettingsClassic;->sUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sUserAgent:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 2023
    sget-object v0, Ldolphin/webkit/WebSettingsClassic;->sUserAgent:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2024
    :cond_0
    monitor-exit p0

    return-void

    .line 2022
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceUserScalable()Z
    .locals 1

    .prologue
    .line 2324
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mForceUserScalable:Z

    return v0
.end method

.method public declared-synchronized getAccelerated2dCanvasEnabled()Z
    .locals 1

    .prologue
    .line 1884
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceleratedCanvas2dEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2055
    monitor-enter p0

    :try_start_0
    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2056
    :try_start_1
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 2057
    sget-object v2, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2058
    sput-object v0, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 2059
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 2061
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2062
    :try_start_2
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 2061
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2055
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdBlockEnabled()Z
    .locals 1

    .prologue
    .line 1454
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAdBlockOption()I
    .locals 1

    .prologue
    .line 1467
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 764
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1925
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1917
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationOrientationConfig()I
    .locals 1

    .prologue
    .line 2333
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    .line 2334
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    return v0
.end method

.method public getAutoAlignEnabled()Z
    .locals 1

    .prologue
    .line 2233
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    return v0
.end method

.method public declared-synchronized getAutoFillEnabled()Z
    .locals 1

    .prologue
    .line 2363
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFillProfile()Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;
    .locals 1

    .prologue
    .line 2374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillProfile:Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoFitPage()Z
    .locals 1

    .prologue
    .line 1080
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFitPage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAutoPagerEnabled()Z
    .locals 1

    .prologue
    .line 1402
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1605
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBrowserModeInNight()Z
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 731
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheLogDumpFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCLogDumpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 2112
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCustomErrorPageEnabled()Z
    .locals 1

    .prologue
    .line 2245
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    return v0
.end method

.method public declared-synchronized getDNSPrefetchEnabled()Z
    .locals 1

    .prologue
    .line 1472
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1829
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1821
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1300
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1280
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1990
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Ldolphin/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public declared-synchronized getDelaySubFrameLoading()Z
    .locals 1

    .prologue
    .line 1428
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDelaySubFrameLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 748
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    return v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1813
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 2378
    sget v0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    return v0
.end method

.method public getDoubleTapZoom()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    return v0
.end method

.method public getEnableDoubleTapInMobileSite()Z
    .locals 1

    .prologue
    .line 2221
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    return v0
.end method

.method public declared-synchronized getEnableResourceOptimization()Z
    .locals 1

    .prologue
    .line 1415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableResourceOptimization:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableServerTranscodeForWeakNetwork()Z
    .locals 1

    .prologue
    .line 1580
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEnableServerTranscodeTimeoutInMS()I
    .locals 1

    .prologue
    .line 1585
    monitor-enter p0

    const/16 v0, 0x2710

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getEnableSmartReadingMode()Z
    .locals 1

    .prologue
    .line 1389
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnableVideoCache()Z
    .locals 1

    .prologue
    .line 2196
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    return v0
.end method

.method public getEnableVideoPlayer()Z
    .locals 1

    .prologue
    .line 2210
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoPlayer:Z

    return v0
.end method

.method public getExpansionSettings()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 2465
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getForceChangeTextSize()Z
    .locals 1

    .prologue
    .line 2317
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mForceChangeTextSize:Z

    return v0
.end method

.method public declared-synchronized getHardwareAccelSkiaEnabled()Z
    .locals 1

    .prologue
    .line 1678
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageCompressionQuality()I
    .locals 1

    .prologue
    .line 1548
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionQuality:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageCompressionServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1971
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1903
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getJavascriptCanAccessCrossOrigin()Z
    .locals 1

    .prologue
    .line 2298
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavascriptCanAccessCrossOrigin:Z

    return v0
.end method

.method public declared-synchronized getKernelTranscodingEnabled()Z
    .locals 1

    .prologue
    .line 1370
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Ldolphin/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 1106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 963
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1332
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 1240
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1260
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeStackDumpFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeStackDumpFile:Ljava/lang/String;

    return-object v0
.end method

.method public getNavDump()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 697
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 2081
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Ldolphin/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1942
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1934
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    sget-object v1, Ldolphin/webkit/WebSettings$PluginState;->ON:Ldolphin/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1951
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2397
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->nativeGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getReadableFontSize()I
    .locals 1

    .prologue
    .line 1493
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReadableLineHeight()I
    .locals 1

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSaveFormData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getShowProgressWhileBackOrForward()Z
    .locals 1

    .prologue
    .line 2403
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mShowProgressWhileBackOrForward:Z

    return v0
.end method

.method public declared-synchronized getShowVisualIndicator()Z
    .locals 1

    .prologue
    .line 1696
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mShowVisualIndicator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTextSize()Ldolphin/webkit/WebSettings$TextSize;
    .locals 8

    .prologue
    .line 897
    monitor-enter p0

    const/4 v3, 0x0

    .line 898
    const v1, 0x7fffffff

    .line 899
    :try_start_0
    invoke-static {}, Ldolphin/webkit/WebSettings$TextSize;->values()[Ldolphin/webkit/WebSettings$TextSize;

    move-result-object v5

    array-length v6, v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v2, v5, v4

    .line 900
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    iget v7, v2, Ldolphin/webkit/WebSettings$TextSize;->value:I

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 901
    if-nez v0, :cond_0

    .line 909
    :goto_1
    monitor-exit p0

    return-object v2

    .line 904
    :cond_0
    if-ge v0, v1, :cond_3

    move-object v1, v2

    .line 899
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v1, v0

    goto :goto_0

    .line 909
    :cond_1
    if-eqz v3, :cond_2

    :goto_3
    move-object v2, v3

    goto :goto_1

    :cond_2
    :try_start_1
    sget-object v3, Ldolphin/webkit/WebSettings$TextSize;->NORMAL:Ldolphin/webkit/WebSettings$TextSize;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method

.method public declared-synchronized getTextZoom()I
    .locals 1

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTranscodeServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1567
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTranscodeServerURI:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 981
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method getUseFixedViewport()Z
    .locals 1

    .prologue
    .line 2146
    invoke-virtual {p0}, Ldolphin/webkit/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 1041
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1015
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    const/4 v0, 0x1

    .line 1022
    :goto_0
    monitor-exit p0

    return v0

    .line 1017
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1018
    const/4 v0, 0x2

    goto :goto_0

    .line 1019
    :cond_1
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 1020
    const/4 v0, 0x0

    goto :goto_0

    .line 1022
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2031
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    if-nez v0, :cond_1

    .line 2034
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2050
    :goto_0
    monitor-exit p0

    return-object v0

    .line 2037
    :cond_1
    const/4 v0, 0x0

    .line 2038
    :try_start_1
    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2039
    :try_start_2
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v2

    .line 2040
    sget-object v3, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2041
    sput-object v2, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 2042
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 2043
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 2044
    const/4 v0, 0x1

    .line 2046
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2047
    if-eqz v0, :cond_3

    .line 2048
    :try_start_3
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2050
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 2046
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2031
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebGLEnabled()Z
    .locals 1

    .prologue
    .line 1908
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebGLEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWebpSupported()Z
    .locals 1

    .prologue
    .line 1441
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebpSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isNarrowColumnLayout()Z
    .locals 2

    .prologue
    .line 2066
    invoke-virtual {p0}, Ldolphin/webkit/WebSettingsClassic;->getLayoutAlgorithm()Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v0

    sget-object v1, Ldolphin/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 2154
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    return v0
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 2438
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAccelerated2dCanvasEnabled(Z)V
    .locals 1

    .prologue
    .line 1892
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceleratedCanvas2dEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1893
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceleratedCanvas2dEnabled:Z

    .line 1894
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    :cond_0
    monitor-exit p0

    return-void

    .line 1892
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdBlockEnabled(Z)V
    .locals 1

    .prologue
    .line 1446
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z

    if-eq v0, p1, :cond_0

    .line 1447
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z

    .line 1448
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    :cond_0
    monitor-exit p0

    return-void

    .line 1446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdBlockOption(I)V
    .locals 1

    .prologue
    .line 1459
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I

    if-eq v0, p1, :cond_0

    .line 1460
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I

    .line 1461
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    :cond_0
    monitor-exit p0

    return-void

    .line 1459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0

    .prologue
    .line 772
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 773
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0

    .prologue
    .line 756
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 757
    return-void
.end method

.method public declared-synchronized setAllowFileAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 1657
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1658
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccessFromFileURLs:Z

    .line 1659
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    :cond_0
    monitor-exit p0

    return-void

    .line 1657
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAllowUniversalAccessFromFileURLs(Z)V
    .locals 1

    .prologue
    .line 1646
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    if-eq v0, p1, :cond_0

    .line 1647
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowUniversalAccessFromFileURLs:Z

    .line 1648
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1650
    :cond_0
    monitor-exit p0

    return-void

    .line 1646
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1

    .prologue
    .line 1756
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1757
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 1758
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1760
    :cond_0
    monitor-exit p0

    return-void

    .line 1756
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2

    .prologue
    .line 1780
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1781
    iput-wide p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 1782
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1784
    :cond_0
    monitor-exit p0

    return-void

    .line 1780
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1769
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1770
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 1771
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1773
    :cond_0
    monitor-exit p0

    return-void

    .line 1769
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAutoAlignEnabled(Z)V
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2239
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    .line 2241
    :cond_0
    return-void
.end method

.method public declared-synchronized setAutoFillEnabled(Z)V
    .locals 2

    .prologue
    .line 2355
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2356
    :goto_0
    iget-boolean v1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    if-eq v1, v0, :cond_0

    .line 2357
    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    .line 2358
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2360
    :cond_0
    monitor-exit p0

    return-void

    .line 2355
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFillProfile(Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;)V
    .locals 1

    .prologue
    .line 2367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillProfile:Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;

    if-eq v0, p1, :cond_0

    .line 2368
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillProfile:Ldolphin/webkit/WebSettingsClassic$AutoFillProfile;

    .line 2369
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2371
    :cond_0
    monitor-exit p0

    return-void

    .line 2367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoFitPage(Z)V
    .locals 1

    .prologue
    .line 1070
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFitPage:Z

    if-eq v0, p1, :cond_0

    .line 1071
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFitPage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1073
    :cond_0
    monitor-exit p0

    return-void

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAutoPagerEnabled(Z)V
    .locals 1

    .prologue
    .line 1394
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z

    if-eq v0, p1, :cond_0

    .line 1395
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z

    .line 1396
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1398
    :cond_0
    monitor-exit p0

    return-void

    .line 1394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 1340
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1341
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkImage:Z

    .line 1342
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    :cond_0
    monitor-exit p0

    return-void

    .line 1340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1

    .prologue
    .line 1593
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1594
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mBlockNetworkLoads:Z

    .line 1595
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->verifyNetworkAccess()V

    .line 1596
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1598
    :cond_0
    monitor-exit p0

    return-void

    .line 1593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBrowserModeInNight(Z)V
    .locals 1

    .prologue
    .line 2185
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    if-eq v0, p1, :cond_0

    .line 2186
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    .line 2187
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->g(Z)V

    .line 2188
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2190
    :cond_0
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2

    .prologue
    .line 722
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 723
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/content/Context;)V

    .line 724
    return-void
.end method

.method public setCacheLogDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2283
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCLogDumpFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2284
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCLogDumpFile:Ljava/lang/String;

    .line 2285
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2287
    :cond_0
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 2102
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mOverrideCacheMode:I

    .line 2103
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2105
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1190
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1191
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mCursiveFontFamily:Ljava/lang/String;

    .line 1192
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :cond_0
    monitor-exit p0

    return-void

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCustomErrorPageEnabled(Z)V
    .locals 1

    .prologue
    .line 2250
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2251
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    .line 2253
    :cond_0
    return-void
.end method

.method public declared-synchronized setDNSPrefetchEnabled(Z)V
    .locals 1

    .prologue
    .line 1477
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1478
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z

    .line 1479
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    :cond_0
    monitor-exit p0

    return-void

    .line 1477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1

    .prologue
    .line 1791
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1792
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 1793
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    :cond_0
    monitor-exit p0

    return-void

    .line 1791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1732
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1733
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 1734
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePathHasBeenSet:Z

    .line 1735
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    :cond_0
    monitor-exit p0

    return-void

    .line 1732
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 2

    .prologue
    .line 1288
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldolphin/webkit/WebSettingsClassic;->pin(I)I

    move-result v0

    .line 1289
    iget v1, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    if-eq v1, v0, :cond_0

    .line 1290
    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 1291
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1293
    :cond_0
    monitor-exit p0

    return-void

    .line 1288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 2

    .prologue
    .line 1268
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldolphin/webkit/WebSettingsClassic;->pin(I)I

    move-result v0

    .line 1269
    iget v1, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I

    if-eq v1, v0, :cond_0

    .line 1270
    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 1271
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1273
    :cond_0
    monitor-exit p0

    return-void

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1979
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1980
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1981
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    :cond_0
    monitor-exit p0

    return-void

    .line 1979
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Ldolphin/webkit/WebSettings$ZoomDensity;)V
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 937
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    .line 938
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Ldolphin/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->d(I)V

    .line 940
    :cond_0
    return-void
.end method

.method public declared-synchronized setDelaySubFrameLoading(Z)V
    .locals 1

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDelaySubFrameLoading:Z

    if-eq v0, p1, :cond_0

    .line 1421
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDelaySubFrameLoading:Z

    .line 1422
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    :cond_0
    monitor-exit p0

    return-void

    .line 1420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDisplayZoomControls(Z)V
    .locals 2

    .prologue
    .line 739
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDisplayZoomControls:Z

    .line 740
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/content/Context;)V

    .line 741
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1

    .prologue
    .line 1802
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1803
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 1804
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1806
    :cond_0
    monitor-exit p0

    return-void

    .line 1802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3

    .prologue
    .line 2382
    sget v0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 2383
    sput p1, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 2385
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEventHandler:Ldolphin/webkit/hr;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hr;->a(Ldolphin/webkit/hr;Landroid/os/Message;)Z

    .line 2388
    :cond_0
    return-void
.end method

.method public setDoubleTapZoom(I)V
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    if-eq v0, p1, :cond_0

    .line 918
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapZoom:I

    .line 919
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1}, Ldolphin/webkit/WebViewClassic;->j(I)V

    .line 921
    :cond_0
    return-void
.end method

.method public setEnableDoubleTapInMobileSite(Z)V
    .locals 1

    .prologue
    .line 2226
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    if-eq v0, p1, :cond_0

    .line 2227
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    .line 2229
    :cond_0
    return-void
.end method

.method public declared-synchronized setEnableResourceOptimization(Z)V
    .locals 1

    .prologue
    .line 1407
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableResourceOptimization:Z

    if-eq v0, p1, :cond_0

    .line 1408
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableResourceOptimization:Z

    .line 1409
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    :cond_0
    monitor-exit p0

    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableServerTranscodeForWeakNetwork(Z)V
    .locals 1

    .prologue
    .line 1572
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z

    if-eq v0, p1, :cond_0

    .line 1573
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z

    .line 1574
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    :cond_0
    monitor-exit p0

    return-void

    .line 1572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnableSmartReadingMode(Z)V
    .locals 1

    .prologue
    .line 1378
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z

    if-eq v0, p1, :cond_0

    .line 1379
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z

    .line 1380
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :cond_0
    monitor-exit p0

    return-void

    .line 1378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnableSmoothTransition(Z)V
    .locals 0

    .prologue
    .line 804
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 805
    return-void
.end method

.method public setEnableVideoCache(Z)V
    .locals 1

    .prologue
    .line 2201
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    if-eq v0, p1, :cond_0

    .line 2202
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    .line 2203
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2205
    :cond_0
    return-void
.end method

.method public setEnableVideoPlayer(Z)V
    .locals 1

    .prologue
    .line 2213
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoPlayer:Z

    if-eq v0, p1, :cond_0

    .line 2214
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoPlayer:Z

    .line 2216
    :cond_0
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1209
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mFantasyFontFamily:Ljava/lang/String;

    .line 1211
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    :cond_0
    monitor-exit p0

    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1133
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mFixedFontFamily:Ljava/lang/String;

    .line 1135
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    :cond_0
    monitor-exit p0

    return-void

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setForceChangeTextSize(Z)V
    .locals 1

    .prologue
    .line 2309
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mForceChangeTextSize:Z

    if-eq v0, p1, :cond_0

    .line 2310
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mForceChangeTextSize:Z

    .line 2311
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2313
    :cond_0
    return-void
.end method

.method public declared-synchronized setForceUserScalable(Z)V
    .locals 1

    .prologue
    .line 2343
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mForceUserScalable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    monitor-exit p0

    return-void

    .line 2343
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1744
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1746
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1747
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    :cond_0
    monitor-exit p0

    return-void

    .line 1744
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1

    .prologue
    .line 1851
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1852
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 1853
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1855
    :cond_0
    monitor-exit p0

    return-void

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHardwareAccelSkiaEnabled(Z)V
    .locals 1

    .prologue
    .line 1668
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    if-eq v0, p1, :cond_0

    .line 1669
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mHardwareAccelSkia:Z

    .line 1670
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1672
    :cond_0
    monitor-exit p0

    return-void

    .line 1668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImageCompressionQuality(I)V
    .locals 1

    .prologue
    .line 1535
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionQuality:I

    if-eq v0, p1, :cond_0

    .line 1536
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionQuality:I

    .line 1537
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    :cond_0
    monitor-exit p0

    return-void

    .line 1535
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImageCompressionServerURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1514
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1515
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;

    .line 1516
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    :cond_0
    monitor-exit p0

    return-void

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1

    .prologue
    .line 1960
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1961
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1962
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1964
    :cond_0
    monitor-exit p0

    return-void

    .line 1960
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 1626
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1627
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 1628
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :cond_0
    monitor-exit p0

    return-void

    .line 1626
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setJavascriptCanAccessCrossOrigin(Z)V
    .locals 1

    .prologue
    .line 2291
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavascriptCanAccessCrossOrigin:Z

    if-eq v0, p1, :cond_0

    .line 2292
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mJavascriptCanAccessCrossOrigin:Z

    .line 2293
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2295
    :cond_0
    return-void
.end method

.method public setJavascriptCanAccessCrossOriginSync(Z)V
    .locals 1

    .prologue
    .line 2302
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mJavascriptCanAccessCrossOrigin:Z

    .line 2303
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    iget v0, v0, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->nativeSync(I)V

    .line 2304
    return-void
.end method

.method public declared-synchronized setKernelTranscodingEnabled(Z)V
    .locals 1

    .prologue
    .line 1359
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z

    if-eq v0, p1, :cond_0

    .line 1360
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z

    .line 1361
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    :cond_0
    monitor-exit p0

    return-void

    .line 1359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Ldolphin/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 2

    .prologue
    .line 1091
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 1092
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    .line 1095
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    sget-object v1, Ldolphin/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setAutoFitPage(Z)V

    .line 1097
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1099
    :cond_0
    monitor-exit p0

    return-void

    .line 1095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1091
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 955
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 956
    return-void
.end method

.method public declared-synchronized setLinkPrefetchEnabled(Z)V
    .locals 1

    .prologue
    .line 1873
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1874
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mLinkPrefetchEnabled:Z

    .line 1875
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    :cond_0
    monitor-exit p0

    return-void

    .line 1873
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0

    .prologue
    .line 788
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 789
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1322
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 1323
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1325
    :cond_0
    monitor-exit p0

    return-void

    .line 1321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaximumDecodedImageSize(J)V
    .locals 2

    .prologue
    .line 2135
    iget-wide v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2136
    iput-wide p1, p0, Ldolphin/webkit/WebSettingsClassic;->mMaximumDecodedImageSize:J

    .line 2137
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2139
    :cond_0
    return-void
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 2

    .prologue
    .line 1228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldolphin/webkit/WebSettingsClassic;->pin(I)I

    move-result v0

    .line 1229
    iget v1, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I

    if-eq v1, v0, :cond_0

    .line 1230
    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 1231
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    :cond_0
    monitor-exit p0

    return-void

    .line 1228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 2

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldolphin/webkit/WebSettingsClassic;->pin(I)I

    move-result v0

    .line 1249
    iget v1, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    if-eq v1, v0, :cond_0

    .line 1250
    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 1251
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1253
    :cond_0
    monitor-exit p0

    return-void

    .line 1248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNativeCrashDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2257
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCrashDumpFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2258
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeCrashDumpFile:Ljava/lang/String;

    .line 2259
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2261
    :cond_0
    return-void
.end method

.method public setNativeStackDumpFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeStackDumpFile:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2271
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mNativeStackDumpFile:Ljava/lang/String;

    .line 2272
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2274
    :cond_0
    return-void
.end method

.method public setNavDump(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 688
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mNavDump:Z

    .line 689
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1

    .prologue
    .line 2074
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 2075
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 2077
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 2

    .prologue
    const/16 v0, 0x14

    .line 1308
    monitor-enter p0

    if-gez p1, :cond_2

    const/4 v1, 0x0

    .line 1309
    :goto_0
    if-le v1, v0, :cond_1

    .line 1310
    :goto_1
    :try_start_0
    iget v1, p0, Ldolphin/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    if-eq v1, v0, :cond_0

    .line 1311
    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 1312
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    :cond_0
    monitor-exit p0

    return-void

    .line 1308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method

.method public declared-synchronized setPluginState(Ldolphin/webkit/WebSettings$PluginState;)V
    .locals 1

    .prologue
    .line 1713
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1714
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    .line 1715
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1717
    :cond_0
    monitor-exit p0

    return-void

    .line 1713
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1705
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Ldolphin/webkit/WebSettings$PluginState;->ON:Ldolphin/webkit/WebSettings$PluginState;

    :goto_0
    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setPluginState(Ldolphin/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    monitor-exit p0

    return-void

    .line 1705
    :cond_0
    :try_start_1
    sget-object v0, Ldolphin/webkit/WebSettings$PluginState;->OFF:Ldolphin/webkit/WebSettings$PluginState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1725
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPrivateBrowsingEnabled(Z)V
    .locals 1

    .prologue
    .line 2163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    if-eq v0, p1, :cond_1

    .line 2164
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 2166
    if-nez p1, :cond_0

    .line 2167
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->freeMemory()V

    .line 2171
    :cond_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoFillEnabled:Z

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setAutoFillEnabled(Z)V

    .line 2173
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    :cond_1
    monitor-exit p0

    return-void

    .line 2163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2391
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/WebViewClassic;->nativeSetProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2392
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 2394
    :cond_0
    return-void
.end method

.method public declared-synchronized setReadableFontSize(I)V
    .locals 1

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I

    if-eq v0, p1, :cond_0

    .line 1486
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I

    .line 1487
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    :cond_0
    monitor-exit p0

    return-void

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReadableLineHeight(I)V
    .locals 1

    .prologue
    .line 1498
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I

    if-eq v0, p1, :cond_0

    .line 1499
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I

    .line 1500
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    :cond_0
    monitor-exit p0

    return-void

    .line 1498
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRenderPriority(Ldolphin/webkit/WebSettings$RenderPriority;)V
    .locals 3

    .prologue
    .line 2089
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 2090
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mRenderPriority:Ldolphin/webkit/WebSettings$RenderPriority;

    .line 2091
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEventHandler:Ldolphin/webkit/hr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/webkit/hr;->a(Ldolphin/webkit/hr;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2094
    :cond_0
    monitor-exit p0

    return-void

    .line 2089
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1152
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSansSerifFontFamily:Ljava/lang/String;

    .line 1154
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :cond_0
    monitor-exit p0

    return-void

    .line 1152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0

    .prologue
    .line 838
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 839
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0

    .prologue
    .line 854
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 855
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1171
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1172
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSerifFontFamily:Ljava/lang/String;

    .line 1173
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1175
    :cond_0
    monitor-exit p0

    return-void

    .line 1171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowProgressWhileBackOrForward(Z)V
    .locals 0

    .prologue
    .line 2407
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mShowProgressWhileBackOrForward:Z

    .line 2408
    return-void
.end method

.method public declared-synchronized setShowVisualIndicator(Z)V
    .locals 1

    .prologue
    .line 1686
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    if-eq v0, p1, :cond_0

    .line 1687
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mShowVisualIndicator:Z

    .line 1688
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    :cond_0
    monitor-exit p0

    return-void

    .line 1686
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1

    .prologue
    .line 2123
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 2124
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mShrinksStandaloneImagesToFit:Z

    .line 2125
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    .line 2127
    :cond_0
    return-void
.end method

.method public setSingleExpansionSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2470
    const-string v0, "WebSettingsClassic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1114
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1115
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mStandardFontFamily:Ljava/lang/String;

    .line 1116
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :cond_0
    monitor-exit p0

    return-void

    .line 1114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1

    .prologue
    .line 1049
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 1050
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 1051
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1053
    :cond_0
    monitor-exit p0

    return-void

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2

    .prologue
    .line 705
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportZoom:Z

    .line 706
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebView:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Landroid/content/Context;)V

    .line 707
    return-void
.end method

.method declared-synchronized setSyntheticLinksEnabled(Z)V
    .locals 1

    .prologue
    .line 2347
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2348
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mSyntheticLinksEnabled:Z

    .line 2349
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2351
    :cond_0
    monitor-exit p0

    return-void

    .line 2347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextSize(Ldolphin/webkit/WebSettings$TextSize;)V
    .locals 1

    .prologue
    .line 889
    monitor-enter p0

    :try_start_0
    iget v0, p1, Ldolphin/webkit/WebSettings$TextSize;->value:I

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setTextZoom(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    monitor-exit p0

    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextZoom(I)V
    .locals 1

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    if-eq v0, p1, :cond_0

    .line 871
    iput p1, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    .line 872
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :cond_0
    monitor-exit p0

    return-void

    .line 870
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTranscodeServerURI(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1556
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTranscodeServerURI:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1557
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mTranscodeServerURI:Ljava/lang/String;

    .line 1558
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    :cond_1
    monitor-exit p0

    return-void

    .line 1556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWebViewBackgroundForOverscroll:Z

    .line 822
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1

    .prologue
    .line 1030
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 1031
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 1032
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    :cond_0
    monitor-exit p0

    return-void

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 990
    monitor-enter p0

    const/4 v0, 0x0

    .line 991
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 992
    :try_start_0
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 995
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/534.24 (KHTML, like Gecko) Chrome/11.0.696.34 Safari/534.24"

    .line 1006
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 990
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 997
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 998
    :try_start_2
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1003
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2000
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 2001
    :cond_0
    sget-object v1, Ldolphin/webkit/WebSettingsClassic;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2002
    :try_start_1
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    .line 2003
    sget-object v2, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2004
    sput-object v0, Ldolphin/webkit/WebSettingsClassic;->sLocale:Ljava/util/Locale;

    .line 2005
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAcceptLanguage:Ljava/lang/String;

    .line 2007
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2008
    :try_start_2
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 2009
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z

    .line 2014
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2015
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mUserAgent:Ljava/lang/String;

    .line 2016
    sput-object p1, Ldolphin/webkit/WebSettingsClassic;->sUserAgent:Ljava/lang/String;

    .line 2017
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2019
    :cond_2
    monitor-exit p0

    return-void

    .line 2007
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2000
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2011
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWebGLEnabled(Z)V
    .locals 1

    .prologue
    .line 1634
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1635
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mWebGLEnabled:Z

    .line 1636
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    :cond_0
    monitor-exit p0

    return-void

    .line 1634
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWebpSupported(Z)V
    .locals 1

    .prologue
    .line 1433
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWebpSupported:Z

    if-eq v0, p1, :cond_0

    .line 1434
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mWebpSupported:Z

    .line 1435
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :cond_0
    monitor-exit p0

    return-void

    .line 1433
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1

    .prologue
    .line 1840
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1841
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 1842
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1844
    :cond_0
    monitor-exit p0

    return-void

    .line 1840
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setXSSAuditorEnabled(Z)V
    .locals 1

    .prologue
    .line 1863
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1864
    iput-boolean p1, p0, Ldolphin/webkit/WebSettingsClassic;->mXSSAuditorEnabled:Z

    .line 1865
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    :cond_0
    monitor-exit p0

    return-void

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportZoom:Z

    return v0
.end method

.method syncFromOther(Ldolphin/webkit/WebSettingsClassic;)V
    .locals 2

    .prologue
    .line 451
    if-ne p1, p0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLayoutAlgorithm:Ldolphin/webkit/WebSettings$LayoutAlgorithm;

    .line 455
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mUseWideViewport:Z

    .line 456
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadsImagesAutomatically:Z

    .line 457
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptEnabled:Z

    .line 458
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPluginState:Ldolphin/webkit/WebSettings$PluginState;

    .line 459
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 460
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultTextEncoding:Ljava/lang/String;

    .line 461
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumFontSize:I

    .line 462
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mMinimumLogicalFontSize:I

    .line 463
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFontSize:I

    .line 464
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultFixedFontSize:I

    .line 465
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mTextSize:I

    .line 466
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mNavDump:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNavDump:Z

    .line 467
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDefaultZoom:Ldolphin/webkit/WebSettings$ZoomDensity;

    .line 468
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLightTouchEnabled:Z

    .line 469
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mLoadWithOverviewMode:Z

    .line 470
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBuiltInZoomControls:Z

    .line 471
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPageCacheCapacity:I

    .line 472
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mNeedInitialFocus:Z

    .line 473
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSupportMultipleWindows:Z

    .line 474
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheEnabled:Z

    .line 475
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabaseEnabled:Z

    .line 476
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDomStorageEnabled:Z

    .line 477
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mWorkersEnabled:Z

    .line 478
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mSaveFormData:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSaveFormData:Z

    .line 479
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mSavePassword:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSavePassword:Z

    .line 480
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationEnabled:Z

    .line 481
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mPrivateBrowsingEnabled:Z

    .line 482
    iget-wide v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    iput-wide v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCacheMaxSize:J

    .line 483
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAppCachePath:Ljava/lang/String;

    .line 484
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDatabasePath:Ljava/lang/String;

    .line 485
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 486
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowFileAccess:Z

    .line 487
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAllowContentAccess:Z

    .line 488
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmoothTransition:Z

    .line 489
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserModeInNight:Z

    .line 490
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableVideoCache:Z

    .line 491
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableFontSize:I

    .line 492
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mReadableLineHeight:I

    .line 493
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableKernelTranscoding:Z

    .line 494
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableSmartReading:Z

    .line 495
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAutoPager:Z

    .line 496
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableServerTranscodeForWeakNetwork:Z

    .line 497
    iget-object v0, p1, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;

    iput-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mImageCompressionServerURI:Ljava/lang/String;

    .line 499
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableAdBlock:Z

    .line 500
    iget v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I

    iput v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAdBlockOption:I

    .line 502
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mDNSPrefetchEnabled:Z

    .line 503
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEnableDoubleTapInMobileSite:Z

    .line 504
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mAutoAlignEnabled:Z

    .line 505
    iget-boolean v0, p1, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mCustomErrorPageEnabled:Z

    .line 507
    invoke-virtual {p1}, Ldolphin/webkit/WebSettingsClassic;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->setUserAgentString(Ljava/lang/String;)V

    .line 508
    invoke-direct {p0}, Ldolphin/webkit/WebSettingsClassic;->postSync()V

    goto/16 :goto_0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Ldolphin/webkit/BrowserFrame;)V
    .locals 3

    .prologue
    .line 2417
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ldolphin/webkit/WebSettingsClassic;->mBrowserFrame:Ldolphin/webkit/BrowserFrame;

    .line 2422
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mContext:Landroid/content/Context;

    const-string v1, "WebViewSettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2424
    sget v1, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    if-lez v1, :cond_0

    .line 2425
    const-string v1, "double_tap_toast_count"

    sget v2, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ldolphin/webkit/WebSettingsClassic;->mDoubleTapToastCount:I

    .line 2428
    :cond_0
    iget v0, p1, Ldolphin/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v0}, Ldolphin/webkit/WebSettingsClassic;->nativeSync(I)V

    .line 2429
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/WebSettingsClassic;->mSyncPending:Z

    .line 2430
    iget-object v0, p0, Ldolphin/webkit/WebSettingsClassic;->mEventHandler:Ldolphin/webkit/hr;

    invoke-static {v0}, Ldolphin/webkit/hr;->b(Ldolphin/webkit/hr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2431
    monitor-exit p0

    return-void

    .line 2417
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
