package com.tapjoy.mraid.view;

import android.graphics.*;
import android.app.*;
import android.media.*;
import android.content.res.*;
import com.tapjoy.mraid.controller.*;
import android.widget.*;
import android.net.*;
import java.util.regex.*;
import android.util.*;
import android.annotation.*;
import com.tapjoy.*;
import com.tapjoy.mraid.util.*;
import android.content.*;
import com.tapjoy.mraid.listener.*;
import android.webkit.*;
import android.os.*;
import android.view.*;
import java.util.*;

public class MraidView extends WebView implements ViewTreeObserver$OnGlobalLayoutListener
{
    public static final String ACTION_KEY = "action";
    private static final String AD_PATH = "AD_PATH";
    protected static final int BACKGROUND_ID = 101;
    private static final String CURRENT_FILE = "_current_file";
    public static final String DIMENSIONS = "expand_dimensions";
    private static final String ERROR_ACTION = "action";
    private static final String ERROR_MESSAGE = "message";
    private static final String EXPAND_PROPERTIES = "expand_properties";
    public static final String EXPAND_URL = "expand_url";
    private static final int MESSAGE_CLOSE = 1001;
    private static final int MESSAGE_EXPAND = 1004;
    private static final int MESSAGE_HIDE = 1002;
    private static final int MESSAGE_OPEN = 1006;
    private static final int MESSAGE_PLAY_AUDIO = 1008;
    private static final int MESSAGE_PLAY_VIDEO = 1007;
    private static final int MESSAGE_RAISE_ERROR = 1009;
    private static final int MESSAGE_RESIZE = 1000;
    private static final int MESSAGE_RESIZE_ORIENTATION = 1010;
    private static final int MESSAGE_SEND_EXPAND_CLOSE = 1005;
    private static final int MESSAGE_SHOW = 1003;
    public static final int MRAID_ID = 102;
    private static final String NO_CONNECTION_HTML = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>";
    protected static final int PLACEHOLDER_ID = 100;
    public static final String PLAYER_PROPERTIES = "player_properties";
    private static final String RESIZE_ALLOWOFFSCREEN = "resize_allowOffScreen";
    private static final String RESIZE_CUSTOMCLOSEPOSITION = "resize_customClosePostition";
    private static final String RESIZE_HEIGHT = "resize_height";
    private static final String RESIZE_WIDTH = "resize_width";
    private static final String RESIZE_X = "resize_x";
    private static final String RESIZE_Y = "resize_y";
    private static final String TAG = "MRAIDView";
    private static int[] attrs;
    private static String mScriptPath;
    private static MraidPlayer player;
    private static final String[] videoFormats;
    private boolean bGotLayoutParams;
    private boolean bKeyboardOut;
    private boolean bPageFinished;
    private customCloseState closeButtonState;
    private Context ctx;
    private String initialExpandUrl;
    private boolean initialLoadUrl;
    private boolean isMraid;
    private int lastScreenHeight;
    private int lastScreenWidth;
    private int mContentViewHeight;
    private int mDefaultHeight;
    private int mDefaultWidth;
    private int mDefaultX;
    private int mDefaultY;
    private float mDensity;
    private GestureDetector mGestureDetector;
    private Handler mHandler;
    private int mIndex;
    private int mInitLayoutHeight;
    private int mInitLayoutWidth;
    private MraidViewListener mListener;
    private String mLocalFilePath;
    private TimeOut mTimeOut;
    private Utility mUtilityController;
    private VIEW_STATE mViewState;
    WebChromeClient mWebChromeClient;
    WebViewClient mWebViewClient;
    private Thread orientationThread;
    private int originalRequestedOrientation;
    private PLACEMENT_TYPE placement;
    private ProgressBar progressBar;
    private final HashSet<String> registeredProtocols;
    private RelativeLayout videoRelativeLayout;
    private VideoView videoView;
    private WebChromeClient$CustomViewCallback videoViewCallback;
    private boolean viewDetached;
    
    static {
        MraidView.attrs = new int[] { 16843039, 16843040 };
        videoFormats = new String[] { ".mp4", ".3gp", ".mpg" };
    }
    
