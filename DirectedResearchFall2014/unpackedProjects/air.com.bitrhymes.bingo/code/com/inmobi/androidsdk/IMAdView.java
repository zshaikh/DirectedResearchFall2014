package com.inmobi.androidsdk;

import com.inmobi.androidsdk.impl.net.*;
import android.app.*;
import java.util.concurrent.atomic.*;
import android.view.animation.*;
import android.content.*;
import com.inmobi.commons.internal.*;
import com.inmobi.androidsdk.ai.container.*;
import android.widget.*;
import com.inmobi.androidsdk.ai.controller.util.*;
import com.inmobi.androidsdk.impl.*;
import android.util.*;
import android.view.*;
import android.graphics.*;
import java.lang.ref.*;
import android.os.*;

public final class IMAdView extends RelativeLayout
{
    public static final int INMOBI_AD_UNIT_120X600 = 13;
    public static final int INMOBI_AD_UNIT_300X250 = 10;
    public static final int INMOBI_AD_UNIT_320X48 = 9;
    public static final int INMOBI_AD_UNIT_320X50 = 15;
    public static final int INMOBI_AD_UNIT_468X60 = 12;
    public static final int INMOBI_AD_UNIT_728X90 = 11;
    public static final String INMOBI_INTERNAL_TAG = "ref-__in__rt";
    public static final String INMOBI_REF_TAG = "ref-tag";
    public static final int REFRESH_INTERVAL_DEFAULT = 60;
    public static final int REFRESH_INTERVAL_OFF = -1;
    private String A;
    private String B;
    private String C;
    private IMRequestResponseManager D;
    private a E;
    private View$OnTouchListener F;
    private Animation$AnimationListener G;
    private IMHttpRequestCallback H;
    private IMWebView.IMWebViewListener I;
    private int a;
    private IMWebView b;
    private IMWebView c;
    private LinearLayout d;
    private Activity e;
    private boolean f;
    private IMUserInfo g;
    private IMNiceInfo h;
    private AtomicBoolean i;
    private AtomicBoolean j;
    private Animation k;
    private Animation l;
    private IMAdUnit m;
    private String n;
    private String o;
    private String p;
    private IMAdListener q;
    private IMAdRequest r;
    private String s;
    private int t;
    private long u;
    private boolean v;
    private boolean w;
    private AnimationType x;
    private boolean y;
    private com.inmobi.androidsdk.a z;
    
    public IMAdView(final Activity activity, final int n, final String s) {
        this((Context)activity);
        this.C = "http://localhost/" + Integer.toString(InternalSDKUtil.incrementBaseUrl()) + "/";
        this.a(activity, n, s);
    }
    
    public IMAdView(final Activity activity, final int n, final String s, final long u) {
        this((Context)activity);
        this.C = "http://localhost/" + Integer.toString(InternalSDKUtil.incrementBaseUrl()) + "/";
        this.u = u;
        this.a(activity, n, s);
    }
    