    public MraidView(final Context ctx) {
        super(ctx);
        this.closeButtonState = customCloseState.UNKNOWN;
        this.initialExpandUrl = null;
        this.initialLoadUrl = true;
        this.isMraid = false;
        this.mViewState = VIEW_STATE.DEFAULT;
        this.registeredProtocols = new HashSet<String>();
        this.lastScreenWidth = 0;
        this.lastScreenHeight = 0;
        this.orientationThread = null;
        this.viewDetached = false;
        this.mHandler = new Handler() {
            public void handleMessage(final Message message) {
                final Bundle data = message.getData();
                Label_0068: {
                    switch (message.what) {
                        case 1005: {
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onExpandClose();
                                break;
                            }
                            break;
                        }
                        case 1000: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams != null) {
                                MraidView.this.removeCloseImageButton();
                                MraidView.this.mViewState = VIEW_STATE.RESIZED;
                                viewGroup$MarginLayoutParams.height = data.getInt("resize_height", viewGroup$MarginLayoutParams.height);
                                viewGroup$MarginLayoutParams.width = data.getInt("resize_width", viewGroup$MarginLayoutParams.width);
                                viewGroup$MarginLayoutParams.leftMargin = data.getInt("resize_x", viewGroup$MarginLayoutParams.leftMargin);
                                viewGroup$MarginLayoutParams.topMargin = data.getInt("resize_y", viewGroup$MarginLayoutParams.topMargin);
                                MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'resized', size: { width: " + viewGroup$MarginLayoutParams.width + ", " + "height: " + viewGroup$MarginLayoutParams.height + ", " + "x: " + viewGroup$MarginLayoutParams.leftMargin + ", " + "y: " + viewGroup$MarginLayoutParams.topMargin + "}});");
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                MraidView.this.showCloseImageButton();
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1010: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams2 = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams2 != null) {
                                MraidView.this.removeCloseImageButton();
                                viewGroup$MarginLayoutParams2.height = data.getInt("resize_height", viewGroup$MarginLayoutParams2.height);
                                viewGroup$MarginLayoutParams2.width = data.getInt("resize_width", viewGroup$MarginLayoutParams2.width);
                                final String string = "window.mraidview.fireChangeEvent({ state: '" + MraidView.this.getState() + "'," + " size: { width: " + (int)(viewGroup$MarginLayoutParams2.width / MraidView.this.mDensity) + ", " + "height: " + (int)(viewGroup$MarginLayoutParams2.height / MraidView.this.mDensity) + "}" + "});";
                                TapjoyLog.i("MRAIDView", "resize: injection: " + string);
                                MraidView.this.injectMraidJavaScript(string);
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                if (MraidView.this.placement != PLACEMENT_TYPE.INLINE && MraidView.this.closeButtonState == customCloseState.OPEN) {
                                    MraidView.this.showCloseImageButton();
                                }
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1001: {
                            switch (MraidView.this.mViewState) {
                                default: {
                                    break Label_0068;
                                }
                                case RESIZED: {
                                    MraidView.this.closeResized();
                                    break Label_0068;
                                }
                                case EXPANDED: {
                                    MraidView.this.closeExpanded();
                                    break Label_0068;
                                }
                                case DEFAULT: {
                                    if (MraidView.this.placement != PLACEMENT_TYPE.INLINE) {
                                        MraidView.this.closeWindow();
                                        break Label_0068;
                                    }
                                    break Label_0068;
                                }
                            }
                            break;
                        }
                        case 1002: {
                            MraidView.this.setVisibility(4);
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'hidden' });");
                            break;
                        }
                        case 1003: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            MraidView.this.setVisibility(0);
                            break;
                        }
                        case 1004: {
                            MraidView.this.doExpand(data);
                            break;
                        }
                        case 1006: {
                            MraidView.this.mViewState = VIEW_STATE.LEFT_BEHIND;
                            break;
                        }
                        case 1008: {
                            MraidView.this.playAudioImpl(data);
                            break;
                        }
                        case 1007: {
                            MraidView.this.playVideoImpl(data);
                            break;
                        }
                        case 1009: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireErrorEvent(\"" + data.getString("message") + "\", \"" + data.getString("action") + "\")");
                            break;
                        }
                    }
                }
                super.handleMessage(message);
            }
        };
        this.mWebViewClient = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String s) {
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageFinished(webView, s);
                }
                MraidView.this.mDefaultHeight = (int)(MraidView.this.getHeight() / MraidView.this.mDensity);
                MraidView.this.mDefaultWidth = (int)(MraidView.this.getWidth() / MraidView.this.mDensity);
                MraidView.this.mUtilityController.init(MraidView.this.mDensity);
                MraidView.this.createCloseImageButton();
                if (MraidView.this.placement == PLACEMENT_TYPE.INLINE) {
                    MraidView.this.removeCloseImageButton();
                }
            }
            
            public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageStarted(webView, s, bitmap);
                }
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onReceivedError(webView, n, str, s);
                }
                TapjoyLog.d("MRAIDView", "error:" + str);
                super.onReceivedError(webView, n, str, s);
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
                TapjoyLog.i("MRAIDView", "shouldOverrideUrlLoading: " + str);
                if (MraidView.this.mListener != null && MraidView.this.mListener.shouldOverrideUrlLoading(webView, str)) {
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("mraid")) {
                        return super.shouldOverrideUrlLoading(webView, str);
                    }
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent);
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent2);
                        return true;
                    }
                    final Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.VIEW");
                    intent3.setData(parse);
                    intent3.addFlags(268435456);
                    MraidView.this.getContext().startActivity(intent3);
                    return true;
                }
                catch (Exception ex) {
                    try {
                        final Intent intent4 = new Intent();
                        intent4.setAction("android.intent.action.VIEW");
                        intent4.setData(parse);
                        intent4.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent4);
                        return true;
                    }
                    catch (Exception ex2) {
                        return false;
                    }
                }
            }
        };
        this.mWebChromeClient = new WebChromeClient() {
            public void onCloseWindow(final WebView webView) {
                super.onCloseWindow(webView);
                MraidView.this.closeWindow();
            }
            
            public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
                if (MraidView.this.mListener != null) {
                    return MraidView.this.mListener.onConsoleMessage(consoleMessage);
                }
                return super.onConsoleMessage(consoleMessage);
            }
            
            public void onHideCustomView() {
                super.onHideCustomView();
            }
            
            public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                TapjoyLog.d("MRAIDView", s2);
                return false;
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                TapjoyLog.i("MRAIDView", "-- onShowCustomView --");
                super.onShowCustomView(view, webChromeClient$CustomViewCallback);
                MraidView.this.videoViewCallback = webChromeClient$CustomViewCallback;
                if (view instanceof FrameLayout) {
                    final FrameLayout frameLayout = (FrameLayout)view;
                    if (frameLayout.getFocusedChild() instanceof VideoView && MraidView.this.ctx instanceof Activity) {
                        final Activity activity = (Activity)MraidView.this.ctx;
                        MraidView.this.videoView = (VideoView)frameLayout.getFocusedChild();
                        frameLayout.removeView((View)MraidView.this.videoView);
                        if (MraidView.this.videoRelativeLayout == null) {
                            MraidView.this.videoRelativeLayout = new RelativeLayout(MraidView.this.ctx);
                            MraidView.this.videoRelativeLayout.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
                            MraidView.this.videoRelativeLayout.setBackgroundColor(-16777216);
                        }
                        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
                        layoutParams.addRule(13);
                        MraidView.this.videoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                        MraidView.this.progressBar = new ProgressBar(MraidView.this.ctx, (AttributeSet)null, 16842874);
                        MraidView.this.progressBar.setVisibility(0);
                        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
                        layoutParams2.addRule(13);
                        MraidView.this.progressBar.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.videoView);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.progressBar);
                        activity.getWindow().addContentView((View)MraidView.this.videoRelativeLayout, new ViewGroup$LayoutParams(-1, -1));
                        new Thread(new VideoLoadingThread()).start();
                        MraidView.this.setVisibility(8);
                        MraidView.this.videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
                            public void onPrepared(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON PREPARED **");
                                TapjoyLog.i("MRAIDView", "isPlaying: " + mediaPlayer.isPlaying());
                                if (!mediaPlayer.isPlaying()) {
                                    mediaPlayer.start();
                                }
                            }
                        });
                        MraidView.this.videoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
                            public void onCompletion(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
                                MraidView.this.videoViewCleanup();
                            }
                        });
                        MraidView.this.videoView.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
                            public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
                                TapjoyLog.i("MRAIDView", "** ON ERROR **");
                                MraidView.this.videoViewCleanup();
                                return false;
                            }
                        });
                        MraidView.this.videoView.start();
                    }
                }
            }
        };
        this.ctx = ctx;
        this.initialize();
    }
    
    public MraidView(final Context context, final AttributeSet set) {
        super(context, set);
        this.closeButtonState = customCloseState.UNKNOWN;
        this.initialExpandUrl = null;
        this.initialLoadUrl = true;
        this.isMraid = false;
        this.mViewState = VIEW_STATE.DEFAULT;
        this.registeredProtocols = new HashSet<String>();
        this.lastScreenWidth = 0;
        this.lastScreenHeight = 0;
        this.orientationThread = null;
        this.viewDetached = false;
        this.mHandler = new Handler() {
            public void handleMessage(final Message message) {
                final Bundle data = message.getData();
                Label_0068: {
                    switch (message.what) {
                        case 1005: {
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onExpandClose();
                                break;
                            }
                            break;
                        }
                        case 1000: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams != null) {
                                MraidView.this.removeCloseImageButton();
                                MraidView.this.mViewState = VIEW_STATE.RESIZED;
                                viewGroup$MarginLayoutParams.height = data.getInt("resize_height", viewGroup$MarginLayoutParams.height);
                                viewGroup$MarginLayoutParams.width = data.getInt("resize_width", viewGroup$MarginLayoutParams.width);
                                viewGroup$MarginLayoutParams.leftMargin = data.getInt("resize_x", viewGroup$MarginLayoutParams.leftMargin);
                                viewGroup$MarginLayoutParams.topMargin = data.getInt("resize_y", viewGroup$MarginLayoutParams.topMargin);
                                MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'resized', size: { width: " + viewGroup$MarginLayoutParams.width + ", " + "height: " + viewGroup$MarginLayoutParams.height + ", " + "x: " + viewGroup$MarginLayoutParams.leftMargin + ", " + "y: " + viewGroup$MarginLayoutParams.topMargin + "}});");
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                MraidView.this.showCloseImageButton();
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1010: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams2 = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams2 != null) {
                                MraidView.this.removeCloseImageButton();
                                viewGroup$MarginLayoutParams2.height = data.getInt("resize_height", viewGroup$MarginLayoutParams2.height);
                                viewGroup$MarginLayoutParams2.width = data.getInt("resize_width", viewGroup$MarginLayoutParams2.width);
                                final String string = "window.mraidview.fireChangeEvent({ state: '" + MraidView.this.getState() + "'," + " size: { width: " + (int)(viewGroup$MarginLayoutParams2.width / MraidView.this.mDensity) + ", " + "height: " + (int)(viewGroup$MarginLayoutParams2.height / MraidView.this.mDensity) + "}" + "});";
                                TapjoyLog.i("MRAIDView", "resize: injection: " + string);
                                MraidView.this.injectMraidJavaScript(string);
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                if (MraidView.this.placement != PLACEMENT_TYPE.INLINE && MraidView.this.closeButtonState == customCloseState.OPEN) {
                                    MraidView.this.showCloseImageButton();
                                }
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1001: {
                            switch (MraidView.this.mViewState) {
                                default: {
                                    break Label_0068;
                                }
                                case RESIZED: {
                                    MraidView.this.closeResized();
                                    break Label_0068;
                                }
                                case EXPANDED: {
                                    MraidView.this.closeExpanded();
                                    break Label_0068;
                                }
                                case DEFAULT: {
                                    if (MraidView.this.placement != PLACEMENT_TYPE.INLINE) {
                                        MraidView.this.closeWindow();
                                        break Label_0068;
                                    }
                                    break Label_0068;
                                }
                            }
                            break;
                        }
                        case 1002: {
                            MraidView.this.setVisibility(4);
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'hidden' });");
                            break;
                        }
                        case 1003: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            MraidView.this.setVisibility(0);
                            break;
                        }
                        case 1004: {
                            MraidView.this.doExpand(data);
                            break;
                        }
                        case 1006: {
                            MraidView.this.mViewState = VIEW_STATE.LEFT_BEHIND;
                            break;
                        }
                        case 1008: {
                            MraidView.this.playAudioImpl(data);
                            break;
                        }
                        case 1007: {
                            MraidView.this.playVideoImpl(data);
                            break;
                        }
                        case 1009: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireErrorEvent(\"" + data.getString("message") + "\", \"" + data.getString("action") + "\")");
                            break;
                        }
                    }
                }
                super.handleMessage(message);
            }
        };
        this.mWebViewClient = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String s) {
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageFinished(webView, s);
                }
                MraidView.this.mDefaultHeight = (int)(MraidView.this.getHeight() / MraidView.this.mDensity);
                MraidView.this.mDefaultWidth = (int)(MraidView.this.getWidth() / MraidView.this.mDensity);
                MraidView.this.mUtilityController.init(MraidView.this.mDensity);
                MraidView.this.createCloseImageButton();
                if (MraidView.this.placement == PLACEMENT_TYPE.INLINE) {
                    MraidView.this.removeCloseImageButton();
                }
            }
            
            public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageStarted(webView, s, bitmap);
                }
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onReceivedError(webView, n, str, s);
                }
                TapjoyLog.d("MRAIDView", "error:" + str);
                super.onReceivedError(webView, n, str, s);
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
                TapjoyLog.i("MRAIDView", "shouldOverrideUrlLoading: " + str);
                if (MraidView.this.mListener != null && MraidView.this.mListener.shouldOverrideUrlLoading(webView, str)) {
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("mraid")) {
                        return super.shouldOverrideUrlLoading(webView, str);
                    }
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent);
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent2);
                        return true;
                    }
                    final Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.VIEW");
                    intent3.setData(parse);
                    intent3.addFlags(268435456);
                    MraidView.this.getContext().startActivity(intent3);
                    return true;
                }
                catch (Exception ex) {
                    try {
                        final Intent intent4 = new Intent();
                        intent4.setAction("android.intent.action.VIEW");
                        intent4.setData(parse);
                        intent4.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent4);
                        return true;
                    }
                    catch (Exception ex2) {
                        return false;
                    }
                }
            }
        };
        this.mWebChromeClient = new WebChromeClient() {
            public void onCloseWindow(final WebView webView) {
                super.onCloseWindow(webView);
                MraidView.this.closeWindow();
            }
            
            public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
                if (MraidView.this.mListener != null) {
                    return MraidView.this.mListener.onConsoleMessage(consoleMessage);
                }
                return super.onConsoleMessage(consoleMessage);
            }
            
            public void onHideCustomView() {
                super.onHideCustomView();
            }
            
            public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                TapjoyLog.d("MRAIDView", s2);
                return false;
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                TapjoyLog.i("MRAIDView", "-- onShowCustomView --");
                super.onShowCustomView(view, webChromeClient$CustomViewCallback);
                MraidView.this.videoViewCallback = webChromeClient$CustomViewCallback;
                if (view instanceof FrameLayout) {
                    final FrameLayout frameLayout = (FrameLayout)view;
                    if (frameLayout.getFocusedChild() instanceof VideoView && MraidView.this.ctx instanceof Activity) {
                        final Activity activity = (Activity)MraidView.this.ctx;
                        MraidView.this.videoView = (VideoView)frameLayout.getFocusedChild();
                        frameLayout.removeView((View)MraidView.this.videoView);
                        if (MraidView.this.videoRelativeLayout == null) {
                            MraidView.this.videoRelativeLayout = new RelativeLayout(MraidView.this.ctx);
                            MraidView.this.videoRelativeLayout.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
                            MraidView.this.videoRelativeLayout.setBackgroundColor(-16777216);
                        }
                        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
                        layoutParams.addRule(13);
                        MraidView.this.videoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                        MraidView.this.progressBar = new ProgressBar(MraidView.this.ctx, (AttributeSet)null, 16842874);
                        MraidView.this.progressBar.setVisibility(0);
                        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
                        layoutParams2.addRule(13);
                        MraidView.this.progressBar.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.videoView);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.progressBar);
                        activity.getWindow().addContentView((View)MraidView.this.videoRelativeLayout, new ViewGroup$LayoutParams(-1, -1));
                        new Thread(new VideoLoadingThread()).start();
                        MraidView.this.setVisibility(8);
                        MraidView.this.videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
                            public void onPrepared(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON PREPARED **");
                                TapjoyLog.i("MRAIDView", "isPlaying: " + mediaPlayer.isPlaying());
                                if (!mediaPlayer.isPlaying()) {
                                    mediaPlayer.start();
                                }
                            }
                        });
                        MraidView.this.videoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
                            public void onCompletion(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
                                MraidView.this.videoViewCleanup();
                            }
                        });
                        MraidView.this.videoView.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
                            public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
                                TapjoyLog.i("MRAIDView", "** ON ERROR **");
                                MraidView.this.videoViewCleanup();
                                return false;
                            }
                        });
                        MraidView.this.videoView.start();
                    }
                }
            }
        };
        this.initialize();
        final TypedArray obtainStyledAttributes = this.getContext().obtainStyledAttributes(set, MraidView.attrs);
        final int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(0, -1);
        final int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize > 0 && dimensionPixelSize2 > 0) {
            this.mUtilityController.setMaxSize(dimensionPixelSize, dimensionPixelSize2);
        }
        obtainStyledAttributes.recycle();
    }
    
    public MraidView(final Context ctx, final MraidViewListener listener) {
        super(ctx);
        this.closeButtonState = customCloseState.UNKNOWN;
        this.initialExpandUrl = null;
        this.initialLoadUrl = true;
        this.isMraid = false;
        this.mViewState = VIEW_STATE.DEFAULT;
        this.registeredProtocols = new HashSet<String>();
        this.lastScreenWidth = 0;
        this.lastScreenHeight = 0;
        this.orientationThread = null;
        this.viewDetached = false;
        this.mHandler = new Handler() {
            public void handleMessage(final Message message) {
                final Bundle data = message.getData();
                Label_0068: {
                    switch (message.what) {
                        case 1005: {
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onExpandClose();
                                break;
                            }
                            break;
                        }
                        case 1000: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams != null) {
                                MraidView.this.removeCloseImageButton();
                                MraidView.this.mViewState = VIEW_STATE.RESIZED;
                                viewGroup$MarginLayoutParams.height = data.getInt("resize_height", viewGroup$MarginLayoutParams.height);
                                viewGroup$MarginLayoutParams.width = data.getInt("resize_width", viewGroup$MarginLayoutParams.width);
                                viewGroup$MarginLayoutParams.leftMargin = data.getInt("resize_x", viewGroup$MarginLayoutParams.leftMargin);
                                viewGroup$MarginLayoutParams.topMargin = data.getInt("resize_y", viewGroup$MarginLayoutParams.topMargin);
                                MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'resized', size: { width: " + viewGroup$MarginLayoutParams.width + ", " + "height: " + viewGroup$MarginLayoutParams.height + ", " + "x: " + viewGroup$MarginLayoutParams.leftMargin + ", " + "y: " + viewGroup$MarginLayoutParams.topMargin + "}});");
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                MraidView.this.showCloseImageButton();
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1010: {
                            final ViewGroup$MarginLayoutParams viewGroup$MarginLayoutParams2 = (ViewGroup$MarginLayoutParams)MraidView.this.getLayoutParams();
                            if (viewGroup$MarginLayoutParams2 != null) {
                                MraidView.this.removeCloseImageButton();
                                viewGroup$MarginLayoutParams2.height = data.getInt("resize_height", viewGroup$MarginLayoutParams2.height);
                                viewGroup$MarginLayoutParams2.width = data.getInt("resize_width", viewGroup$MarginLayoutParams2.width);
                                final String string = "window.mraidview.fireChangeEvent({ state: '" + MraidView.this.getState() + "'," + " size: { width: " + (int)(viewGroup$MarginLayoutParams2.width / MraidView.this.mDensity) + ", " + "height: " + (int)(viewGroup$MarginLayoutParams2.height / MraidView.this.mDensity) + "}" + "});";
                                TapjoyLog.i("MRAIDView", "resize: injection: " + string);
                                MraidView.this.injectMraidJavaScript(string);
                                MraidView.this.requestLayout();
                                MraidView.this.repositionCloseButton(data.getString("resize_customClosePostition"));
                                if (MraidView.this.placement != PLACEMENT_TYPE.INLINE && MraidView.this.closeButtonState == customCloseState.OPEN) {
                                    MraidView.this.showCloseImageButton();
                                }
                            }
                            if (MraidView.this.mListener != null) {
                                MraidView.this.mListener.onResize();
                                break;
                            }
                            break;
                        }
                        case 1001: {
                            switch (MraidView.this.mViewState) {
                                default: {
                                    break Label_0068;
                                }
                                case RESIZED: {
                                    MraidView.this.closeResized();
                                    break Label_0068;
                                }
                                case EXPANDED: {
                                    MraidView.this.closeExpanded();
                                    break Label_0068;
                                }
                                case DEFAULT: {
                                    if (MraidView.this.placement != PLACEMENT_TYPE.INLINE) {
                                        MraidView.this.closeWindow();
                                        break Label_0068;
                                    }
                                    break Label_0068;
                                }
                            }
                            break;
                        }
                        case 1002: {
                            MraidView.this.setVisibility(4);
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'hidden' });");
                            break;
                        }
                        case 1003: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            MraidView.this.setVisibility(0);
                            break;
                        }
                        case 1004: {
                            MraidView.this.doExpand(data);
                            break;
                        }
                        case 1006: {
                            MraidView.this.mViewState = VIEW_STATE.LEFT_BEHIND;
                            break;
                        }
                        case 1008: {
                            MraidView.this.playAudioImpl(data);
                            break;
                        }
                        case 1007: {
                            MraidView.this.playVideoImpl(data);
                            break;
                        }
                        case 1009: {
                            MraidView.this.injectMraidJavaScript("window.mraidview.fireErrorEvent(\"" + data.getString("message") + "\", \"" + data.getString("action") + "\")");
                            break;
                        }
                    }
                }
                super.handleMessage(message);
            }
        };
        this.mWebViewClient = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String s) {
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageFinished(webView, s);
                }
                MraidView.this.mDefaultHeight = (int)(MraidView.this.getHeight() / MraidView.this.mDensity);
                MraidView.this.mDefaultWidth = (int)(MraidView.this.getWidth() / MraidView.this.mDensity);
                MraidView.this.mUtilityController.init(MraidView.this.mDensity);
                MraidView.this.createCloseImageButton();
                if (MraidView.this.placement == PLACEMENT_TYPE.INLINE) {
                    MraidView.this.removeCloseImageButton();
                }
            }
            
            public void onPageStarted(final WebView webView, final String s, final Bitmap bitmap) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onPageStarted(webView, s, bitmap);
                }
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                if (MraidView.this.mListener != null) {
                    MraidView.this.mListener.onReceivedError(webView, n, str, s);
                }
                TapjoyLog.d("MRAIDView", "error:" + str);
                super.onReceivedError(webView, n, str, s);
            }
            
            public boolean shouldOverrideUrlLoading(final WebView webView, final String str) {
                TapjoyLog.i("MRAIDView", "shouldOverrideUrlLoading: " + str);
                if (MraidView.this.mListener != null && MraidView.this.mListener.shouldOverrideUrlLoading(webView, str)) {
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("mraid")) {
                        return super.shouldOverrideUrlLoading(webView, str);
                    }
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent);
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent2);
                        return true;
                    }
                    final Intent intent3 = new Intent();
                    intent3.setAction("android.intent.action.VIEW");
                    intent3.setData(parse);
                    intent3.addFlags(268435456);
                    MraidView.this.getContext().startActivity(intent3);
                    return true;
                }
                catch (Exception ex) {
                    try {
                        final Intent intent4 = new Intent();
                        intent4.setAction("android.intent.action.VIEW");
                        intent4.setData(parse);
                        intent4.addFlags(268435456);
                        MraidView.this.getContext().startActivity(intent4);
                        return true;
                    }
                    catch (Exception ex2) {
                        return false;
                    }
                }
            }
        };
        this.mWebChromeClient = new WebChromeClient() {
            public void onCloseWindow(final WebView webView) {
                super.onCloseWindow(webView);
                MraidView.this.closeWindow();
            }
            
            public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
                if (MraidView.this.mListener != null) {
                    return MraidView.this.mListener.onConsoleMessage(consoleMessage);
                }
                return super.onConsoleMessage(consoleMessage);
            }
            
            public void onHideCustomView() {
                super.onHideCustomView();
            }
            
            public boolean onJsAlert(final WebView webView, final String s, final String s2, final JsResult jsResult) {
                TapjoyLog.d("MRAIDView", s2);
                return false;
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                TapjoyLog.i("MRAIDView", "-- onShowCustomView --");
                super.onShowCustomView(view, webChromeClient$CustomViewCallback);
                MraidView.this.videoViewCallback = webChromeClient$CustomViewCallback;
                if (view instanceof FrameLayout) {
                    final FrameLayout frameLayout = (FrameLayout)view;
                    if (frameLayout.getFocusedChild() instanceof VideoView && MraidView.this.ctx instanceof Activity) {
                        final Activity activity = (Activity)MraidView.this.ctx;
                        MraidView.this.videoView = (VideoView)frameLayout.getFocusedChild();
                        frameLayout.removeView((View)MraidView.this.videoView);
                        if (MraidView.this.videoRelativeLayout == null) {
                            MraidView.this.videoRelativeLayout = new RelativeLayout(MraidView.this.ctx);
                            MraidView.this.videoRelativeLayout.setLayoutParams(new ViewGroup$LayoutParams(-1, -1));
                            MraidView.this.videoRelativeLayout.setBackgroundColor(-16777216);
                        }
                        final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-1, -1);
                        layoutParams.addRule(13);
                        MraidView.this.videoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                        MraidView.this.progressBar = new ProgressBar(MraidView.this.ctx, (AttributeSet)null, 16842874);
                        MraidView.this.progressBar.setVisibility(0);
                        final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
                        layoutParams2.addRule(13);
                        MraidView.this.progressBar.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.videoView);
                        MraidView.this.videoRelativeLayout.addView((View)MraidView.this.progressBar);
                        activity.getWindow().addContentView((View)MraidView.this.videoRelativeLayout, new ViewGroup$LayoutParams(-1, -1));
                        new Thread(new VideoLoadingThread()).start();
                        MraidView.this.setVisibility(8);
                        MraidView.this.videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
                            public void onPrepared(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON PREPARED **");
                                TapjoyLog.i("MRAIDView", "isPlaying: " + mediaPlayer.isPlaying());
                                if (!mediaPlayer.isPlaying()) {
                                    mediaPlayer.start();
                                }
                            }
                        });
                        MraidView.this.videoView.setOnCompletionListener((MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
                            public void onCompletion(final MediaPlayer mediaPlayer) {
                                TapjoyLog.i("MRAIDView", "** ON COMPLETION **");
                                MraidView.this.videoViewCleanup();
                            }
                        });
                        MraidView.this.videoView.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
                            public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
                                TapjoyLog.i("MRAIDView", "** ON ERROR **");
                                MraidView.this.videoViewCleanup();
                                return false;
                            }
                        });
                        MraidView.this.videoView.start();
                    }
                }
            }
        };
        this.setListener(listener);
        this.ctx = ctx;
        this.initialize();
    }
    
    static /* synthetic */ void access$001(final MraidView mraidView, final String s) {
        mraidView.loadUrl(s);
    }
    
    private FrameLayout changeContentArea(final Abstract.Dimensions dimensions) {
        final FrameLayout frameLayout = (FrameLayout)this.getRootView().findViewById(16908290);
        final ViewGroup viewGroup = (ViewGroup)this.getParent();
        final FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(dimensions.width, dimensions.height);
        frameLayout$LayoutParams.topMargin = dimensions.x;
        frameLayout$LayoutParams.leftMargin = dimensions.y;
        int childCount;
        int mIndex;
        for (childCount = viewGroup.getChildCount(), mIndex = 0; mIndex < childCount && viewGroup.getChildAt(mIndex) != this; ++mIndex) {}
        this.mIndex = mIndex;
        final FrameLayout frameLayout2 = new FrameLayout(this.getContext());
        frameLayout2.setId(100);
        viewGroup.addView((View)frameLayout2, mIndex, new ViewGroup$LayoutParams(this.getWidth(), this.getHeight()));
        viewGroup.removeView((View)this);
        final FrameLayout frameLayout3 = new FrameLayout(this.getContext());
        frameLayout3.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                TapjoyLog.i("MRAIDView", "background touch called");
                return true;
            }
        });
        final FrameLayout$LayoutParams frameLayout$LayoutParams2 = new FrameLayout$LayoutParams(-1, -1);
        frameLayout3.setId(101);
        frameLayout3.setPadding(dimensions.x, dimensions.y, 0, 0);
        frameLayout3.addView((View)this, (ViewGroup$LayoutParams)frameLayout$LayoutParams);
        frameLayout.addView((View)frameLayout3, (ViewGroup$LayoutParams)frameLayout$LayoutParams2);
        return frameLayout3;
    }
    
    private void checkForOrientationChange() {
        final WindowManager windowManager = (WindowManager)this.getContext().getSystemService("window");
        final int width = windowManager.getDefaultDisplay().getWidth();
        final int height = windowManager.getDefaultDisplay().getHeight();
        if ((width != this.lastScreenWidth || height != this.lastScreenHeight) && ((this.getPlacementType() == PLACEMENT_TYPE.INLINE && this.getViewState() == VIEW_STATE.EXPANDED) || this.getPlacementType() == PLACEMENT_TYPE.INTERSTITIAL)) {
            this.resizeOrientation(width, height, "top-right", true);
        }
    }
    
    private static boolean checkForVideo(final String s) {
        final String[] videoFormats = MraidView.videoFormats;
        for (int length = videoFormats.length, i = 0; i < length; ++i) {
            if (s.endsWith(videoFormats[i])) {
                return true;
            }
        }
        return false;
    }
    
    private void closeResized() {
        this.mViewState = VIEW_STATE.DEFAULT;
        if (this.mListener != null) {
            this.mListener.onResizeClose();
        }
        final String string = "window.mraidview.fireChangeEvent({ state: 'default', size: { width: " + this.mDefaultWidth + ", " + "height: " + this.mDefaultHeight + ", " + "x:0" + "," + "y:0" + "}" + "});";
        TapjoyLog.d("MRAIDView", "closeResized: injection: " + string);
        this.injectMraidJavaScript(string);
        this.repositionCloseButton("top-right");
        this.resetLayout();
    }
    
    private void closeWindow() {
        if (this.mListener != null) {
            this.mListener.onClose();
        }
        ((ViewGroup)this.getParent()).removeView((View)this);
    }
    
    private void doExpand(final Bundle bundle) {
        if (this.mViewState != VIEW_STATE.EXPANDED) {
            final Abstract.Dimensions dimensions = (Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
            final String string = bundle.getString("expand_url");
            final Abstract.Properties properties = (Abstract.Properties)bundle.getParcelable("expand_properties");
            if (URLUtil.isValidUrl(string)) {
                this.loadUrl(string);
            }
            final FrameLayout changeContentArea = this.changeContentArea(dimensions);
            if (properties.useBackground) {
                changeContentArea.setBackgroundColor(properties.backgroundColor | 268435456 * (int)(255.0f * properties.backgroundOpacity));
            }
            if (!properties.useCustomClose) {
                this.showCloseImageButton();
            }
            final String string2 = "window.mraidview.fireChangeEvent({ state: 'expanded', size: { width: " + (int)(dimensions.width / this.mDensity) + ", " + "height: " + (int)(dimensions.height / this.mDensity) + "," + "x:0," + "y:0" + "}" + " });";
            TapjoyLog.d("MRAIDView", "doExpand: injection: " + string2);
            this.injectMraidJavaScript(string2);
            this.mViewState = VIEW_STATE.EXPANDED;
            this.checkForOrientationChange();
            if (this.mListener != null) {
                this.mListener.onExpand();
            }
        }
    }
    
    private int getContentViewHeight() {
        final View viewById = this.getRootView().findViewById(16908290);
        if (viewById != null) {
            return viewById.getHeight();
        }
        return -1;
    }
    
    private void initAndPlayVideo(final String s) {
        final Abstract.Dimensions dimensions = new Abstract.Dimensions();
        dimensions.x = 0;
        dimensions.y = 0;
        dimensions.width = this.getWidth();
        dimensions.height = this.getHeight();
        this.playVideo(s, false, true, true, false, dimensions, "fullscreen", "exit");
    }
    
    private boolean isRegisteredProtocol(final Uri uri) {
        final String scheme = uri.getScheme();
        if (scheme == null) {
            return false;
        }
        final Iterator<String> iterator = this.registeredProtocols.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().equalsIgnoreCase(scheme)) {
                return true;
            }
        }
        return false;
    }
    
    private void repositionCloseButton(final String s) {
        if (s == null) {
            return;
        }
        String s2;
        if (s.equals("top-right")) {
            s2 = "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36";
        }
        else if (s.equals("top-center")) {
            s2 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18";
        }
        else if (s.equals("top-left")) {
            s2 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = 1;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.left = 1";
        }
        else if (s.equals("center")) {
            s2 = "document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 - 18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.bottom = mraid.getSize().height/2 -18;document.getElementById(\"closeButton\").style.left = mraid.getSize().width/2 -18";
        }
        else if (s.equals("bottom-right")) {
            s2 = "document.getElementById(\"closeButton\").style.right = 1;document.getElementById(\"closeButton\").style.top = mraid.getSize().height -36;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.left = mraid.getSize().width -36";
        }
        else if (s.equals("bottom-left")) {
            s2 = "document.getElementById(\"closeButton\").style.left = 1;document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;";
        }
        else {
            final boolean equals = s.equals("bottom-center");
            s2 = null;
            if (equals) {
                s2 = "document.getElementById(\"closeButton\").style.bottom = 1;document.getElementById(\"closeButton\").style.right = mraid.getSize().width -36document.getElementById(\"closeButton\").style.right = mraid.getSize().width/2 -18;document.getElementById(\"closeButton\").style.top = mraid.getSize().height-36;";
            }
        }
        if (s2 != null) {
            this.injectMraidJavaScript(s2);
            return;
        }
        TapjoyLog.d("MRAIDView", "Reposition of close button failed.");
    }
    
    private void resetLayout() {
        final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
        if (this.bGotLayoutParams) {
            layoutParams.height = this.mInitLayoutHeight;
            layoutParams.width = this.mInitLayoutWidth;
        }
        this.setVisibility(0);
        this.requestLayout();
    }
    
    private void setScriptPath() {
        synchronized (this) {
            TapjoyLog.d("MRAIDView", " paths" + MraidView.mScriptPath);
            if (MraidView.mScriptPath == null && TapjoyUtil.getMraidJsString() == null) {
                MraidView.mScriptPath = this.mUtilityController.copyTextFromJarIntoAssetDir("/js/mraid.js", "js/mraid.js");
            }
        }
    }
    
    public void addJavascriptObject(final Object o, final String s) {
        this.addJavascriptInterface(o, s);
    }
    
    public void clearView() {
        this.reset();
        super.clearView();
    }
    
    public void close() {
        this.mHandler.sendEmptyMessage(1001);
    }
    
    protected void closeExpanded() {
        synchronized (this) {
            this.resetContents();
            final String string = "window.mraidview.fireChangeEvent({ state: 'default', size: { width: " + this.mDefaultWidth + ", " + "height: " + this.mDefaultHeight + "}" + "});";
            TapjoyLog.d("MRAIDView", "closeExpanded: injection: " + string);
            this.injectMraidJavaScript(string);
            this.mViewState = VIEW_STATE.DEFAULT;
            this.mHandler.sendEmptyMessage(1005);
            this.setVisibility(0);
            this.removeCloseImageButton();
            ((Activity)this.getContext()).setRequestedOrientation(this.originalRequestedOrientation);
        }
    }
    
    protected void closeOpened(final View view) {
        ((ViewGroup)((Activity)this.getContext()).getWindow().getDecorView()).removeView(view);
        this.requestLayout();
    }
    
    public void createCloseImageButton() {
        this.injectMraidJavaScript("window.mraidview.createCss();");
        TapjoyLog.d("MRAIDView", "Creating close button.");
    }
    
    public void deregisterProtocol(final String s) {
        if (s != null) {
            this.registeredProtocols.remove(s.toLowerCase());
        }
    }
    
    public void expand(final Abstract.Dimensions dimensions, final String s, final Abstract.Properties properties) {
        final Message obtainMessage = this.mHandler.obtainMessage(1004);
        final Bundle data = new Bundle();
        data.putParcelable("expand_dimensions", (Parcelable)dimensions);
        data.putString("expand_url", s);
        data.putParcelable("expand_properties", (Parcelable)properties);
        obtainMessage.setData(data);
        this.mHandler.sendMessage(obtainMessage);
    }
    
    public customCloseState getCloseButtonState() {
        return this.closeButtonState;
    }
    
    public ConnectivityManager getConnectivityManager() {
        return (ConnectivityManager)this.getContext().getSystemService("connectivity");
    }
    
    public PLACEMENT_TYPE getPlacementType() {
        return this.placement;
    }
    
    MraidPlayer getPlayer() {
        if (MraidView.player != null) {
            MraidView.player.releasePlayer();
        }
        return MraidView.player = new MraidPlayer(this.getContext());
    }
    
    public String getSize() {
        return "{ width: " + (int)Math.ceil(this.getWidth() / this.mDensity) + ", " + "height: " + (int)Math.ceil(this.getHeight() / this.mDensity) + "}";
    }
    
    public String getState() {
        return this.mViewState.toString().toLowerCase();
    }
    
    public VIEW_STATE getViewState() {
        return this.mViewState;
    }
    
    public boolean hasMraidTag(final String s) {
        final Pattern compile = Pattern.compile("<\\s*script[^>]+ormma\\.js");
        final Matcher matcher = Pattern.compile("<\\s*script[^>]+mraid\\.js").matcher(s);
        final Matcher matcher2 = compile.matcher(s);
        return matcher.find() || matcher2.find();
    }
    
    public void hide() {
        this.mHandler.sendEmptyMessage(1002);
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    public void initialize() {
        this.setPlacementType(PLACEMENT_TYPE.INTERSTITIAL);
        this.setScrollContainer(false);
        this.setVerticalScrollBarEnabled(false);
        this.setHorizontalScrollBarEnabled(false);
        this.mGestureDetector = new GestureDetector((GestureDetector$OnGestureListener)new ScrollEater());
        this.setBackgroundColor(0);
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        this.mDensity = displayMetrics.density;
        this.bPageFinished = false;
        if (this.getSettings() != null) {
            this.getSettings().setJavaScriptEnabled(true);
        }
        this.addJavascriptInterface((Object)(this.mUtilityController = new Utility(this, this.getContext())), "MRAIDUtilityControllerBridge");
        this.setWebViewClient(this.mWebViewClient);
        this.setWebChromeClient(this.mWebChromeClient);
        this.setScriptPath();
        this.mContentViewHeight = this.getContentViewHeight();
        if (this.getViewTreeObserver() != null) {
            this.getViewTreeObserver().addOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
        }
        final WindowManager windowManager = (WindowManager)this.getContext().getSystemService("window");
        this.lastScreenWidth = windowManager.getDefaultDisplay().getWidth();
        this.lastScreenHeight = windowManager.getDefaultDisplay().getHeight();
        this.originalRequestedOrientation = ((Activity)this.getContext()).getRequestedOrientation();
    }
    
    public void injectMraidJavaScript(final String str) {
        if (str != null && this.isMraid) {
            super.loadUrl("javascript:" + str);
        }
    }
    
    public boolean isExpanded() {
        return this.mViewState == VIEW_STATE.EXPANDED;
    }
    
    public boolean isMraid() {
        return this.isMraid;
    }
    
    public boolean isPageFinished() {
        return this.bPageFinished;
    }
    
    public void loadDataWithBaseURL(final String s, final String str, final String s2, final String s3, final String s4) {
        if (str == null) {
            return;
        }
        final StringBuffer sb = new StringBuffer();
        final int index = str.indexOf("<html>");
        this.isMraid = false;
        int n = str.indexOf("mraid.js");
        if (n < 0) {
            n = str.indexOf("ormma.js");
        }
        int beginIndex = n;
        int endIndex = n;
        if (n > 0 && this.hasMraidTag(str)) {
            this.isMraid = true;
            for (int i = n; i >= 0; --i) {
                if (str.substring(i, i + 7).equals("<script")) {
                    endIndex = i;
                    break;
                }
            }
            for (int j = 0; j < str.length(); ++j) {
                if (str.substring(n + j, 2 + (n + j)).equalsIgnoreCase("/>")) {
                    beginIndex = 2 + (j + n);
                    break;
                }
                if (str.substring(n + j, 9 + (n + j)).equalsIgnoreCase("</script>")) {
                    beginIndex = 9 + (j + n);
                    break;
                }
            }
            if (index < 0) {
                TapjoyLog.d("MRAIDView", "wrapping fragment");
                sb.append("<html>");
                sb.append("<head>");
                sb.append("<meta name='viewport' content='user-scalable=no initial-scale=1.0' />");
                sb.append("<title>Advertisement</title>");
                sb.append("</head>");
                sb.append("<body style=\"margin:0; padding:0; overflow:hidden; background-color:transparent;\">");
                sb.append("<div align=\"center\"> ");
                sb.append(str.substring(0, endIndex));
                sb.append("<script type=text/javascript>");
                String str2 = TapjoyUtil.getMraidJsString();
                if (str2 == null) {
                    str2 = this.mUtilityController.copyTextFromJarIntoString("js/mraid.js");
                }
                sb.append(str2);
                sb.append("</script>");
                sb.append(str.substring(beginIndex));
            }
            else {
                final int index2 = str.indexOf("<head>");
                if (index2 != -1) {
                    String str3 = TapjoyUtil.getMraidJsString();
                    if (str3 == null) {
                        str3 = this.mUtilityController.copyTextFromJarIntoString("js/mraid.js");
                    }
                    sb.append(str.substring(0, index2 + 6));
                    sb.append("<script type='text/javascript'>");
                    sb.append(str3);
                    sb.append("</script>");
                    sb.append(str.substring(index2 + 6));
                }
            }
            TapjoyLog.d("MRAIDView", "injected js/mraid.js");
        }
        else {
            sb.append(str);
        }
        super.loadDataWithBaseURL(s, sb.toString(), s2, s3, s4);
    }
    
    public void loadUrl(final String s) {
        ((Activity)this.ctx).runOnUiThread((Runnable)new Runnable() {
            @Override
            public void run() {
                if (!URLUtil.isValidUrl(s)) {
                    MraidView.this.loadDataWithBaseURL(null, "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\"><html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\"><title>Connection not Established</title></head><h2>Connection Not Properly Established</h2><body></body></html>", "text/html", "utf-8", null);
                    return;
                }
                if (s.startsWith("javascript")) {
                    MraidView.access$001(MraidView.this, s);
                    return;
                }
                new MraidHTTPTask().execute((Object[])new String[] { s });
            }
        });
    }
    
    public void loadUrlStandard(final String s) {
        super.loadUrl(s);
    }
    
    protected void onAttachedToWindow() {
        if (!this.bGotLayoutParams) {
            final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
            this.mInitLayoutHeight = layoutParams.height;
            this.mInitLayoutWidth = layoutParams.width;
            this.bGotLayoutParams = true;
        }
        this.viewDetached = false;
        if (this.orientationThread == null || !this.orientationThread.isAlive()) {
            (this.orientationThread = new Thread(new OrientationThread())).start();
        }
        super.onAttachedToWindow();
    }
    
    protected void onDetachedFromWindow() {
        this.viewDetached = true;
        this.mUtilityController.stopAllListeners();
        while (true) {
            try {
                if (this.videoView != null) {
                    this.videoView.stopPlayback();
                }
                if (this.videoViewCallback != null) {
                    this.videoViewCallback.onCustomViewHidden();
                }
                super.onDetachedFromWindow();
            }
            catch (Exception ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    public void onGlobalLayout() {
        boolean bKeyboardOut = this.bKeyboardOut;
        if (!this.bKeyboardOut && this.mContentViewHeight >= 0 && this.getContentViewHeight() >= 0 && this.mContentViewHeight != this.getContentViewHeight()) {
            bKeyboardOut = true;
            this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ keyboardState: true});");
        }
        if (this.bKeyboardOut && this.mContentViewHeight >= 0 && this.getContentViewHeight() >= 0 && this.mContentViewHeight == this.getContentViewHeight()) {
            bKeyboardOut = false;
            this.injectMraidJavaScript("window.mraidview.fireChangeEvent({ keyboardState: false});");
        }
        if (this.mContentViewHeight < 0) {
            this.mContentViewHeight = this.getContentViewHeight();
        }
        this.bKeyboardOut = bKeyboardOut;
    }
    
    public void open(final String str, final boolean b, final boolean b2, final boolean b3) {
        int n;
        String redirectURL;
        if (checkForVideo(str)) {
            n = 1;
            redirectURL = str;
        }
        else {
            final TapjoyHttpURLResponse redirectFromURL = new TapjoyURLConnection().getRedirectFromURL(str);
            TapjoyLog.i("MRAIDView", "redirect: " + redirectFromURL.redirectURL + ", " + redirectFromURL.statusCode);
            n = 0;
            redirectURL = null;
            if (redirectFromURL != null) {
                final String redirectURL2 = redirectFromURL.redirectURL;
                n = 0;
                redirectURL = null;
                if (redirectURL2 != null) {
                    final int length = redirectFromURL.redirectURL.length();
                    n = 0;
                    redirectURL = null;
                    if (length > 0) {
                        final boolean checkForVideo = checkForVideo(redirectFromURL.redirectURL);
                        n = 0;
                        redirectURL = null;
                        if (checkForVideo) {
                            n = 1;
                            redirectURL = redirectFromURL.redirectURL;
                        }
                    }
                }
            }
        }
        if (n != 0) {
            this.initAndPlayVideo(redirectURL);
            return;
        }
        TapjoyLog.d("MRAIDView", "Mraid Browser open:" + str);
        final Intent intent = new Intent(this.getContext(), (Class)Browser.class);
        intent.putExtra("extra_url", str);
        intent.putExtra("open_show_back", b);
        intent.putExtra("open_show_forward", b2);
        intent.putExtra("open_show_refresh", b3);
        intent.addFlags(268435456);
        this.getContext().startActivity(intent);
    }
    
    public void openMap(final String str, final boolean b) {
        TapjoyLog.d("MRAIDView", "Opening Map Url " + str);
        final String convert = Utils.convert(str.trim());
        if (!b) {
            return;
        }
        try {
            final Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(convert));
            intent.setFlags(268435456);
            this.getContext().startActivity(intent);
        }
        catch (ActivityNotFoundException ex) {
            ex.printStackTrace();
        }
    }
    
    public void playAudio(final String s, final boolean b, final boolean b2, final boolean b3, final boolean b4, final String s2, final String s3) {
        final Abstract.PlayerProperties playerProperties = new Abstract.PlayerProperties();
        playerProperties.setProperties(false, b, b2, b4, b3, s2, s3);
        final Bundle data = new Bundle();
        data.putString("action", Action.PLAY_AUDIO.toString());
        data.putString("expand_url", s);
        data.putParcelable("player_properties", (Parcelable)playerProperties);
        if (playerProperties.isFullScreen()) {
            try {
                final Intent intent = new Intent(this.getContext(), (Class)ActionHandler.class);
                intent.putExtras(data);
                this.getContext().startActivity(intent);
                return;
            }
            catch (ActivityNotFoundException ex) {
                ex.printStackTrace();
                return;
            }
        }
        final Message obtainMessage = this.mHandler.obtainMessage(1008);
        obtainMessage.setData(data);
        this.mHandler.sendMessage(obtainMessage);
    }
    
    public void playAudioImpl(final Bundle bundle) {
        final Abstract.PlayerProperties playerProperties = (Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        final String string = bundle.getString("expand_url");
        final MraidPlayer player = this.getPlayer();
        player.setPlayData(playerProperties, string);
        player.setLayoutParams(new ViewGroup$LayoutParams(1, 1));
        ((ViewGroup)this.getParent()).addView((View)player);
        player.playAudio();
    }
    
    public void playVideo(final String s, final boolean b, final boolean b2, final boolean b3, final boolean b4, final Abstract.Dimensions dimensions, final String s2, final String s3) {
        final Message obtainMessage = this.mHandler.obtainMessage(1007);
        final Abstract.PlayerProperties playerProperties = new Abstract.PlayerProperties();
        playerProperties.setProperties(b, b2, b3, false, b4, s2, s3);
        final Bundle data = new Bundle();
        data.putString("expand_url", s);
        data.putString("action", Action.PLAY_VIDEO.toString());
        data.putParcelable("player_properties", (Parcelable)playerProperties);
        if (dimensions != null) {
            data.putParcelable("expand_dimensions", (Parcelable)dimensions);
        }
        Label_0149: {
            if (!playerProperties.isFullScreen()) {
                break Label_0149;
            }
            try {
                final Intent intent = new Intent(this.getContext(), (Class)ActionHandler.class);
                intent.putExtras(data);
                intent.setFlags(268435456);
                this.getContext().startActivity(intent);
                return;
            }
            catch (ActivityNotFoundException ex) {
                ex.printStackTrace();
                return;
            }
        }
        if (dimensions != null) {
            obtainMessage.setData(data);
            this.mHandler.sendMessage(obtainMessage);
        }
    }
    
    public void playVideoImpl(final Bundle bundle) {
        final Abstract.PlayerProperties playerProperties = (Abstract.PlayerProperties)bundle.getParcelable("player_properties");
        final Abstract.Dimensions dimensions = (Abstract.Dimensions)bundle.getParcelable("expand_dimensions");
        final String string = bundle.getString("expand_url");
        final MraidPlayer player = this.getPlayer();
        player.setPlayData(playerProperties, string);
        final FrameLayout$LayoutParams layoutParams = new FrameLayout$LayoutParams(dimensions.width, dimensions.height);
        layoutParams.topMargin = dimensions.x;
        layoutParams.leftMargin = dimensions.y;
        player.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
        final FrameLayout frameLayout = new FrameLayout(this.getContext());
        frameLayout.setId(101);
        frameLayout.setPadding(dimensions.x, dimensions.y, 0, 0);
        ((FrameLayout)this.getRootView().findViewById(16908290)).addView((View)frameLayout, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        frameLayout.addView((View)player);
        this.setVisibility(4);
        player.setListener(new Player() {
            @Override
            public void onComplete() {
                final FrameLayout frameLayout = (FrameLayout)MraidView.this.getRootView().findViewById(101);
                ((ViewGroup)frameLayout.getParent()).removeView((View)frameLayout);
                MraidView.this.setVisibility(0);
            }
            
            @Override
            public void onError() {
                this.onComplete();
            }
            
            @Override
            public void onPrepared() {
            }
        });
        player.playVideo();
    }
    
    public void raiseError(final String s, final String s2) {
        final Message obtainMessage = this.mHandler.obtainMessage(1009);
        final Bundle data = new Bundle();
        data.putString("message", s);
        data.putString("action", s2);
        obtainMessage.setData(data);
        this.mHandler.sendMessage(obtainMessage);
    }
    
    public void registerProtocol(final String s) {
        if (s != null) {
            this.registeredProtocols.add(s.toLowerCase());
        }
    }
    
    public void removeCloseImageButton() {
        this.injectMraidJavaScript("document.getElementById(\"closeButton\").style.visibility=\"hidden\";");
        TapjoyLog.d("MRAIDView", "Removing close button.");
        this.closeButtonState = customCloseState.HIDDEN;
    }
    
    public void removeListener() {
        this.mListener = null;
    }
    
    public void reset() {
        if (this.mViewState == VIEW_STATE.EXPANDED) {
            this.closeExpanded();
        }
        else if (this.mViewState == VIEW_STATE.RESIZED) {
            this.closeResized();
        }
        this.invalidate();
        this.mUtilityController.deleteOldAds();
        this.mUtilityController.stopAllListeners();
        this.resetLayout();
    }
    
    public void resetContents() {
        final FrameLayout frameLayout = (FrameLayout)this.getRootView().findViewById(16908290);
        final FrameLayout frameLayout2 = (FrameLayout)this.getRootView().findViewById(100);
        final FrameLayout frameLayout3 = (FrameLayout)this.getRootView().findViewById(101);
        frameLayout3.removeView((View)this);
        frameLayout.removeView((View)frameLayout3);
        this.resetLayout();
        if (frameLayout2 != null) {
            final ViewGroup viewGroup = (ViewGroup)frameLayout2.getParent();
            if (viewGroup != null) {
                viewGroup.addView((View)this, this.mIndex);
                viewGroup.removeView((View)frameLayout2);
                viewGroup.invalidate();
            }
        }
    }
    
    public void resize(final int n, final int n2, final int n3, final int n4, final String s, final boolean b) {
        final Message obtainMessage = this.mHandler.obtainMessage(1000);
        final Bundle data = new Bundle();
        data.putInt("resize_width", n);
        data.putInt("resize_height", n2);
        data.putInt("resize_x", n3);
        data.putInt("resize_y", n4);
        data.putBoolean("resize_allowOffScreen", b);
        data.putString("resize_customClosePostition", s);
        obtainMessage.setData(data);
        this.mHandler.sendMessage(obtainMessage);
    }
    
    public void resizeOrientation(final int n, final int n2, final String s, final boolean b) {
        this.lastScreenWidth = n;
        this.lastScreenHeight = n2;
        TapjoyLog.i("MRAIDView", "resizeOrientation to dimensions: " + n + "x" + n2);
        final Message obtainMessage = this.mHandler.obtainMessage(1010);
        final Bundle data = new Bundle();
        data.putInt("resize_width", n);
        data.putInt("resize_height", n2);
        data.putBoolean("resize_allowOffScreen", b);
        data.putString("resize_customClosePostition", s);
        obtainMessage.setData(data);
        this.mHandler.sendMessage(obtainMessage);
    }
    
    public WebBackForwardList restoreState(final Bundle bundle) {
        return super.restoreState(bundle);
    }
    
    public WebBackForwardList saveState(final Bundle bundle) {
        return super.saveState(bundle);
    }
    
    public void setListener(final MraidViewListener mListener) {
        this.mListener = mListener;
    }
    
    public void setMaxSize(final int n, final int n2) {
        this.mUtilityController.setMaxSize(n, n2);
    }
    
    public void setOrientationProperties(final boolean b, final String s) {
        int requestedOrientation = -1;
        if (!b) {
            if (s.equals("landscape")) {
                requestedOrientation = 0;
            }
            else {
                requestedOrientation = 1;
            }
        }
        ((Activity)this.getContext()).setRequestedOrientation(requestedOrientation);
    }
    
    public void setPlacementType(final PLACEMENT_TYPE placement) {
        if (placement.equals(PLACEMENT_TYPE.INLINE) || placement.equals(PLACEMENT_TYPE.INTERSTITIAL)) {
            this.placement = placement;
        }
        else {
            TapjoyLog.d("MRAIDView", "Incorrect placement type.");
        }
        if (placement.equals(PLACEMENT_TYPE.INLINE) && (this.orientationThread == null || !this.orientationThread.isAlive())) {
            (this.orientationThread = new Thread(new OrientationThread())).start();
        }
    }
    
    public void show() {
        this.mHandler.sendEmptyMessage(1003);
    }
    
    public void showCloseImageButton() {
        this.injectMraidJavaScript("document.getElementById(\"closeButton\").style.visibility=\"visible\";");
        TapjoyLog.d("MRAIDView", "Showing close button.");
        this.closeButtonState = customCloseState.OPEN;
    }
    
    public boolean videoPlaying() {
        return this.videoView != null;
    }
    
    public void videoViewCleanup() {
        if (this.videoRelativeLayout != null) {
            ((ViewGroup)this.videoRelativeLayout.getParent()).removeView((View)this.videoRelativeLayout);
            this.videoRelativeLayout.setVisibility(8);
            this.videoRelativeLayout = null;
        }
        while (true) {
            try {
                if (this.videoView != null) {
                    this.videoView.stopPlayback();
                }
                if (this.videoViewCallback != null) {
                    this.videoViewCallback.onCustomViewHidden();
                }
                this.videoView = null;
                this.videoViewCallback = null;
                if (this != null) {
                    this.setVisibility(0);
                }
                this.loadUrl("javascript:try{Tapjoy.AdUnit.dispatchEvent('videoend')}catch(e){}");
            }
            catch (Exception ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    public enum Action
    {
        PLAY_AUDIO, 
        PLAY_VIDEO;
    }
    
    private class MraidHTTPTask extends AsyncTask<String, Void, Void>
    {
        TapjoyHttpURLResponse httpResult;
        TapjoyURLConnection tapjoyConnection;
        String url;
        
        protected Void doInBackground(final String... array) {
            this.url = array[0];
            try {
                this.tapjoyConnection = new TapjoyURLConnection();
                this.httpResult = this.tapjoyConnection.getResponseFromURL(this.url);
                return null;
            }
            catch (Exception ex) {
                ex.printStackTrace();
                return null;
            }
        }
        
        protected void onPostExecute(final Void void1) {
            try {
                if (this.httpResult.statusCode == 0 || this.httpResult.response == null) {
                    TapjoyLog.e("MRAIDView", "Connection not properly established");
                    if (MraidView.this.mListener != null) {
                        MraidView.this.mListener.onReceivedError(MraidView.this, 0, "Connection not properly established", this.url);
                    }
                    return;
                }
                else if (this.httpResult.statusCode == 302 && this.httpResult.redirectURL != null && this.httpResult.redirectURL.length() > 0) {
                    TapjoyLog.i("MRAIDView", "302 redirectURL detected: " + this.httpResult.redirectURL);
                    MraidView.this.loadUrlStandard(this.httpResult.redirectURL);
                    return;
                }
            }
            catch (Exception obj) {
                TapjoyLog.w("MRAIDView", "error in loadURL " + obj);
                obj.printStackTrace();
                return;
            }
            MraidView.this.loadDataWithBaseURL(this.url, this.httpResult.response, "text/html", "utf-8", this.url);
        }
    }
    
    public abstract static class NewLocationReciever
    {
        public abstract void OnNewLocation(final VIEW_STATE p0);
    }
    
    private class OrientationThread implements Runnable
    {
        @Override
        public void run() {
            while (!MraidView.this.viewDetached) {
                try {
                    Thread.sleep(250L);
                    MraidView.this.checkForOrientationChange();
                }
                catch (Exception ex) {}
            }
        }
    }
    
    public enum PLACEMENT_TYPE
    {
        INLINE, 
        INTERSTITIAL;
    }
    
    class ScrollEater extends GestureDetector$SimpleOnGestureListener
    {
        public boolean onScroll(final MotionEvent motionEvent, final MotionEvent motionEvent2, final float n, final float n2) {
            return true;
        }
    }
    
    class TimeOut extends TimerTask
    {
        int mCount;
        int mProgress;
        
        TimeOut() {
            super();
            this.mProgress = 0;
            this.mCount = 0;
        }
        
        @Override
        public void run() {
            final int progress = MraidView.this.getProgress();
            if (progress == 100) {
                this.cancel();
            }
            else if (this.mProgress == progress) {
                ++this.mCount;
                if (this.mCount == 3) {
                    while (true) {
                        try {
                            MraidView.this.stopLoading();
                            this.cancel();
                        }
                        catch (Exception ex) {
                            TapjoyLog.w("MRAIDView", "error in stopLoading");
                            ex.printStackTrace();
                            continue;
                        }
                        break;
                    }
                }
            }
            this.mProgress = progress;
        }
    }
    
    public enum VIEW_STATE
    {
        DEFAULT, 
        EXPANDED, 
        HIDDEN, 
        LEFT_BEHIND, 
        OPENED, 
        RESIZED;
    }
    
    private class VideoLoadingThread implements Runnable
    {
        @Override
        public void run() {
            int n = 0;
            while (true) {
                Label_0041: {
                    if (MraidView.this.videoView == null || MraidView.this.videoView.isPlaying()) {
                        break Label_0041;
                    }
                    try {
                        Thread.sleep(50L);
                        n += 50;
                        if (n >= 10000) {
                            ((Activity)MraidView.this.ctx).runOnUiThread((Runnable)new Runnable() {
                                @Override
                                public void run() {
                                    if (MraidView.this.progressBar != null) {
                                        MraidView.this.progressBar.setVisibility(8);
                                    }
                                    new Thread(new VideoRunningThread()).start();
                                }
                            });
                            return;
                        }
                        continue;
                    }
                    catch (Exception ex) {}
                }
            }
        }
        
        private class VideoRunningThread implements Runnable
        {
            private boolean playing;
            
            public VideoRunningThread() {
                super();
                this.playing = false;
            }
            
            @Override
            public void run() {
                while (true) {
                    if (MraidView.this.videoView == null) {
                        return;
                    }
                    try {
                        Thread.sleep(100L);
                        if (this.playing != MraidView.this.videoView.isPlaying()) {
                            this.playing = MraidView.this.videoView.isPlaying();
                            String str;
                            if (this.playing) {
                                str = "videoplay";
                            }
                            else {
                                str = "videopause";
                            }
                            MraidView.this.loadUrl("javascript:try{Tapjoy.AdUnit.dispatchEvent('" + str + "')}catch(e){}");
                            continue;
                        }
                        continue;
                    }
                    catch (Exception ex) {}
                }
            }
        }
    }
    
    public enum customCloseState
    {
        HIDDEN, 
        OPEN, 
        UNKNOWN;
    }
}