    private IMAdView(final Context context) {
        super(context);
        this.a = 60;
        this.f = true;
        this.i = new AtomicBoolean();
        this.j = new AtomicBoolean();
        this.m = null;
        this.u = -1L;
        this.w = true;
        this.x = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.y = true;
        this.A = "http://i.w.inmobi.com/showad.asm";
        this.B = "http://i.w.sandbox.inmobi.com/showad.asm";
        this.E = new a(this);
        this.F = (View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View obj, final MotionEvent obj2) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "onTouch: view: " + obj + ", event: " + obj2);
                if (IMAdView.this.b != null && obj.equals(IMAdView.this.b)) {
                    obj.requestFocusFromTouch();
                    return true;
                }
                if (IMAdView.this.c != null && obj.equals(IMAdView.this.c)) {
                    obj.requestFocusFromTouch();
                    return true;
                }
                if (obj2.getAction() == 1) {
                    IMAdView.this.l();
                    IMAdView.this.a(obj2);
                    return true;
                }
                if (obj2.getAction() != 0) {
                    if (obj2.getAction() == 3) {
                        IMAdView.this.l();
                    }
                    else if (obj2.getAction() == 4) {
                        IMAdView.this.l();
                    }
                    return true;
                }
                if (IMAdView.this.i() || IMAdView.this.h() || IMAdView.this.m == null) {
                    IMAdView.this.l();
                    return true;
                }
                IMAdView.this.k();
                return true;
            }
        };
        this.G = (Animation$AnimationListener)new Animation$AnimationListener() {
            public void onAnimationEnd(final Animation animation) {
            Label_0274_Outer:
                while (true) {
                    while (true) {
                        Label_0255: {
                            try {
                                if (animation.equals(IMAdView.this.a())) {
                                    IMAdView.this.removeAllViews();
                                    if (IMAdView.this.j()) {
                                        IMAdView.this.addView((View)IMAdView.this.b);
                                        if (IMAdView.this.m != null && IMAdView.this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                            IMAdView.this.b.requestFocusFromTouch();
                                        }
                                    }
                                    else {
                                        IMAdView.this.addView((View)IMAdView.this.c);
                                        if (IMAdView.this.m != null && IMAdView.this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                            IMAdView.this.c.requestFocusFromTouch();
                                        }
                                    }
                                    if (IMAdView.this.m.getAdType() != IMAdUnit.AdTypes.RICH_MEDIA && IMAdView.this.m.getAdActionName() != IMAdUnit.AdActionNames.AdActionName_Search) {
                                        IMAdView.this.addView((View)IMAdView.this.d);
                                    }
                                    IMAdView.this.startAnimation(IMAdView.this.b());
                                    return;
                                }
                                break Label_0255;
                            }
                            catch (Exception ex) {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error animating banner ads", ex);
                                return;
                                while (true) {
                                    final boolean b = false;
                                    final IMAdView a;
                                    a.c(b);
                                    IMAdView.this.a(false);
                                    IMAdView.this.l();
                                    return;
                                    a = IMAdView.this;
                                    continue Label_0274_Outer;
                                }
                            }
                            // iftrue(Label_0326:, !IMAdView.h(this.a))
                            finally {
                                if (!animation.equals(IMAdView.this.a())) {
                                    IMAdView.this.a(100, null);
                                }
                            }
                        }
                        Label_0326: {
                            final boolean b = true;
                        }
                        continue;
                    }
                }
            }
            
            public void onAnimationRepeat(final Animation animation) {
            }
            
            public void onAnimationStart(final Animation animation) {
            }
        };
        this.H = new IMHttpRequestCallback() {
            @Override
            public void notifyResult(final int i, final Object o) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", ">>> Got HTTP REQUEST callback. Status: " + i + " ,data=" + o);
                if (i == 0) {
                    IMAdView.a(IMAdView.this, (IMAdUnit)o);
                    IMAdView.this.E.sendEmptyMessage(109);
                }
                else if (i == 1) {
                    final Message obtainMessage = IMAdView.this.E.obtainMessage(110);
                    obtainMessage.obj = o;
                    obtainMessage.sendToTarget();
                }
            }
        };
        this.I = new IMWebView.IMWebViewListener() {
            @Override
            public void onDismissAdScreen() {
                IMAdView.this.a(103, null);
            }
            
            @Override
            public void onError() {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error loading ad ");
                IMAdView.this.E.sendEmptyMessage(111);
            }
            
            @Override
            public void onExpand() {
                IMAdView.this.a(102, null);
            }
            
            @Override
            public void onExpandClose() {
                IMAdView.this.a(103, null);
            }
            
            @Override
            public void onLeaveApplication() {
                IMAdView.this.a(104, null);
            }
            
            @Override
            public void onShowAdScreen() {
                IMAdView.this.a(102, null);
            }
        };
    }
    
    public IMAdView(final Context obj, final AttributeSet set) {
        super(obj, set);
        this.a = 60;
        this.f = true;
        this.i = new AtomicBoolean();
        this.j = new AtomicBoolean();
        this.m = null;
        this.u = -1L;
        this.w = true;
        this.x = AnimationType.ROTATE_HORIZONTAL_AXIS;
        this.y = true;
        this.A = "http://i.w.inmobi.com/showad.asm";
        this.B = "http://i.w.sandbox.inmobi.com/showad.asm";
        this.E = new a(this);
        this.F = (View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View obj, final MotionEvent obj2) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "onTouch: view: " + obj + ", event: " + obj2);
                if (IMAdView.this.b != null && obj.equals(IMAdView.this.b)) {
                    obj.requestFocusFromTouch();
                    return true;
                }
                if (IMAdView.this.c != null && obj.equals(IMAdView.this.c)) {
                    obj.requestFocusFromTouch();
                    return true;
                }
                if (obj2.getAction() == 1) {
                    IMAdView.this.l();
                    IMAdView.this.a(obj2);
                    return true;
                }
                if (obj2.getAction() != 0) {
                    if (obj2.getAction() == 3) {
                        IMAdView.this.l();
                    }
                    else if (obj2.getAction() == 4) {
                        IMAdView.this.l();
                    }
                    return true;
                }
                if (IMAdView.this.i() || IMAdView.this.h() || IMAdView.this.m == null) {
                    IMAdView.this.l();
                    return true;
                }
                IMAdView.this.k();
                return true;
            }
        };
        this.G = (Animation$AnimationListener)new Animation$AnimationListener() {
            public void onAnimationEnd(final Animation animation) {
            Label_0274_Outer:
                while (true) {
                    while (true) {
                        Label_0255: {
                            try {
                                if (animation.equals(IMAdView.this.a())) {
                                    IMAdView.this.removeAllViews();
                                    if (IMAdView.this.j()) {
                                        IMAdView.this.addView((View)IMAdView.this.b);
                                        if (IMAdView.this.m != null && IMAdView.this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                            IMAdView.this.b.requestFocusFromTouch();
                                        }
                                    }
                                    else {
                                        IMAdView.this.addView((View)IMAdView.this.c);
                                        if (IMAdView.this.m != null && IMAdView.this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                            IMAdView.this.c.requestFocusFromTouch();
                                        }
                                    }
                                    if (IMAdView.this.m.getAdType() != IMAdUnit.AdTypes.RICH_MEDIA && IMAdView.this.m.getAdActionName() != IMAdUnit.AdActionNames.AdActionName_Search) {
                                        IMAdView.this.addView((View)IMAdView.this.d);
                                    }
                                    IMAdView.this.startAnimation(IMAdView.this.b());
                                    return;
                                }
                                break Label_0255;
                            }
                            catch (Exception ex) {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error animating banner ads", ex);
                                return;
                                while (true) {
                                    final boolean b = false;
                                    final IMAdView a;
                                    a.c(b);
                                    IMAdView.this.a(false);
                                    IMAdView.this.l();
                                    return;
                                    a = IMAdView.this;
                                    continue Label_0274_Outer;
                                }
                            }
                            // iftrue(Label_0326:, !IMAdView.h(this.a))
                            finally {
                                if (!animation.equals(IMAdView.this.a())) {
                                    IMAdView.this.a(100, null);
                                }
                            }
                        }
                        Label_0326: {
                            final boolean b = true;
                        }
                        continue;
                    }
                }
            }
            
            public void onAnimationRepeat(final Animation animation) {
            }
            
            public void onAnimationStart(final Animation animation) {
            }
        };
        this.H = new IMHttpRequestCallback() {
            @Override
            public void notifyResult(final int i, final Object o) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", ">>> Got HTTP REQUEST callback. Status: " + i + " ,data=" + o);
                if (i == 0) {
                    IMAdView.a(IMAdView.this, (IMAdUnit)o);
                    IMAdView.this.E.sendEmptyMessage(109);
                }
                else if (i == 1) {
                    final Message obtainMessage = IMAdView.this.E.obtainMessage(110);
                    obtainMessage.obj = o;
                    obtainMessage.sendToTarget();
                }
            }
        };
        this.I = new IMWebView.IMWebViewListener() {
            @Override
            public void onDismissAdScreen() {
                IMAdView.this.a(103, null);
            }
            
            @Override
            public void onError() {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Error loading ad ");
                IMAdView.this.E.sendEmptyMessage(111);
            }
            
            @Override
            public void onExpand() {
                IMAdView.this.a(102, null);
            }
            
            @Override
            public void onExpandClose() {
                IMAdView.this.a(103, null);
            }
            
            @Override
            public void onLeaveApplication() {
                IMAdView.this.a(104, null);
            }
            
            @Override
            public void onShowAdScreen() {
                IMAdView.this.a(102, null);
            }
        };
        this.C = "http://localhost/" + Integer.toString(InternalSDKUtil.incrementBaseUrl()) + "/";
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMAdView Constructor context: " + obj);
        final String attributeValue = set.getAttributeValue((String)null, "appId");
        final int attributeIntValue = set.getAttributeIntValue((String)null, "adSize", -1);
        final String attributeValue2 = set.getAttributeValue((String)null, "slotId");
        if (attributeValue2 != null) {
            this.u = Long.parseLong(attributeValue2);
        }
        this.a((Activity)obj, attributeIntValue, attributeValue);
    }
    
    private void a(final int n) {
        if (n < 0) {
            throw new IllegalArgumentException("Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid 'adSize' attribute in the 'com.inmobi.androidsdk.IMAdView' tag of layout XML. For example, adSize=\"yourAdSize\"");
        }
    }
    
    private void a(final int n, final IMAdRequest.ErrorCode errorCode) {
        if (!this.y) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMAdView not sending callback because the view is not added to any window.");
        }
        else if (this.q != null) {
            this.e.runOnUiThread((Runnable)new Runnable() {
                static /* synthetic */ int[] a() {
                    final int[] d = IMAdView$5.d;
                    if (d != null) {
                        return d;
                    }
                    final int[] d2 = new int[IMAdRequest.ErrorCode.values().length];
                    while (true) {
                        try {
                            d2[IMAdRequest.ErrorCode.AD_CLICK_IN_PROGRESS.ordinal()] = 3;
                            try {
                                d2[IMAdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS.ordinal()] = 2;
                                try {
                                    d2[IMAdRequest.ErrorCode.AD_FETCH_TIMEOUT.ordinal()] = 4;
                                    try {
                                        d2[IMAdRequest.ErrorCode.AD_RENDERING_TIMEOUT.ordinal()] = 5;
                                        try {
                                            d2[IMAdRequest.ErrorCode.INTERNAL_ERROR.ordinal()] = 7;
                                            try {
                                                d2[IMAdRequest.ErrorCode.INVALID_APP_ID.ordinal()] = 9;
                                                try {
                                                    d2[IMAdRequest.ErrorCode.INVALID_REQUEST.ordinal()] = 1;
                                                    try {
                                                        d2[IMAdRequest.ErrorCode.NETWORK_ERROR.ordinal()] = 6;
                                                        try {
                                                            d2[IMAdRequest.ErrorCode.NO_FILL.ordinal()] = 8;
                                                            return IMAdView$5.d = d2;
                                                        }
                                                        catch (NoSuchFieldError noSuchFieldError) {}
                                                    }
                                                    catch (NoSuchFieldError noSuchFieldError2) {}
                                                }
                                                catch (NoSuchFieldError noSuchFieldError3) {}
                                            }
                                            catch (NoSuchFieldError noSuchFieldError4) {}
                                        }
                                        catch (NoSuchFieldError noSuchFieldError5) {}
                                    }
                                    catch (NoSuchFieldError noSuchFieldError6) {}
                                }
                                catch (NoSuchFieldError noSuchFieldError7) {}
                            }
                            catch (NoSuchFieldError noSuchFieldError8) {}
                        }
                        catch (NoSuchFieldError noSuchFieldError9) {
                            continue;
                        }
                        break;
                    }
                }
                
                @Override
                public void run() {
                    Label_0247: {
                        Label_0230: {
                            Label_0213: {
                                try {
                                    switch (n) {
                                        default: {
                                            IMLog.debug("InMobiAndroidSDK_3.6.2", errorCode.toString());
                                            return;
                                        }
                                        case 100: {
                                            IMAdView.this.q.onAdRequestCompleted(IMAdView.this);
                                            IMAdView.this.m();
                                            return;
                                        }
                                        case 101: {
                                            break;
                                        }
                                        case 103: {
                                            break Label_0213;
                                        }
                                        case 102: {
                                            break Label_0230;
                                        }
                                        case 104: {
                                            break Label_0247;
                                        }
                                    }
                                }
                                catch (Exception ex) {
                                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception giving callback to the publisher ", ex);
                                    return;
                                }
                                IMAdView.this.m();
                                switch (a()[errorCode.ordinal()]) {
                                    case 3: {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad click in progress. Your request cannot be processed at this time. Try again later.");
                                        break;
                                    }
                                    case 2: {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad download in progress. Your request cannot be processed at this time. Try again later.");
                                        break;
                                    }
                                    case 8: {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad request successful, but no ad was returned due to lack of ad inventory.");
                                        break;
                                    }
                                    case 9: {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Your App Id may be invalid or inactive. Please verify the app ID");
                                        break;
                                    }
                                }
                                IMAdView.this.q.onAdRequestFailed(IMAdView.this, errorCode);
                                return;
                            }
                            IMAdView.this.q.onDismissAdScreen(IMAdView.this);
                            return;
                        }
                        IMAdView.this.q.onShowAdScreen(IMAdView.this);
                        return;
                    }
                    IMAdView.this.q.onLeaveApplication(IMAdView.this);
                }
            });
        }
    }
    
    private void a(final Activity activity, final int t, final String s) {
        if (activity == null) {
            throw new NullPointerException("Activity cannot be null");
        }
        while (true) {
            try {
                IMSDKUtil.validateAdConfiguration((Context)activity);
                this.a(t);
                IMSDKUtil.validateAppID(s);
                this.s = s;
                this.t = t;
                this.e = IMSDKUtil.getRootActivity(activity);
                if (this.b == null) {
                    this.b = new IMWebView((Context)this.e, this.I, false, false);
                }
                if (this.c == null) {
                    this.addView((View)(this.c = new IMWebView((Context)this.e, this.I, false, false)));
                }
                if (this.d == null) {
                    (this.d = new LinearLayout((Context)this.e)).setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent()));
                    this.d.setOnTouchListener(this.F);
                    this.d.setBackgroundColor(0);
                    this.addView((View)this.d);
                }
                this.e();
                this.d();
                this.z = new com.inmobi.androidsdk.a(this, this.G);
            }
            catch (IMConfigException ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    private void a(final MotionEvent motionEvent) {
        while (true) {
            try {
                if (this.m != null && !this.i()) {
                    this.b(true);
                    if (this.m.getTargetUrl() != null) {
                        IMBrowserActivity.requestOnAdDismiss(this.E.obtainMessage(104));
                        new IMClickProcessingTask(this.m, this.g, (Context)this.e, motionEvent, this.E.obtainMessage(102), this.E.obtainMessage(105), this.E.obtainMessage(106), this.I).execute((Object[])new Void[] { null });
                    }
                }
                this.l();
            }
            catch (Exception ex) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception processing ad click ", ex);
                this.b(false);
                continue;
            }
            break;
        }
    }
    
    static /* synthetic */ void a(final IMAdView imAdView, final IMWebView b) {
        imAdView.b = b;
    }
    
    static /* synthetic */ void a(final IMAdView imAdView, final IMAdUnit m) {
        imAdView.m = m;
    }
    
    private void a(final IMAdUnit imAdUnit) {
        if (imAdUnit != null && IMAdUnit.AdTypes.NONE != imAdUnit.getAdType() && imAdUnit.getCDATABlock() != null) {
            final StringBuffer sb = new StringBuffer(imAdUnit.getCDATABlock());
            if (imAdUnit.getAdType() == IMAdUnit.AdTypes.TEXT) {
                this.a(sb);
            }
            final String string = sb.toString();
            IMWebView imWebView;
            if (this.j()) {
                if (this.b == null) {
                    this.b = new IMWebView((Context)this.e, this.I, false, false);
                }
                imWebView = this.b;
            }
            else {
                if (this.c == null) {
                    this.c = new IMWebView((Context)this.e, this.I, false, false);
                }
                imWebView = this.c;
            }
            if (imAdUnit.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "It came to AdActionType_Search method of displayad");
                imWebView.requestOnSearchAdClicked(this.E.obtainMessage(103));
                imWebView.setAdUnitData(true, imAdUnit.getDefaultTargetUrl());
            }
            else {
                imWebView.setAdUnitData(false, null);
            }
            imWebView.requestOnPageFinishedCallback(this.E.obtainMessage(101));
            this.E.sendEmptyMessageDelayed(108, 60000L);
            imWebView.reinitializeExpandProperties();
            imWebView.loadDataWithBaseURL(this.C, "<html><head><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,user-scalable=no,maximum-scale=1\"><meta http-equiv=\"Content-Type\" content=\"text/html charset=utf-16le\"></head><body style=\"margin:0;padding:0\">" + string + "</body></html>", "text/html", null, this.C);
            return;
        }
        this.a(false);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Cannot load Ad. Invalid Ad Response");
        this.a(101, IMAdRequest.ErrorCode.INTERNAL_ERROR);
    }
    
    private void a(final StringBuffer sb) {
        if (this.n != null) {
            if (this.o != null) {
                sb.append("<style>#im_c { background: -webkit-gradient(linear, left top, left bottom, from(#BGCOLOR1), to(#BGCOLOR2)) !important;\tbackground: -moz-linear-gradient(top,  #BGCOLOR1,  #BGCOLOR2) !important;} </style>".replaceAll("#BGCOLOR1", this.n).replaceAll("#BGCOLOR2", this.o));
            }
            else {
                sb.append("<style>#im_c { \tbackground:#BGCOLOR1 !important;} </style>".replaceAll("#BGCOLOR1", this.n));
            }
        }
        if (this.p != null) {
            sb.append("<style>#im_text {\tcolor:#TEXTCOLOR !important;} </style>".replaceAll("#TEXTCOLOR", this.p));
        }
    }
    
    private void a(final boolean newValue) {
        this.i.set(newValue);
    }
    
    private boolean a(final String s) {
        if (s == null) {
            throw new NullPointerException("Color cannot be null");
        }
        final int length = s.length();
        if (!s.startsWith("#") || (length != 4 && length != 7)) {
            throw new IllegalArgumentException("Invalid color format.Color should be of the format #rgb or #rrggbb ");
        }
        return true;
    }
    
    static /* synthetic */ void b(final IMAdView imAdView, final IMWebView c) {
        imAdView.c = c;
    }
    
    private void b(final boolean newValue) {
        this.j.set(newValue);
    }
    
    private void c() {
        while (true) {
            int n = 320;
            final float density = this.e.getResources().getDisplayMetrics().density;
            while (true) {
                Label_0161: {
                    try {
                        int n2 = 0;
                        switch (this.t) {
                            case 9: {
                                n2 = 48;
                                break;
                            }
                            case 10: {
                                n = 300;
                                n2 = 250;
                                break;
                            }
                            case 11: {
                                n = 729;
                                n2 = 90;
                                break;
                            }
                            case 12: {
                                n = 468;
                                n2 = 60;
                                break;
                            }
                            case 13: {
                                n = 120;
                                n2 = 600;
                                break;
                            }
                            default: {
                                break Label_0161;
                            }
                        }
                        final int width = (int)(density * n);
                        this.getLayoutParams().height = (int)(density * n2);
                        this.getLayoutParams().width = width;
                        this.setLayoutParams(this.getLayoutParams());
                        return;
                    }
                    catch (Exception ex) {
                        IMLog.internal("InMobiAndroidSDK_3.6.2", "Cannot set default size for adview", ex);
                        return;
                    }
                }
                int n2 = 50;
                continue;
            }
        }
    }
    
    static /* synthetic */ void c(final IMAdView imAdView, final boolean w) {
        imAdView.w = w;
    }
    
    private void c(final boolean f) {
        this.f = f;
        if (f) {
            this.b.deinit();
            this.b = null;
            return;
        }
        this.c.deinit();
        this.c = null;
    }
    
    private void d() {
        if (this.h == null) {
            this.h = new IMNiceInfo(this.e.getApplicationContext(), this.g);
        }
    }
    
    private void e() {
        while (true) {
            if (this.g != null) {
                break Label_0166;
            }
            this.g = new IMUserInfo(this.e.getApplicationContext());
            final DisplayMetrics displayMetrics = new DisplayMetrics();
            this.e.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            final float density = displayMetrics.density;
            final Display defaultDisplay = ((WindowManager)this.e.getSystemService("window")).getDefaultDisplay();
            final int displayWidth = IMWrapperFunctions.getDisplayWidth(defaultDisplay);
            final int displayHeight = IMWrapperFunctions.getDisplayHeight(defaultDisplay);
            this.g.setScreenDensity(String.valueOf(density));
            this.g.setScreenSize(displayWidth + "X" + displayHeight);
            try {
                if (this.b != null && this.g.getPhoneDefaultUserAgent().equals("")) {
                    this.g.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent((Context)this.e));
                }
                this.g.setAdUnitSlot(String.valueOf(this.t));
                if (this.u != -1L) {
                    this.g.setSlotId(Long.toString(this.u));
                }
                this.g.updateInfo(this.s, this.r);
            }
            catch (Exception obj) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception occured while setting user agent" + obj);
                continue;
            }
            break;
        }
    }
    
    private void f() {
        try {
            while (true) {
                while (true) {
                    try {
                        this.removeAllViews();
                        if (this.j()) {
                            this.addView((View)this.b);
                            if (this.m != null && this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                this.b.requestFocusFromTouch();
                            }
                        }
                        else {
                            this.addView((View)this.c);
                            if (this.m != null && this.m.getAdActionName() == IMAdUnit.AdActionNames.AdActionName_Search) {
                                this.c.requestFocusFromTouch();
                            }
                        }
                        if (this.m.getAdType() != IMAdUnit.AdTypes.RICH_MEDIA && this.m.getAdActionName() != IMAdUnit.AdActionNames.AdActionName_Search) {
                            this.addView((View)this.d);
                        }
                        if (this.j()) {
                            final boolean b = false;
                            this.c(b);
                            this.a(false);
                            this.l();
                            return;
                        }
                    }
                    catch (Exception ex) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Error swapping banner ads", ex);
                        return;
                    }
                    final boolean b = true;
                    continue;
                }
            }
        }
        finally {
            this.a(100, null);
        }
    }
    
    private boolean g() {
        if (0 == 0 && !this.v && !InternalSDKUtil.validateAppId(this.s)) {
            return false;
        }
        if (this.t < 0) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Invalid Ad Size. Please provide a valid adSize.");
            return false;
        }
        return true;
    }
    
    private boolean h() {
        return this.i.get();
    }
    
    private boolean i() {
        if (this.j.get()) {
            return true;
        }
        IMWebView imWebView;
        if (this.j()) {
            imWebView = this.c;
        }
        else {
            imWebView = this.b;
        }
        final String state = imWebView.getState();
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Current Ad State: " + state);
        if (IMWebView.ViewState.EXPANDED.toString().equalsIgnoreCase(state) || IMWebView.ViewState.RESIZED.toString().equalsIgnoreCase(state) || IMWebView.ViewState.EXPANDING.toString().equalsIgnoreCase(state)) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Current Ad State is neither default nor loading. New ad will not be shown.");
            return true;
        }
        if (imWebView.isBusy()) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc.");
            return true;
        }
        return false;
    }
    
    private boolean j() {
        return this.f;
    }
    
    private void k() {
        try {
            final int argb = Color.argb(100, 0, 0, 0);
            if (this.c != null) {
                this.c.setBackgroundColor(argb);
            }
            if (this.b != null) {
                this.b.setBackgroundColor(argb);
            }
            this.d.setBackgroundColor(argb);
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Error setHighlightedBGColor", ex);
        }
    }
    
    private void l() {
        try {
            if (this.c != null) {
                this.c.setBackgroundColor(0);
            }
            if (this.b != null) {
                this.b.setBackgroundColor(0);
            }
            this.d.setBackgroundColor(0);
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Error setNormalBGColor", ex);
        }
    }
    
    private void m() {
        if (this.E.hasMessages(100)) {
            this.E.removeMessages(100);
        }
        this.E.sendEmptyMessageDelayed(100, (long)(1000 * this.a));
    }
    
    private void setAdServerTestUrl(final String b) {
        this.B = b;
    }
    
    private void setAdServerUrl(final String a) {
        this.A = a;
    }
    
    Animation a() {
        return this.k;
    }
    
    void a(final Animation k) {
        this.k = k;
    }
    
    Animation b() {
        return this.l;
    }
    
    void b(final Animation l) {
        this.l = l;
    }
    
    public int getAdSize() {
        return this.t;
    }
    
    public String getAppId() {
        return this.s;
    }
    
    public IMAdListener getIMAdListener() {
        return this.q;
    }
    
    public IMAdRequest getIMAdRequest() {
        return this.r;
    }
    
    public long getSlotId() {
        return this.u;
    }
    
    public void loadNewAd() {
        while (true) {
            Label_0066: {
                synchronized (this) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", " >>>> Start loading new Ad <<<<");
                    try {
                        if (this.h()) {
                            this.a(101, IMAdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
                        }
                        else {
                            if (!this.i()) {
                                break Label_0066;
                            }
                            this.a(101, IMAdRequest.ErrorCode.AD_CLICK_IN_PROGRESS);
                        }
                    }
                    catch (Exception ex) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Error in loading ad ", ex);
                    }
                    return;
                }
            }
            if (!this.g()) {
                this.a(101, IMAdRequest.ErrorCode.INVALID_REQUEST);
                return;
            }
            this.a(true);
            this.e();
            if (this.g != null) {
                this.g.setRefreshType(0);
            }
            this.E.sendEmptyMessageDelayed(107, 60000L);
            this.E.removeMessages(100);
            (this.D = new IMRequestResponseManager()).asyncRequestAd(this.g, this.h, IMRequestResponseManager.ActionType.AdRequest, this.A, this.B, this.H);
        }
    }
    
    public void loadNewAd(final IMAdRequest imAdRequest) {
        if (imAdRequest != null) {
            this.v = imAdRequest.isTestMode();
            this.setIMAdRequest(imAdRequest);
        }
        this.loadNewAd();
    }
    
    protected void onAttachedToWindow() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "onAttachedToWindow");
        this.y = true;
        this.c();
        this.setRefreshInterval(this.a);
    }
    
    protected void onDetachedFromWindow() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "onDetatchedFromWindow");
        this.y = false;
        this.setRefreshInterval(-1);
        IMWebView imWebView;
        if (this.j()) {
            imWebView = this.c;
        }
        else {
            imWebView = this.b;
        }
        if (imWebView != null) {
            imWebView.deinit();
        }
    }
    
    protected void onWindowVisibilityChanged(final int n) {
        super.onWindowVisibilityChanged(n);
        if (n == 0) {
            this.m();
        }
    }
    
    public void setAdBackgroundColor(final String n) {
        if (!this.a(n)) {
            return;
        }
        this.n = n;
        this.a(this.m);
    }
    
    public void setAdBackgroundGradientColor(final String n, final String o) {
        if (!this.a(n) && !this.a(o)) {
            return;
        }
        this.n = n;
        this.o = o;
        this.a(this.m);
    }
    
    public void setAdSize(final int t) {
        this.a(t);
        this.t = t;
    }
    
    public void setAdTextColor(final String p) {
        if (!this.a(p)) {
            return;
        }
        this.p = p;
        this.a(this.m);
    }
    
    public void setAnimationType(final AnimationType x) {
        this.x = x;
    }
    
    public void setAppId(final String s) {
        IMSDKUtil.validateAppID(s);
        this.s = s;
    }
    
    public void setIMAdListener(final IMAdListener q) {
        this.q = q;
    }
    
    public void setIMAdRequest(final IMAdRequest r) {
        this.r = r;
    }
    
    public void setRefTagParam(final String s, final String s2) {
        if (s == null || s2 == null) {
            throw new NullPointerException("Key or Value cannot be null");
        }
        if (s.trim().equals("") || s2.trim().equals("")) {
            throw new IllegalArgumentException("Key or Value cannot be empty");
        }
        if (this.g != null) {
            this.g.setRefTagKey(s.toLowerCase());
            this.g.setRefTagValue(s2.toLowerCase());
        }
    }
    
    public void setRefreshInterval(final int a) {
        if (a == -1) {
            this.a = -1;
            this.E.removeMessages(100);
            return;
        }
        if (a < 20) {
            throw new IllegalArgumentException("Refresh Interval cannot be less than 20 seconds.");
        }
        this.a = a;
        this.E.removeMessages(100);
        this.E.sendEmptyMessageDelayed(100, (long)(a * 1000));
    }
    
    public void setSlotId(final long u) {
        this.u = u;
    }
    
    public void stopLoading() {
        if (this.E.hasMessages(107)) {
            this.E.removeMessages(107);
            this.E.sendEmptyMessage(107);
        }
        else if (this.E.hasMessages(108)) {
            this.E.removeMessages(108);
            this.E.sendEmptyMessage(108);
        }
    }
    
    public enum AnimationType
    {
        ANIMATION_ALPHA("ANIMATION_ALPHA", 2), 
        ANIMATION_OFF("ANIMATION_OFF", 0), 
        ROTATE_HORIZONTAL_AXIS("ROTATE_HORIZONTAL_AXIS", 1), 
        ROTATE_VERTICAL_AXIS("ROTATE_VERTICAL_AXIS", 3);
        
        static {
            a = new AnimationType[] { AnimationType.ANIMATION_OFF, AnimationType.ROTATE_HORIZONTAL_AXIS, AnimationType.ANIMATION_ALPHA, AnimationType.ROTATE_VERTICAL_AXIS };
        }
    }
    
    static class a extends Handler
    {
        private final WeakReference<IMAdView> a;
        
        public a(final IMAdView referent) {
            super();
            this.a = new WeakReference<IMAdView>(referent);
        }
        
        public void handleMessage(final Message message) {
            final IMAdView imAdView = this.a.get();
            if (imAdView != null) {
                switch (message.what) {
                    case 109: {
                        this.removeMessages(107);
                        imAdView.a(imAdView.m);
                        break;
                    }
                    case 110: {
                        this.removeMessages(107);
                        imAdView.a(101, (IMAdRequest.ErrorCode)message.obj);
                        imAdView.a(false);
                        break;
                    }
                    case 111: {
                        this.removeMessages(108);
                        this.removeMessages(101);
                        imAdView.a(101, IMAdRequest.ErrorCode.INTERNAL_ERROR);
                        break;
                    }
                    case 108: {
                        this.removeMessages(111);
                        this.removeMessages(101);
                        imAdView.a(false);
                        IMWebView imWebView;
                        if (imAdView.j()) {
                            imWebView = imAdView.b;
                            IMAdView.a(imAdView, (IMWebView)null);
                        }
                        else {
                            imWebView = imAdView.c;
                            IMAdView.b(imAdView, (IMWebView)null);
                        }
                        imWebView.cancelLoad();
                        imWebView.stopLoading();
                        imWebView.deinit();
                        imAdView.a(101, IMAdRequest.ErrorCode.AD_RENDERING_TIMEOUT);
                        break;
                    }
                    case 107: {
                        this.removeMessages(109);
                        this.removeMessages(110);
                        imAdView.D.doCancel();
                        imAdView.a(false);
                        imAdView.a(101, IMAdRequest.ErrorCode.AD_FETCH_TIMEOUT);
                        break;
                    }
                    case 100: {
                        if (imAdView.a == -1) {
                            return;
                        }
                        if (!imAdView.e.hasWindowFocus()) {
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Activity is not in the foreground. New ad will not be loaded.");
                        }
                        else if (IMWebView.isInterstitialDisplayed.get()) {
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Ad cannot be loaded.Interstitial Ad is displayed.");
                        }
                        else {
                            imAdView.loadNewAd();
                        }
                        if (imAdView.g != null) {
                            imAdView.g.setRefreshType(1);
                            break;
                        }
                        break;
                    }
                    case 101: {
                        this.removeMessages(108);
                        if (imAdView.w) {
                            imAdView.f();
                            IMAdView.c(imAdView, false);
                            break;
                        }
                        if (imAdView.x == AnimationType.ANIMATION_OFF) {
                            imAdView.f();
                            break;
                        }
                        imAdView.z.a(imAdView.x);
                        break;
                    }
                    case 102: {
                        imAdView.b(false);
                        break;
                    }
                    case 103: {
                        final Bundle data = message.getData();
                        if (data != null && imAdView.m != null && data.getString("finaltargeturl") != null) {
                            imAdView.m.setTargetUrl(data.getString("finaltargeturl"));
                        }
                        imAdView.a((MotionEvent)null);
                        break;
                    }
                    case 104: {
                        imAdView.a(103, null);
                        break;
                    }
                    case 105: {
                        imAdView.a(102, null);
                        break;
                    }
                    case 106: {
                        imAdView.a(104, null);
                        break;
                    }
                }
            }
            super.handleMessage(message);
        }
    }
}
