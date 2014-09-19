package com.inmobi.androidsdk.ai.container;

import java.io.*;
import java.util.concurrent.atomic.*;
import com.inmobi.androidsdk.ai.controller.*;
import android.graphics.*;
import android.net.*;
import com.inmobi.androidsdk.*;
import android.app.*;
import android.media.*;
import android.content.pm.*;
import android.widget.*;
import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import org.apache.http.protocol.*;
import org.apache.http.*;
import android.webkit.*;
import com.inmobi.androidsdk.ai.controller.util.*;
import android.content.*;
import com.inmobi.commons.internal.*;
import android.view.*;
import android.util.*;
import android.annotation.*;
import java.util.*;
import android.os.*;
import java.lang.ref.*;
import org.apache.http.client.*;

public class IMWebView extends WebView implements Serializable
{
    protected static final int IMWEBVIEW_INTERSTITIAL_ID = 117;
    protected static final int INT_BACKGROUND_ID = 224;
    protected static final int INT_CLOSE_BUTTON = 225;
    protected static final int PLACEHOLDER_ID = 437;
    protected static final int RELATIVELAYOUT_ID = 438;
    private static int[] a;
    private static /* synthetic */ int[] ad;
    public static AtomicBoolean isInterstitialDisplayed;
    private static final long serialVersionUID = 7098506283154473782L;
    public static boolean userInitiatedClose;
    private Hashtable<String, IMAVPlayer> A;
    private Hashtable<String, IMAVPlayer> B;
    private int C;
    private int D;
    private ArrayList<String> E;
    private AtomicBoolean F;
    private a G;
    private Display H;
    private ViewGroup I;
    private WebViewClient J;
    private VideoView K;
    private ViewGroup L;
    private FrameLayout M;
    private WebChromeClient$CustomViewCallback N;
    private WebChromeClient O;
    private MediaPlayer$OnCompletionListener P;
    private boolean Q;
    private boolean R;
    private Message S;
    private Message T;
    private Message U;
    private Activity V;
    private Activity W;
    private Message Z;
    private int aa;
    private int ab;
    private WebViewClient ac;
    private boolean b;
    private JSUtilityController c;
    private float d;
    private int e;
    private int f;
    private int g;
    private ViewState h;
    private IMWebViewListener i;
    public boolean isTablet;
    private boolean j;
    private boolean k;
    private boolean l;
    private String m;
    public boolean mIsInterstitialAd;
    public Message mMsgOnInterstitialShown;
    public IMWebView mOriginalWebviewForExpandUrl;
    private int n;
    private boolean o;
    private IMWebView p;
    public int publisherOrientation;
    private boolean q;
    private boolean r;
    private boolean s;
    private JSController.ExpandProperties t;
    private boolean u;
    public boolean useLockOrient;
    private String v;
    private IMAVPlayer w;
    public String webviewUserAgent;
    private IMAVPlayer x;
    private Object y;
    private AtomicBoolean z;
    
    static {
        IMWebView.a = new int[] { 16843039, 16843040 };
        IMWebView.userInitiatedClose = false;
        IMWebView.isInterstitialDisplayed = new AtomicBoolean();
    }
    
    public IMWebView(final Context context, final AttributeSet set) {
        super(context, set);
        this.h = ViewState.LOADING;
        this.j = false;
        this.k = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.o = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.r = false;
        this.s = true;
        this.u = false;
        this.y = new Object();
        this.z = new AtomicBoolean(false);
        this.A = new Hashtable<String, IMAVPlayer>();
        this.B = new Hashtable<String, IMAVPlayer>();
        this.E = new ArrayList<String>();
        this.F = new AtomicBoolean();
        this.G = new a(this);
        this.J = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:" + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onLoadResource(webView, str);
                }
                if (!IMWebView.this.j && str.contains("mraid.js")) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object");
                    IMWebView.a(IMWebView.this, true);
                    final String url = IMWebView.this.getUrl();
                    if (!IMWebView.this.E.contains(url)) {
                        IMWebView.this.E.add(url);
                    }
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                }
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageFinished, url: " + s);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageFinished(webView, s);
                }
                try {
                    if (!IMWebView.this.j && IMWebView.this.E.contains(s)) {
                        IMWebView.a(IMWebView.this, true);
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                    }
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> Current State:" + IMWebView.this.h);
                    if (IMWebView.this.h == ViewState.LOADING) {
                        if (IMWebView.this.o) {
                            IMWebView.this.a(ViewState.EXPANDED);
                        }
                        else {
                            IMWebView.this.a(ViewState.DEFAULT);
                        }
                        IMWebView.this.injectJavaScript("window.mraidview.fireReadyEvent();");
                        if (!IMWebView.this.mIsInterstitialAd || IMWebView.this.q) {
                            IMWebView.this.a(true);
                            if (IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                        }
                        if (IMWebView.this.S != null && !IMWebView.this.F.get()) {
                            IMWebView.this.S.sendToTarget();
                        }
                        if (IMWebView.this.T != null) {
                            IMWebView.this.T.sendToTarget();
                        }
                    }
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in onPageFinished ", ex);
                }
            }
            
            public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageStarted url: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageStarted(webView, str, bitmap);
                }
                IMWebView.a(IMWebView.this, false);
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> error: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onReceivedError(webView, n, str, s);
                }
                try {
                    if (IMWebView.this.h == ViewState.LOADING && IMWebView.this.i != null && !IMWebView.this.F.get()) {
                        IMWebView.this.i.onError();
                    }
                    IMWebView.a(IMWebView.this, (Message)null);
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in webview loading ", ex);
                }
            }
            
            public boolean shouldOverrideUrlLoading(final WebView obj, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + obj);
                if (IMWebView.this.l) {
                    IMWebView.this.a(obj, str);
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent2);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("about:blank")) {
                        return false;
                    }
                    if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                        final Intent intent3 = new Intent();
                        intent3.setAction("android.intent.action.VIEW");
                        intent3.setData(parse);
                        intent3.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent3);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    IMWebView.this.doHidePlayers();
                    if (!IMWebView.this.q) {
                        final Intent intent4 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldoverride:" + str);
                        intent4.putExtra("extra_url", str);
                        if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                            intent4.putExtra("FIRST_INSTANCE", true);
                        }
                        IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                        IMWebView.this.W.startActivity(intent4);
                        IMWebView.this.r();
                        return true;
                    }
                }
                catch (Exception ex2) {
                    try {
                        if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                            final Intent intent5 = new Intent();
                            intent5.setAction("android.intent.action.VIEW");
                            intent5.setData(parse);
                            intent5.addFlags(268435456);
                            IMWebView.this.W.startActivity(intent5);
                            IMWebView.this.fireOnLeaveApplication();
                            return true;
                        }
                        IMWebView.this.doHidePlayers();
                        if (!IMWebView.this.q) {
                            final Intent intent6 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> open:" + str);
                            intent6.putExtra("extra_url", str);
                            if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                                intent6.putExtra("FIRST_INSTANCE", true);
                            }
                            IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                            IMWebView.this.W.startActivity(intent6);
                            IMWebView.this.r();
                            return true;
                        }
                        return false;
                    }
                    catch (Exception ex) {
                        IMLog.internal("InMobiAndroidSDK_3.6.2", "IMWebview should override ", ex);
                        return false;
                    }
                }
                return false;
            }
        };
        this.O = new WebChromeClient() {
            public boolean onJsAlert(final WebView webView, final String title, final String s, final JsResult jsResult) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onJsAlert, " + s);
                try {
                    new AlertDialog$Builder(webView.getContext()).setTitle((CharSequence)title).setMessage((CharSequence)s).setPositiveButton(17039370, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                        private final /* synthetic */ JsResult b;
                        
                        public void onClick(final DialogInterface dialogInterface, final int n) {
                            this.b.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "webchrome client exception onJSAlert ", ex);
                    return true;
                }
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "onShowCustomView ******************************");
                try {
                    if (view instanceof FrameLayout) {
                        IMWebView.a(IMWebView.this, (FrameLayout)view);
                        IMWebView.a(IMWebView.this, webChromeClient$CustomViewCallback);
                        IMWebView.a(IMWebView.this, (ViewGroup)((FrameLayout)IMWebView.this.W.findViewById(16908290)).getChildAt(0));
                        if (IMWebView.this.M.getFocusedChild() instanceof VideoView) {
                            IMWebView.a(IMWebView.this, (VideoView)IMWebView.this.M.getFocusedChild());
                            IMWebView.this.L.setVisibility(8);
                            IMWebView.this.M.setVisibility(0);
                            IMWebView.this.W.setContentView((View)IMWebView.this.M);
                            IMWebView.this.K.setOnCompletionListener(IMWebView.this.P);
                            IMWebView.this.K.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                                public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Back Button pressed when html5 video is playing");
                                        IMWebView.this.K.stopPlayback();
                                        IMWebView.this.M.setVisibility(8);
                                        IMWebView.this.e();
                                        IMWebView.this.W.setContentView((View)IMWebView.this.L);
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            IMWebView.this.K.start();
                        }
                    }
                }
                catch (Exception ex) {}
            }
        };
        this.P = (MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
            public void onCompletion(final MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.M.setVisibility(8);
                    IMWebView.this.e();
                    IMWebView.this.W.setContentView((View)IMWebView.this.L);
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "Media Player onCompletion", ex);
                }
            }
        };
        this.R = true;
        this.aa = -5;
        this.ab = -5;
        this.f();
        this.getContext().obtainStyledAttributes(set, IMWebView.a).recycle();
    }
    
    public IMWebView(final Context context, final IMWebViewListener i) {
        super(context);
        this.h = ViewState.LOADING;
        this.j = false;
        this.k = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.o = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.r = false;
        this.s = true;
        this.u = false;
        this.y = new Object();
        this.z = new AtomicBoolean(false);
        this.A = new Hashtable<String, IMAVPlayer>();
        this.B = new Hashtable<String, IMAVPlayer>();
        this.E = new ArrayList<String>();
        this.F = new AtomicBoolean();
        this.G = new a(this);
        this.J = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:" + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onLoadResource(webView, str);
                }
                if (!IMWebView.this.j && str.contains("mraid.js")) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object");
                    IMWebView.a(IMWebView.this, true);
                    final String url = IMWebView.this.getUrl();
                    if (!IMWebView.this.E.contains(url)) {
                        IMWebView.this.E.add(url);
                    }
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                }
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageFinished, url: " + s);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageFinished(webView, s);
                }
                try {
                    if (!IMWebView.this.j && IMWebView.this.E.contains(s)) {
                        IMWebView.a(IMWebView.this, true);
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                    }
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> Current State:" + IMWebView.this.h);
                    if (IMWebView.this.h == ViewState.LOADING) {
                        if (IMWebView.this.o) {
                            IMWebView.this.a(ViewState.EXPANDED);
                        }
                        else {
                            IMWebView.this.a(ViewState.DEFAULT);
                        }
                        IMWebView.this.injectJavaScript("window.mraidview.fireReadyEvent();");
                        if (!IMWebView.this.mIsInterstitialAd || IMWebView.this.q) {
                            IMWebView.this.a(true);
                            if (IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                        }
                        if (IMWebView.this.S != null && !IMWebView.this.F.get()) {
                            IMWebView.this.S.sendToTarget();
                        }
                        if (IMWebView.this.T != null) {
                            IMWebView.this.T.sendToTarget();
                        }
                    }
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in onPageFinished ", ex);
                }
            }
            
            public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageStarted url: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageStarted(webView, str, bitmap);
                }
                IMWebView.a(IMWebView.this, false);
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> error: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onReceivedError(webView, n, str, s);
                }
                try {
                    if (IMWebView.this.h == ViewState.LOADING && IMWebView.this.i != null && !IMWebView.this.F.get()) {
                        IMWebView.this.i.onError();
                    }
                    IMWebView.a(IMWebView.this, (Message)null);
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in webview loading ", ex);
                }
            }
            
            public boolean shouldOverrideUrlLoading(final WebView obj, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + obj);
                if (IMWebView.this.l) {
                    IMWebView.this.a(obj, str);
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent2);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("about:blank")) {
                        return false;
                    }
                    if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                        final Intent intent3 = new Intent();
                        intent3.setAction("android.intent.action.VIEW");
                        intent3.setData(parse);
                        intent3.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent3);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    IMWebView.this.doHidePlayers();
                    if (!IMWebView.this.q) {
                        final Intent intent4 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldoverride:" + str);
                        intent4.putExtra("extra_url", str);
                        if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                            intent4.putExtra("FIRST_INSTANCE", true);
                        }
                        IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                        IMWebView.this.W.startActivity(intent4);
                        IMWebView.this.r();
                        return true;
                    }
                }
                catch (Exception ex2) {
                    try {
                        if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                            final Intent intent5 = new Intent();
                            intent5.setAction("android.intent.action.VIEW");
                            intent5.setData(parse);
                            intent5.addFlags(268435456);
                            IMWebView.this.W.startActivity(intent5);
                            IMWebView.this.fireOnLeaveApplication();
                            return true;
                        }
                        IMWebView.this.doHidePlayers();
                        if (!IMWebView.this.q) {
                            final Intent intent6 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> open:" + str);
                            intent6.putExtra("extra_url", str);
                            if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                                intent6.putExtra("FIRST_INSTANCE", true);
                            }
                            IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                            IMWebView.this.W.startActivity(intent6);
                            IMWebView.this.r();
                            return true;
                        }
                        return false;
                    }
                    catch (Exception ex) {
                        IMLog.internal("InMobiAndroidSDK_3.6.2", "IMWebview should override ", ex);
                        return false;
                    }
                }
                return false;
            }
        };
        this.O = new WebChromeClient() {
            public boolean onJsAlert(final WebView webView, final String title, final String s, final JsResult jsResult) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onJsAlert, " + s);
                try {
                    new AlertDialog$Builder(webView.getContext()).setTitle((CharSequence)title).setMessage((CharSequence)s).setPositiveButton(17039370, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                        private final /* synthetic */ JsResult b;
                        
                        public void onClick(final DialogInterface dialogInterface, final int n) {
                            this.b.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "webchrome client exception onJSAlert ", ex);
                    return true;
                }
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "onShowCustomView ******************************");
                try {
                    if (view instanceof FrameLayout) {
                        IMWebView.a(IMWebView.this, (FrameLayout)view);
                        IMWebView.a(IMWebView.this, webChromeClient$CustomViewCallback);
                        IMWebView.a(IMWebView.this, (ViewGroup)((FrameLayout)IMWebView.this.W.findViewById(16908290)).getChildAt(0));
                        if (IMWebView.this.M.getFocusedChild() instanceof VideoView) {
                            IMWebView.a(IMWebView.this, (VideoView)IMWebView.this.M.getFocusedChild());
                            IMWebView.this.L.setVisibility(8);
                            IMWebView.this.M.setVisibility(0);
                            IMWebView.this.W.setContentView((View)IMWebView.this.M);
                            IMWebView.this.K.setOnCompletionListener(IMWebView.this.P);
                            IMWebView.this.K.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                                public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Back Button pressed when html5 video is playing");
                                        IMWebView.this.K.stopPlayback();
                                        IMWebView.this.M.setVisibility(8);
                                        IMWebView.this.e();
                                        IMWebView.this.W.setContentView((View)IMWebView.this.L);
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            IMWebView.this.K.start();
                        }
                    }
                }
                catch (Exception ex) {}
            }
        };
        this.P = (MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
            public void onCompletion(final MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.M.setVisibility(8);
                    IMWebView.this.e();
                    IMWebView.this.W.setContentView((View)IMWebView.this.L);
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "Media Player onCompletion", ex);
                }
            }
        };
        this.R = true;
        this.aa = -5;
        this.ab = -5;
        this.i = i;
        this.f();
    }
    
    public IMWebView(final Context context, final IMWebViewListener i, final boolean mIsInterstitialAd, final boolean q) {
        super(context);
        this.h = ViewState.LOADING;
        this.j = false;
        this.k = false;
        this.mIsInterstitialAd = false;
        this.isTablet = false;
        this.o = false;
        this.mOriginalWebviewForExpandUrl = null;
        this.r = false;
        this.s = true;
        this.u = false;
        this.y = new Object();
        this.z = new AtomicBoolean(false);
        this.A = new Hashtable<String, IMAVPlayer>();
        this.B = new Hashtable<String, IMAVPlayer>();
        this.E = new ArrayList<String>();
        this.F = new AtomicBoolean();
        this.G = new a(this);
        this.J = new WebViewClient() {
            public void onLoadResource(final WebView webView, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:" + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onLoadResource(webView, str);
                }
                if (!IMWebView.this.j && str.contains("mraid.js")) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onLoadResource:Hippy, Mraid ad alert!...injecting mraid and mraidview object");
                    IMWebView.a(IMWebView.this, true);
                    final String url = IMWebView.this.getUrl();
                    if (!IMWebView.this.E.contains(url)) {
                        IMWebView.this.E.add(url);
                    }
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                    IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                }
            }
            
            public void onPageFinished(final WebView webView, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageFinished, url: " + s);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageFinished(webView, s);
                }
                try {
                    if (!IMWebView.this.j && IMWebView.this.E.contains(s)) {
                        IMWebView.a(IMWebView.this, true);
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraidview={},f={},g=[],l=!1;c.fireReadyEvent=function(){var b=f.ready;if(null!=b)for(var a=0;a<b.length;a++)b[a]();return\"OK\"};c.fireStateChangeEvent=function(b){var a=f.stateChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireViewableChangeEvent=function(b){var a=f.viewableChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireErrorEvent=function(b,a){var c=f.error;if(null!=c)for(var e=0;e<c.length;e++)c[e](b,a);return\"OK\"};c.fireOrientationChangeEvent=function(b){var a=f.orientationChange;if(null!=a)for(var c=0;c<a.length;c++)a[c](b);return\"OK\"};c.fireMediaTrackingEvent=function(b,a){var c={};c.name=b;var e=\"inmobi_media_\"+b;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(e=e+\"_\"+a);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaErrorEvent=function(b,a){var c={name:\"error\"};c.code=a;var e=\"inmobi_media_\"+c.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(e=e+\"_\"+b);e=f[e];if(null!=e)for(var h=0;h<e.length;h++)e[h](c);return\"OK\"};c.fireMediaTimeUpdateEvent=function(b,a,c){var e={name:\"timeupdate\",target:{}};e.target.currentTime=a;e.target.duration=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaCloseEvent=function(b,a,c){var e={name:\"close\"};e.viaUserInteraction=a;e.target={};e.target.currentTime=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.fireMediaVolumeChangeEvent=function(b,a,c){var e={name:\"volumechange\",target:{}};e.target.volume=a;e.target.muted=c;a=\"inmobi_media_\"+e.name;\"undefined\"!=typeof b&&(null!=b&&\"\"!=b)&&(a=a+\"_\"+b);b=f[a];if(null!=b)for(a=0;a<b.length;a++)b[a](e);return\"OK\"};c.showAlert=function(b){utilityController.showAlert(b)};c.zeroPad=function(b){var a=\"\";10>b&&(a+=\"0\");return a+b};c.addEventListener=function(b,a){var c=f[b];null==c&&(f[b]=[],c=f[b]);for(var e in c)if(a==e)return;c.push(a)};c.removeEventListener=function(b){try{var a=f[b];null!=a&&delete a}catch(d){c.log(d)}};c.useCustomClose=function(b){try{displayController.useCustomClose(b)}catch(a){c.showAlert(\"use CustomClose: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.stackCommands=function(b,a){l?g.push(b):(eval(b),a&&(l=!0))};c.executeStack=function(){for(l=!1;0<g.length;){var b=g.shift();eval(b)}};c.emptyStack=function(){for(;0<g.length;)g.shift()};c.expand=function(b){try{displayController.expand(b)}catch(a){c.showAlert(\"executeNativeExpand: \"+a+\", URL = \"+b)}};c.setExpandProperties=function(b){try{b?this.props=b:b=null,displayController.setExpandProperties(c.stringify(b))}catch(a){c.showAlert(\"executeNativesetExpandProperties: \"+a+\", props = \"+b)}};c.acceptAction=function(b){try{displayController.acceptAction(c.stringify(b))}catch(a){c.showAlert(\"acceptAction: \"+a+\", params = \"+b)}};c.rejectAction=function(b){try{displayController.rejectAction(c.stringify(b))}catch(a){c.showAlert(\"rejectAction: \"+a+\", params = \"+b)}};c.open=function(b){try{displayController.open(b)}catch(a){c.showAlert(\"open: \"+a)}};c.openExternal=function(b){try{utilityController.openExternal(b)}catch(a){c.showAlert(\"openExternal: \"+a)}};c.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(b){c.showAlert(\"getScreenSize: \"+b)}};c.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(b){c.showAlert(\"getCurrentPosition: \"+b)}};c.resize=function(b,a){try{displayController.resize(b,a)}catch(d){c.showAlert(\"resize: \"+d)}};c.getState=function(){try{return String(displayController.getState())}catch(b){c.showAlert(\"getState: \"+b)}};c.getOrientation=function(){try{return String(displayController.getOrientation())}catch(b){c.showAlert(\"getOrientation: \"+b)}};c.isViewable=function(){try{return displayController.isViewable()}catch(b){c.showAlert(\"isViewable: \"+b)}};c.log=function(b){try{utilityController.log(b)}catch(a){c.showAlert(\"log: \"+a)}};c.getPlacementType=function(){return displayController.getPlacementType()};c.asyncPing=function(b){try{utilityController.asyncPing(b)}catch(a){c.showAlert(\"asyncPing: \"+a)}};c.close=function(){try{displayController.close()}catch(b){c.showAlert(\"close: \"+b)}};c.makeCall=function(b){try{utilityController.makeCall(b)}catch(a){c.showAlert(\"makeCall: \"+a)}};c.sendMail=function(b,a,d){try{utilityController.sendMail(b,a,d)}catch(e){c.showAlert(\"sendMail: \"+e)}};c.sendSMS=function(b,a){try{utilityController.sendSMS(b,a)}catch(d){c.showAlert(\"sendSMS: \"+d)}};c.pauseAudio=function(b){try{var a=getPID(b);utilityController.pauseAudio(a)}catch(d){c.showAlert(\"pauseAudio: \"+d)}};c.muteAudio=function(b){try{var a=getPID(b);utilityController.muteAudio(a)}catch(d){c.showAlert(\"muteAudio: \"+d)}};c.unMuteAudio=function(b){try{var a=getPID(b);utilityController.unMuteAudio(a)}catch(d){c.showAlert(\"unMuteAudio: \"+d)}};c.isAudioMuted=function(b){try{var a=getPID(b);return utilityController.isAudioMuted(a)}catch(d){c.showAlert(\"isAudioMuted: \"+d)}};c.setAudioVolume=function(b,a){try{var d=getPID(b);utilityController.setAudioVolume(d,a)}catch(e){c.showAlert(\"setAudioVolume: \"+e)}};c.getAudioVolume=function(b){try{var a=getPID(b);return utilityController.getAudioVolume(a)}catch(d){c.showAlert(\"getAudioVolume: \"+d)}};c.seekAudio=function(b,a){try{var d=getPID(b);utilityController.seekAudio(d,a)}catch(e){c.showAlert(\"seekAudio: \"+e)}};c.playAudio=function(b,a){var d=!0,e=!1,h=\"normal\",f=\"normal\",g=!0,j=\"\",n=getPID(a);null!=b&&(j=b);null!=a&&(\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(d=!1),\"undefined\"!=typeof a.loop&&!0===a.loop&&(e=!0),\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(h=a.startStyle),\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(f=a.stopStyle),\"fullscreen\"==h&&(g=!0));try{utilityController.playAudio(j,d,g,e,h,f,n)}catch(o){c.showAlert(\"playAudio: \"+o)}};c.pauseVideo=function(b){try{var a=getPID(b);utilityController.pauseVideo(a)}catch(d){c.showAlert(\"pauseVideo: \"+d)}};c.closeVideo=function(b){try{var a=getPID(b);utilityController.closeVideo(a)}catch(d){c.showAlert(\"closeVideo: \"+d)}};c.hideVideo=function(b){try{var a=getPID(b);utilityController.hideVideo(a)}catch(d){c.showAlert(\"hideVideo: \"+d)}};c.showVideo=function(b){try{var a=getPID(b);utilityController.showVideo(a)}catch(d){c.showAlert(\"showVideo: \"+d)}};c.muteVideo=function(b){try{var a=getPID(b);utilityController.muteVideo(a)}catch(d){c.showAlert(\"muteVideo: \"+d)}};c.unMuteVideo=function(b){try{var a=getPID(b);utilityController.unMuteVideo(a)}catch(d){c.showAlert(\"unMuteVideo: \"+d)}};c.seekVideo=function(b,a){try{var d=getPID(b);utilityController.seekVideo(d,a)}catch(e){c.showAlert(\"seekVideo: \"+e)}};c.isVideoMuted=function(b){try{var a=getPID(b);return utilityController.isVideoMuted(a)}catch(d){c.showAlert(\"isVideoMuted: \"+d)}};c.setVideoVolume=function(b,a){try{var d=getPID(b);utilityController.setVideoVolume(d,a)}catch(e){c.showAlert(\"setVideoVolume: \"+e)}};c.getVideoVolume=function(b){try{var a=getPID(b);return utilityController.getVideoVolume(a)}catch(d){c.showAlert(\"getVideoVolume: \"+d)}};c.playVideo=function(b,a){var d=!1,e=!0,f=!0,g=!1,j=-99999,l=-99999,n=-99999,o=-99999,k=\"normal\",m=\"exit\",p=\"\",q=getPID(a);null!=b&&(p=b);if(null!=a){\"undefined\"!=typeof a.audio&&\"muted\"==a.audio&&(d=!0);\"undefined\"!=typeof a.autoplay&&!1===a.autoplay&&(e=!1);\"undefined\"!=typeof a.controls&&!1===a.controls&&(f=!1);\"undefined\"!=typeof a.loop&&!0===a.loop&&(g=!0);if(\"undefined\"!=typeof a.inline&&null!=a.inline&&(j=a.inline.left,l=a.inline.top,\"undefined\"!=typeof a.width&&null!=a.width&&(n=a.width),\"undefined\"!=typeof a.height&&null!=a.height))o=a.height;\"undefined\"!=typeof a.startStyle&&null!=a.startStyle&&(k=a.startStyle);\"undefined\"!=typeof a.stopStyle&&null!=a.stopStyle&&(m=a.stopStyle);\"fullscreen\"==k&&(f=!0)}try{utilityController.playVideo(p,d,e,f,g,j,l,n,o,k,m,q)}catch(r){c.showAlert(\"playVideo: \"+r)}};c.updateToPassbook=function(){c.fireErrorEvent(\"Method not supported\",\"updateToPassbook\");c.log(\"Method not supported\")};c.stringify=function(b){if(\"undefined\"===typeof JSON){var a=\"\",d;if(\"undefined\"==typeof b.length)return c.stringifyArg(b);for(d=0;d<b.length;d++)0<d&&(a+=\",\"),a+=c.stringifyArg(b[d]);return a+\"]\"}return JSON.stringify(b)};c.stringifyArg=function(b){var a,d,e;d=typeof b;a=\"\";if(\"number\"===d||\"boolean\"===d)a+=args;else if(b instanceof Array)a=a+\"[\"+b+\"]\";else if(b instanceof Object){d=!0;a+=\"{\";for(e in b)null!==b[e]&&(d||(a+=\",\"),a=a+'\"'+e+'\":',d=typeof b[e],a=\"number\"===d||\"boolean\"===d?a+b[e]:\"function\"===typeof b[e]?a+'\"\"':b[e]instanceof Object?a+this.stringify(args[i][e]):a+'\"'+b[e]+'\"',d=!1);a+=\"}\"}else b=b.replace(/\\\\/g,\"\\\\\\\\\"),b=b.replace(/\"/g,'\\\\\"'),a=a+'\"'+b+'\"';c.showAlert(\"json:\"+a);return a};getPID=function(b){var a=\"\";null!=b&&(\"undefined\"!=typeof b.id&&null!=b.id)&&(a=b.id);return a};var k,j=function(){window.orientation!==k&&(k=window.orientation,displayController.onOrientationChange())};c.registerOrientationListener=function(){k=window.orientation;window.addEventListener(\"resize\",j,!1);window.addEventListener(\"orientationchange\",j,!1)};c.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",j,!1);window.removeEventListener(\"orientationchange\",j,!1)}})();");
                        IMWebView.this.injectJavaScript("(function(){var c=window.mraid={};c.STATES={LOADING:\"loading\",DEFAULT:\"default\",RESIZED:\"resized\",EXPANDED:\"expanded\",HIDDEN:\"hidden\"};var d=c.EVENTS={READY:\"ready\",ERROR:\"error\",STATECHANGE:\"stateChange\",VIEWABLECHANGE:\"viewableChange\",ORIENTATIONCHANGE:\"orientationChange\",PASSBOOKCHANGE:\"passbookChange\"},i={width:0,height:0},g={width:0,height:0},f={},h={width:0,height:0,useCustomClose:!1,isModal:!0,lockOrientation:!1,orientation:\"\"},l=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var c=String(a);b[c]||(b[c]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var c in b)b[c].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}};mraidview.addEventListener(d.READY,function(){e(d.READY)});mraidview.addEventListener(d.STATECHANGE,function(a){e(d.STATECHANGE,a)});mraidview.addEventListener(d.VIEWABLECHANGE,function(a){e(d.VIEWABLECHANGE,a)});mraidview.addEventListener(\"error\",function(a,b){e(d.ERROR,a,b)});mraidview.addEventListener(d.ORIENTATIONCHANGE,function(a){e(d.ORIENTATIONCHANGE,a)});var k=function(a){var b=function(){};b.prototype=a;return new b},e=function(){for(var a=Array(arguments.length),b=0;b<arguments.length;b++)a[b]=arguments[b];b=a.shift();try{f[b]&&f[b].broadcast(a)}catch(c){}},j=function(a){for(var b=0,c=a.length-1;b<a.length&&\" \"==a[b];)b++;for(;c>b&&\" \"==a[c];)c-=1;return a.substring(b,c+1)};c.addEventListener=function(a,b){try{!a||!b?e(d.ERROR,\"Both event and listener are required.\",\"addEventListener\"):d.ERROR==a||d.READY==a||d.STATECHANGE==a||d.VIEWABLECHANGE==a||d.ORIENTATIONCHANGE==a?(f[a]||(f[a]=new l(a)),f[a].add(b)):mraidview.addEventListener(a,b)}catch(c){mraidview.log(c)}};c.useCustomClose=function(a){h.useCustomClose=a;mraidview.useCustomClose(a)};c.close=function(){mraidview.close()};c.getExpandProperties=function(){return h};c.setExpandProperties=function(a){h=a;h.isModal=!0;mraidview.setExpandProperties(h)};c.expand=function(a){mraidview.expand(a)};c.getMaxSize=function(){return k(g)};c.getSize=function(){return k(i)};c.getState=function(){return mraidview.getState()};c.getOrientation=function(){return mraidview.getOrientation()};c.isViewable=function(){return mraidview.isViewable()};c.open=function(a){a?mraidview.open(a):e(d.ERROR,\"URL is required.\",\"open\")};c.removeEventListener=function(a,b){try{if(a){if(b)if(f[a])f[a].remove(b);else{mraidview.removeEventListener(a,b);return}else f[a]&&f[a].removeAll();f[a]&&0==f[a].count&&(f[a]=null,delete f[a])}else e(d.ERROR,\"Must specify an event.\",\"removeEventListener\")}catch(c){mraidview.log(\"removeEventListener\"+c)}};c.resize=function(a,b){null==a||null==b||isNaN(a)||isNaN(b)||0>a||0>b?e(d.ERROR,\"Requested size must be numeric values between 0 and maxSize.\",\"resize\"):a>g.width||b>g.height?e(d.ERROR,\"Request (\"+a+\" x \"+b+\") exceeds maximum allowable size of (\"+g.width+\" x \"+g.height+\")\",\"resize\"):a==i.width&&b==i.height?e(d.ERROR,\"Requested size equals current size.\",\"resize\"):mraidview.resize(a,b)};c.log=function(a){null == a || \"undefined\" == a?e(d.ERROR,\"message is required.\",\"log\"):mraidview.log(a)};c.getVersion=function(){return\"1.0\"};c.getInMobiAIVersion=function(){return 1.2};c.getPlacementType=function(){return mraidview.getPlacementType()};c.asyncPing=function(a){a?mraidview.asyncPing(a):e(d.ERROR,\"URL is required.\",\"asyncPing\")};c.makeCall=function(a){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must provide a number to call.\",\"makeCall\"):mraidview.makeCall(a)};c.sendMail=function(a,b,c){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendMail\"):mraidview.sendMail(a,b,c)};c.sendSMS=function(a,b){!a||\"string\"!=typeof a||0==j(a).length?e(d.ERROR,\"Request must specify a recipient.\",\"sendSMS\"):mraidview.sendSMS(a,b)};c.playAudio=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playAudio(a,null):\"object\"==typeof a?mraidview.playAudio(null,a):mraidview.playAudio(null,null):mraidview.playAudio(a,b)};c.playVideo=function(a,b){\"undefined\"==typeof b||null==b?\"string\"==typeof a?mraidview.playVideo(a,null):\"object\"==typeof a?mraidview.playVideo(null,a):mraidview.playVideo(null,null):mraidview.playVideo(a,b)};c.pauseAudio=function(a){mraidview.pauseAudio(a)};c.muteAudio=function(a){mraidview.muteAudio(a)};c.unMuteAudio=function(a){mraidview.unMuteAudio(a)};c.isAudioMuted=function(a){return mraidview.isAudioMuted(a)};c.setAudioVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setAudioVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setAudioVolume\"):mraidview.setAudioVolume(a,b)};c.getAudioVolume=function(a){return mraidview.getAudioVolume(a)};c.pauseVideo=function(a){mraidview.pauseVideo(a)};c.closeVideo=function(a){mraidview.closeVideo(a)};c.hideVideo=function(a){mraidview.hideVideo(a)};c.showVideo=function(a){mraidview.showVideo(a)};c.muteVideo=function(a){mraidview.muteVideo(a)};c.unMuteVideo=function(a){mraidview.unMuteVideo(a)};c.isVideoMuted=function(a){return mraidview.isVideoMuted(a)};c.setVideoVolume=function(a){var b=a.volume;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid volume\",\"setVideoVolume\"):0>b||100<b?e(d.ERROR,\"Request must specify a valid volume value in the range 0..100\",\"setVideoVolume\"):mraidview.setVideoVolume(a,b)};c.getVideoVolume=function(a){return mraidview.getVideoVolume(a)};c.seekAudio=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekAudio\"):0!=b?e(d.ERROR,\"Cannot seek audio other than 0\",\"seekAudio\"):mraidview.seekAudio(a,b)};c.seekVideo=function(a){var b=a.time;\"undefined\"==typeof b||null==b?e(d.ERROR,\"Request must specify a valid time\",\"seekVideo\"):0!=b?e(d.ERROR,\"Cannot seek video other than 0\",\"seekVideo\"):mraidview.seekVideo(a,b)};c.openExternal=function(a){mraidview.openExternal(a)};c.updateToPassbook=function(a){mraidview.updateToPassbook(a)};c.getScreenSize=function(){return mraidview.getScreenSize()};c.getCurrentPosition=function(){return mraidview.getCurrentPosition()};c.acceptAction=function(a){mraidview.acceptAction(a)};c.rejectAction=function(a){mraidview.rejectAction(a)}})();");
                    }
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> Current State:" + IMWebView.this.h);
                    if (IMWebView.this.h == ViewState.LOADING) {
                        if (IMWebView.this.o) {
                            IMWebView.this.a(ViewState.EXPANDED);
                        }
                        else {
                            IMWebView.this.a(ViewState.DEFAULT);
                        }
                        IMWebView.this.injectJavaScript("window.mraidview.fireReadyEvent();");
                        if (!IMWebView.this.mIsInterstitialAd || IMWebView.this.q) {
                            IMWebView.this.a(true);
                            if (IMWebView.this.getVisibility() == 4) {
                                IMWebView.this.setVisibility(0);
                            }
                        }
                        if (IMWebView.this.S != null && !IMWebView.this.F.get()) {
                            IMWebView.this.S.sendToTarget();
                        }
                        if (IMWebView.this.T != null) {
                            IMWebView.this.T.sendToTarget();
                        }
                    }
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in onPageFinished ", ex);
                }
            }
            
            public void onPageStarted(final WebView webView, final String str, final Bitmap bitmap) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onPageStarted url: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onPageStarted(webView, str, bitmap);
                }
                IMWebView.a(IMWebView.this, false);
            }
            
            public void onReceivedError(final WebView webView, final int n, final String str, final String s) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> error: " + str);
                if (IMWebView.this.ac != null) {
                    IMWebView.this.ac.onReceivedError(webView, n, str, s);
                }
                try {
                    if (IMWebView.this.h == ViewState.LOADING && IMWebView.this.i != null && !IMWebView.this.F.get()) {
                        IMWebView.this.i.onError();
                    }
                    IMWebView.a(IMWebView.this, (Message)null);
                }
                catch (Exception ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in webview loading ", ex);
                }
            }
            
            public boolean shouldOverrideUrlLoading(final WebView obj, final String str) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldOverrideUrlLoading, url:" + str + "webview id" + obj);
                if (IMWebView.this.l) {
                    IMWebView.this.a(obj, str);
                    return true;
                }
                final Uri parse = Uri.parse(str);
                try {
                    if (str.startsWith("tel:")) {
                        final Intent intent = new Intent("android.intent.action.DIAL", Uri.parse(str));
                        intent.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("mailto:")) {
                        final Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                        intent2.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent2);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    if (str.startsWith("about:blank")) {
                        return false;
                    }
                    if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                        final Intent intent3 = new Intent();
                        intent3.setAction("android.intent.action.VIEW");
                        intent3.setData(parse);
                        intent3.addFlags(268435456);
                        IMWebView.this.W.startActivity(intent3);
                        IMWebView.this.fireOnLeaveApplication();
                        return true;
                    }
                    IMWebView.this.doHidePlayers();
                    if (!IMWebView.this.q) {
                        final Intent intent4 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> shouldoverride:" + str);
                        intent4.putExtra("extra_url", str);
                        if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                            intent4.putExtra("FIRST_INSTANCE", true);
                        }
                        IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                        IMWebView.this.W.startActivity(intent4);
                        IMWebView.this.r();
                        return true;
                    }
                }
                catch (Exception ex2) {
                    try {
                        if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                            final Intent intent5 = new Intent();
                            intent5.setAction("android.intent.action.VIEW");
                            intent5.setData(parse);
                            intent5.addFlags(268435456);
                            IMWebView.this.W.startActivity(intent5);
                            IMWebView.this.fireOnLeaveApplication();
                            return true;
                        }
                        IMWebView.this.doHidePlayers();
                        if (!IMWebView.this.q) {
                            final Intent intent6 = new Intent((Context)IMWebView.this.W, (Class)IMBrowserActivity.class);
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> open:" + str);
                            intent6.putExtra("extra_url", str);
                            if (IMWebView.this.getStateVariable() == ViewState.DEFAULT && !IMWebView.this.mIsInterstitialAd) {
                                intent6.putExtra("FIRST_INSTANCE", true);
                            }
                            IMBrowserActivity.setWebViewListener(IMWebView.this.i);
                            IMWebView.this.W.startActivity(intent6);
                            IMWebView.this.r();
                            return true;
                        }
                        return false;
                    }
                    catch (Exception ex) {
                        IMLog.internal("InMobiAndroidSDK_3.6.2", "IMWebview should override ", ex);
                        return false;
                    }
                }
                return false;
            }
        };
        this.O = new WebChromeClient() {
            public boolean onJsAlert(final WebView webView, final String title, final String s, final JsResult jsResult) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onJsAlert, " + s);
                try {
                    new AlertDialog$Builder(webView.getContext()).setTitle((CharSequence)title).setMessage((CharSequence)s).setPositiveButton(17039370, (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                        private final /* synthetic */ JsResult b;
                        
                        public void onClick(final DialogInterface dialogInterface, final int n) {
                            jsResult.confirm();
                        }
                    }).setCancelable(false).create().show();
                    return true;
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "webchrome client exception onJSAlert ", ex);
                    return true;
                }
            }
            
            public void onShowCustomView(final View view, final WebChromeClient$CustomViewCallback webChromeClient$CustomViewCallback) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "onShowCustomView ******************************");
                try {
                    if (view instanceof FrameLayout) {
                        IMWebView.a(IMWebView.this, (FrameLayout)view);
                        IMWebView.a(IMWebView.this, webChromeClient$CustomViewCallback);
                        IMWebView.a(IMWebView.this, (ViewGroup)((FrameLayout)IMWebView.this.W.findViewById(16908290)).getChildAt(0));
                        if (IMWebView.this.M.getFocusedChild() instanceof VideoView) {
                            IMWebView.a(IMWebView.this, (VideoView)IMWebView.this.M.getFocusedChild());
                            IMWebView.this.L.setVisibility(8);
                            IMWebView.this.M.setVisibility(0);
                            IMWebView.this.W.setContentView((View)IMWebView.this.M);
                            IMWebView.this.K.setOnCompletionListener(IMWebView.this.P);
                            IMWebView.this.K.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                                public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Back Button pressed when html5 video is playing");
                                        IMWebView.this.K.stopPlayback();
                                        IMWebView.this.M.setVisibility(8);
                                        IMWebView.this.e();
                                        IMWebView.this.W.setContentView((View)IMWebView.this.L);
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            IMWebView.this.K.start();
                        }
                    }
                }
                catch (Exception ex) {}
            }
        };
        this.P = (MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
            public void onCompletion(final MediaPlayer mediaPlayer) {
                try {
                    mediaPlayer.stop();
                    IMWebView.this.M.setVisibility(8);
                    IMWebView.this.e();
                    IMWebView.this.W.setContentView((View)IMWebView.this.L);
                }
                catch (Exception ex) {
                    IMLog.internal("InMobiAndroidSDK_3.6.2", "Media Player onCompletion", ex);
                }
            }
        };
        this.R = true;
        this.aa = -5;
        this.ab = -5;
        this.V = (Activity)context;
        this.mIsInterstitialAd = mIsInterstitialAd;
        this.q = q;
        if (this.mIsInterstitialAd) {
            this.setId(117);
        }
        this.i = i;
        this.f();
    }
    
    private int a(final Activity activity) {
        for (final ResolveInfo resolveInfo : activity.getPackageManager().queryIntentActivities(new Intent((Context)activity, (Class)activity.getClass()), 65536)) {
            if (resolveInfo.activityInfo.name.contentEquals(activity.getClass().getName())) {
                final ResolveInfo resolveInfo2 = resolveInfo;
                return resolveInfo2.activityInfo.configChanges;
            }
        }
        final ResolveInfo resolveInfo2 = null;
        return resolveInfo2.activityInfo.configChanges;
    }
    
    private FrameLayout a(final JSController.ExpandProperties expandProperties) {
        final FrameLayout frameLayout = (FrameLayout)this.getRootView().findViewById(16908290);
        this.c();
        final FrameLayout frameLayout2 = new FrameLayout(this.getContext());
        final FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
        frameLayout2.setId(435);
        frameLayout2.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                return true;
            }
        });
        frameLayout2.setPadding(expandProperties.x, expandProperties.y, 0, 0);
        final FrameLayout$LayoutParams frameLayout$LayoutParams2 = new FrameLayout$LayoutParams(expandProperties.width, expandProperties.height);
        final RelativeLayout relativeLayout = new RelativeLayout(this.getContext());
        relativeLayout.setId(438);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(expandProperties.width, expandProperties.height);
        if (this.o) {
            relativeLayout.addView((View)this.p, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
        else {
            relativeLayout.addView((View)this, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
        this.a((ViewGroup)relativeLayout, expandProperties.useCustomClose);
        frameLayout2.addView((View)relativeLayout, (ViewGroup$LayoutParams)frameLayout$LayoutParams2);
        frameLayout.addView((View)frameLayout2, (ViewGroup$LayoutParams)frameLayout$LayoutParams);
        this.setFocusable(true);
        this.setFocusableInTouchMode(true);
        this.requestFocus();
        return frameLayout2;
    }
    
    private String a(final String s) {
        try {
            final DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            final BasicHttpContext basicHttpContext = new BasicHttpContext();
            if (((HttpClient)defaultHttpClient).execute((HttpUriRequest)new HttpGet(s), (HttpContext)basicHttpContext).getStatusLine().getStatusCode() == 200) {
                final HttpUriRequest httpUriRequest = (HttpUriRequest)((HttpContext)basicHttpContext).getAttribute("http.request");
                final HttpHost httpHost = (HttpHost)((HttpContext)basicHttpContext).getAttribute("http.target_host");
                if (httpUriRequest.getURI().isAbsolute()) {
                    return httpUriRequest.getURI().toString();
                }
                return String.valueOf(httpHost.toURI()) + httpUriRequest.getURI();
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Exception getting final redirect url", ex);
        }
        return s;
    }
    
    private void a(final int n) {
        final String string = "window.mraidview.fireOrientationChangeEvent(" + this.getCurrentRotation(n) + ");";
        IMLog.debug("InMobiAndroidSDK_3.6.2", "JSDisplayController-> " + string);
        this.injectJavaScript(string);
        if (this.o) {
            this.p.injectJavaScript(string);
        }
    }
    
    private void a(final Bundle p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ldc_w           "expand_url"
        //     4: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //     7: astore          5
        //     9: aload           5
        //    11: invokestatic    android/webkit/URLUtil.isValidUrl:(Ljava/lang/String;)Z
        //    14: ifeq            322
        //    17: aload_0        
        //    18: iconst_1       
        //    19: putfield        com/inmobi/androidsdk/ai/container/IMWebView.o:Z
        //    22: aload_0        
        //    23: new             Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    26: dup            
        //    27: aload_0        
        //    28: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.getContext:()Landroid/content/Context;
        //    31: aload_0        
        //    32: getfield        com/inmobi/androidsdk/ai/container/IMWebView.i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
        //    35: iconst_0       
        //    36: iconst_0       
        //    37: invokespecial   com/inmobi/androidsdk/ai/container/IMWebView.<init>:(Landroid/content/Context;Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;ZZ)V
        //    40: putfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    43: aload_0        
        //    44: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    47: iconst_1       
        //    48: putfield        com/inmobi/androidsdk/ai/container/IMWebView.o:Z
        //    51: aload_0        
        //    52: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    55: aload_0        
        //    56: getfield        com/inmobi/androidsdk/ai/container/IMWebView.publisherOrientation:I
        //    59: putfield        com/inmobi/androidsdk/ai/container/IMWebView.publisherOrientation:I
        //    62: aload_0        
        //    63: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    66: aload_0        
        //    67: getfield        com/inmobi/androidsdk/ai/container/IMWebView.s:Z
        //    70: putfield        com/inmobi/androidsdk/ai/container/IMWebView.s:Z
        //    73: aload_0        
        //    74: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    77: new             Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //    80: dup            
        //    81: invokespecial   com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.<init>:()V
        //    84: putfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //    87: aload_0        
        //    88: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //    91: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //    94: aload_0        
        //    95: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //    98: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.x:I
        //   101: putfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.x:I
        //   104: aload_0        
        //   105: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   108: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   111: aload_0        
        //   112: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   115: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.y:I
        //   118: putfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.y:I
        //   121: aload_0        
        //   122: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   125: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   128: aload_0        
        //   129: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   132: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.currentX:I
        //   135: putfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.currentX:I
        //   138: aload_0        
        //   139: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   142: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   145: aload_0        
        //   146: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   149: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.currentY:I
        //   152: putfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.currentY:I
        //   155: aload_0        
        //   156: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   159: aload_0        
        //   160: getfield        com/inmobi/androidsdk/ai/container/IMWebView.useLockOrient:Z
        //   163: putfield        com/inmobi/androidsdk/ai/container/IMWebView.useLockOrient:Z
        //   166: aload_0        
        //   167: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   170: aload_0        
        //   171: putfield        com/inmobi/androidsdk/ai/container/IMWebView.mOriginalWebviewForExpandUrl:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   174: aload_0        
        //   175: aload_0        
        //   176: getfield        com/inmobi/androidsdk/ai/container/IMWebView.V:Landroid/app/Activity;
        //   179: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.setExpandedActivity:(Landroid/app/Activity;)V
        //   182: aload_0        
        //   183: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   186: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.lockOrientation:Z
        //   189: ifne            211
        //   192: aload_0        
        //   193: bipush          -5
        //   195: putfield        com/inmobi/androidsdk/ai/container/IMWebView.aa:I
        //   198: aload_0        
        //   199: bipush          -5
        //   201: putfield        com/inmobi/androidsdk/ai/container/IMWebView.ab:I
        //   204: aload_0        
        //   205: ldc_w           "window.mraidview.registerOrientationListener()"
        //   208: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.injectJavaScript:(Ljava/lang/String;)V
        //   211: aload_0        
        //   212: aload_0        
        //   213: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   216: invokespecial   com/inmobi/androidsdk/ai/container/IMWebView.a:(Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;
        //   219: iconst_0       
        //   220: invokevirtual   android/widget/FrameLayout.setBackgroundColor:(I)V
        //   223: aload_0        
        //   224: aload_0        
        //   225: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   228: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.width:I
        //   231: putfield        com/inmobi/androidsdk/ai/container/IMWebView.n:I
        //   234: aload_0        
        //   235: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   238: ifnull          255
        //   241: aload_0        
        //   242: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   245: aload_0        
        //   246: getfield        com/inmobi/androidsdk/ai/container/IMWebView.t:Lcom/inmobi/androidsdk/ai/controller/JSController$ExpandProperties;
        //   249: getfield        com/inmobi/androidsdk/ai/controller/JSController$ExpandProperties.width:I
        //   252: putfield        com/inmobi/androidsdk/ai/container/IMWebView.n:I
        //   255: aload_0        
        //   256: getstatic       com/inmobi/androidsdk/ai/container/IMWebView$ViewState.EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
        //   259: invokespecial   com/inmobi/androidsdk/ai/container/IMWebView.a:(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V
        //   262: aload_0        
        //   263: getfield        com/inmobi/androidsdk/ai/container/IMWebView.y:Ljava/lang/Object;
        //   266: astore          6
        //   268: aload           6
        //   270: monitorenter   
        //   271: aload_0        
        //   272: getfield        com/inmobi/androidsdk/ai/container/IMWebView.z:Ljava/util/concurrent/atomic/AtomicBoolean;
        //   275: iconst_0       
        //   276: invokevirtual   java/util/concurrent/atomic/AtomicBoolean.set:(Z)V
        //   279: aload_0        
        //   280: getfield        com/inmobi/androidsdk/ai/container/IMWebView.y:Ljava/lang/Object;
        //   283: invokevirtual   java/lang/Object.notifyAll:()V
        //   286: aload           6
        //   288: monitorexit    
        //   289: aload_0        
        //   290: getfield        com/inmobi/androidsdk/ai/container/IMWebView.o:Z
        //   293: ifeq            305
        //   296: aload_0        
        //   297: getfield        com/inmobi/androidsdk/ai/container/IMWebView.p:Lcom/inmobi/androidsdk/ai/container/IMWebView;
        //   300: aload           5
        //   302: invokevirtual   com/inmobi/androidsdk/ai/container/IMWebView.loadUrl:(Ljava/lang/String;)V
        //   305: aload_0        
        //   306: getfield        com/inmobi/androidsdk/ai/container/IMWebView.i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
        //   309: ifnull          388
        //   312: aload_0        
        //   313: getfield        com/inmobi/androidsdk/ai/container/IMWebView.i:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;
        //   316: invokeinterface com/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener.onExpand:()V
        //   321: return         
        //   322: aload_0        
        //   323: iconst_0       
        //   324: putfield        com/inmobi/androidsdk/ai/container/IMWebView.o:Z
        //   327: goto            174
        //   330: astore_2       
        //   331: ldc_w           "InMobiAndroidSDK_3.6.2"
        //   334: ldc_w           "Exception in doexpand "
        //   337: aload_2        
        //   338: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   341: aload_0        
        //   342: getstatic       com/inmobi/androidsdk/ai/container/IMWebView$ViewState.DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
        //   345: putfield        com/inmobi/androidsdk/ai/container/IMWebView.h:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;
        //   348: aload_0        
        //   349: getfield        com/inmobi/androidsdk/ai/container/IMWebView.y:Ljava/lang/Object;
        //   352: astore_3       
        //   353: aload_3        
        //   354: monitorenter   
        //   355: aload_0        
        //   356: getfield        com/inmobi/androidsdk/ai/container/IMWebView.z:Ljava/util/concurrent/atomic/AtomicBoolean;
        //   359: iconst_0       
        //   360: invokevirtual   java/util/concurrent/atomic/AtomicBoolean.set:(Z)V
        //   363: aload_0        
        //   364: getfield        com/inmobi/androidsdk/ai/container/IMWebView.y:Ljava/lang/Object;
        //   367: invokevirtual   java/lang/Object.notifyAll:()V
        //   370: aload_3        
        //   371: monitorexit    
        //   372: return         
        //   373: astore          4
        //   375: aload_3        
        //   376: monitorexit    
        //   377: aload           4
        //   379: athrow         
        //   380: astore          7
        //   382: aload           6
        //   384: monitorexit    
        //   385: aload           7
        //   387: athrow         
        //   388: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      174    330    380    Ljava/lang/Exception;
        //  174    211    330    380    Ljava/lang/Exception;
        //  211    255    330    380    Ljava/lang/Exception;
        //  255    271    330    380    Ljava/lang/Exception;
        //  271    289    380    388    Any
        //  289    305    330    380    Ljava/lang/Exception;
        //  305    321    330    380    Ljava/lang/Exception;
        //  322    327    330    380    Ljava/lang/Exception;
        //  355    372    373    380    Any
        //  375    377    373    380    Any
        //  382    385    380    388    Any
        //  385    388    330    380    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0305:
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
    
    private void a(final Bundle bundle, final Activity activity) {
        final JSController.PlayerProperties playerProperties = (JSController.PlayerProperties)bundle.getParcelable("player_properties");
        String string = bundle.getString("expand_url");
        if (string == null) {
            string = "";
        }
        if (this.a(playerProperties.id, string, activity)) {
            if ((string.length() != 0 && !URLUtil.isValidUrl(string)) || (string.length() == 0 && !this.B.containsKey(playerProperties.id))) {
                this.raiseError("Request must specify a valid URL", "playAudio");
                return;
            }
            if (this.x != null) {
                if (string.length() != 0) {
                    this.x.setPlayData(playerProperties, string);
                }
                this.B.put(playerProperties.id, this.x);
                final FrameLayout frameLayout = (FrameLayout)activity.findViewById(16908290);
                if (playerProperties.isFullScreen()) {
                    final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
                    layoutParams.addRule(13);
                    this.x.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
                    final RelativeLayout backGroundLayout = new RelativeLayout((Context)activity);
                    backGroundLayout.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                        public boolean onTouch(final View view, final MotionEvent motionEvent) {
                            return true;
                        }
                    });
                    backGroundLayout.setBackgroundColor(-16777216);
                    frameLayout.addView((View)backGroundLayout, (ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent()));
                    backGroundLayout.addView((View)this.x);
                    this.x.setBackGroundLayout((ViewGroup)backGroundLayout);
                    this.x.requestFocus();
                    this.x.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                        public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Back button pressed while fullscreen audio was playing");
                                IMWebView.this.x.releasePlayer(true);
                                return true;
                            }
                            return false;
                        }
                    });
                }
                else {
                    this.x.setLayoutParams(new ViewGroup$LayoutParams(1, 1));
                    frameLayout.addView((View)this.x);
                }
                this.x.setListener(new IMAVPlayerListener() {
                    @Override
                    public void onComplete(final IMAVPlayer imavPlayer) {
                        try {
                            if (playerProperties.isFullScreen()) {
                                final ViewGroup viewGroup = (ViewGroup)imavPlayer.getBackGroundLayout().getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeView((View)imavPlayer.getBackGroundLayout());
                                }
                            }
                            else {
                                final ViewGroup viewGroup2 = (ViewGroup)imavPlayer.getParent();
                                if (viewGroup2 != null) {
                                    viewGroup2.removeView((View)imavPlayer);
                                }
                            }
                        }
                        catch (Exception ex) {
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Problem removing the audio relativelayout", ex);
                        }
                    }
                    
                    @Override
                    public void onError(final IMAVPlayer imavPlayer) {
                        this.onComplete(imavPlayer);
                    }
                    
                    @Override
                    public void onPrepared(final IMAVPlayer imavPlayer) {
                    }
                });
                this.x.play();
            }
        }
    }
    
    private void a(final ViewGroup viewGroup, final boolean b) {
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int)(50.0f * this.d), (int)(50.0f * this.d));
        relativeLayout$LayoutParams.addRule(11);
        IMCustomView imCustomView;
        if (b) {
            imCustomView = new IMCustomView(this.getContext(), this.d, IMCustomView.SwitchIconType.CLOSE_TRANSPARENT);
        }
        else {
            imCustomView = new IMCustomView(this.getContext(), this.d, IMCustomView.SwitchIconType.CLOSE_BUTTON);
        }
        viewGroup.addView((View)imCustomView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        imCustomView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                IMWebView.userInitiatedClose = true;
                IMWebView.this.close();
            }
        });
    }
    
    private void a(final WebView webView, final String str) {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> Search query requested:" + str);
        try {
            webView.stopLoading();
            final int index = str.indexOf("?");
            if (index > 0) {
                final String substring = str.substring(index);
                if (substring != null && this.m != null) {
                    final String m = this.m;
                    System.out.println(String.valueOf(m) + substring);
                    final Bundle data = new Bundle();
                    data.putString("finaltargeturl", String.valueOf(m) + substring);
                    this.Z.setData(data);
                    this.Z.sendToTarget();
                }
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Handle search ad exception ", ex);
        }
    }
    
    private void a(final ViewState h) {
        this.h = h;
        if (h != ViewState.EXPANDING) {
            this.injectJavaScript("window.mraidview.fireStateChangeEvent('" + this.getState() + "');");
        }
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final Message s) {
        imWebView.S = s;
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final ViewGroup l) {
        imWebView.L = l;
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final WebChromeClient$CustomViewCallback n) {
        imWebView.N = n;
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final FrameLayout m) {
        imWebView.M = m;
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final VideoView k) {
        imWebView.K = k;
    }
    
    static /* synthetic */ void a(final IMWebView imWebView, final boolean j) {
        imWebView.j = j;
    }
    
    private void a(final JSController.Dimensions dimensions) {
        dimensions.width *= (int)this.d;
        dimensions.height *= (int)this.d;
        dimensions.x *= (int)this.d;
        dimensions.y *= (int)this.d;
        final int y = (int)(50.0f * this.d);
        final int n = this.n - (int)(50.0f * this.d);
        boolean b = false;
        Label_0119: {
            if (dimensions.width > 0) {
                final int height = dimensions.height;
                b = false;
                if (height > 0) {
                    break Label_0119;
                }
            }
            dimensions.width = 1;
            dimensions.height = 1;
            b = true;
        }
        final int widthPixels = this.getContext().getResources().getDisplayMetrics().widthPixels;
        final int heightPixels = this.getContext().getResources().getDisplayMetrics().heightPixels;
        if (dimensions.width > widthPixels) {
            dimensions.width = IMWrapperFunctions.getParamFillParent();
        }
        if (dimensions.height > heightPixels) {
            dimensions.height = IMWrapperFunctions.getParamFillParent();
        }
        if (!b && dimensions.x + dimensions.width > n && dimensions.x < n && dimensions.y < y && dimensions.y + dimensions.height > y) {
            dimensions.y = y;
        }
    }
    
    private void a(final IMAVPlayer imavPlayer, final JSController.Dimensions dimensions) {
        final int n = (int)(-99999.0f * this.d);
        if (imavPlayer.isInlineVideo() && dimensions.x != n && dimensions.y != n) {
            imavPlayer.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(dimensions.width, dimensions.height));
            final FrameLayout frameLayout = (FrameLayout)imavPlayer.getBackGroundLayout();
            if (this.t != null) {
                frameLayout.setPadding(dimensions.x + this.t.currentX, dimensions.y + this.t.currentY, 0, 0);
                return;
            }
            frameLayout.setPadding(dimensions.x, dimensions.y, 0, 0);
        }
    }
    
    private void a(final boolean r) {
        this.R = r;
        this.injectJavaScript("window.mraidview.fireViewableChangeEvent(" + this.isViewable() + ");");
    }
    
    private boolean a(final String key, final String anObject, final Activity activity) {
        if (!this.B.isEmpty()) {
            this.x = this.B.get(key);
            if (this.x == null) {
                if (this.B.size() > 4) {
                    this.raiseError("Too many audio players", "playAudio");
                    return false;
                }
                this.x = new IMAVPlayer((Context)activity, this);
            }
            else if (this.x.getMediaURL().equals(anObject) || anObject.length() == 0) {
                if (this.x.getState() == IMAVPlayer.playerState.PLAYING) {
                    return false;
                }
                if (this.x.getState() == IMAVPlayer.playerState.PAUSED) {
                    this.x.start();
                    return false;
                }
                final JSController.PlayerProperties properties = this.x.getProperties();
                final String mediaURL = this.x.getMediaURL();
                this.x.releasePlayer(false);
                this.B.remove(key);
                (this.x = new IMAVPlayer((Context)activity, this)).setPlayData(properties, mediaURL);
            }
            else {
                this.x.releasePlayer(false);
                this.B.remove(key);
                this.x = new IMAVPlayer((Context)activity, this);
            }
        }
        else {
            this.x = new IMAVPlayer((Context)activity, this);
        }
        return true;
    }
    
    private boolean a(final String s, final String s2, final Activity activity, final JSController.Dimensions dimensions) {
        boolean b = true;
        if (this.w == null || !s.equalsIgnoreCase(this.w.getPropertyID())) {
            b = this.b(s, s2, activity);
        }
        else {
            final IMAVPlayer.playerState state = this.w.getState();
            if (s.equalsIgnoreCase(this.w.getPropertyID())) {
                final String mediaURL = this.w.getMediaURL();
                if (s2.length() == 0 || s2.equalsIgnoreCase(mediaURL)) {
                    switch (a()[state.ordinal()]) {
                        case 3: {
                            this.w.start();
                            this.a(this.w, dimensions);
                            break;
                        }
                        case 2: {
                            this.a(this.w, dimensions);
                            break;
                        }
                        case 6: {
                            if (!this.w.getProperties().doLoop()) {
                                this.w.start();
                                break;
                            }
                            break;
                        }
                    }
                    return false;
                }
                if (!URLUtil.isValidUrl(s2)) {
                    this.raiseError("Request must specify a valid URL", "playVideo");
                    return false;
                }
                this.w.releasePlayer(false);
                this.w = new IMAVPlayer((Context)activity, this);
                return b;
            }
        }
        return b;
    }
    
    static /* synthetic */ int[] a() {
        final int[] ad = IMWebView.ad;
        if (ad != null) {
            return ad;
        }
        final int[] ad2 = new int[IMAVPlayer.playerState.values().length];
        while (true) {
            try {
                ad2[IMAVPlayer.playerState.COMPLETED.ordinal()] = 6;
                try {
                    ad2[IMAVPlayer.playerState.HIDDEN.ordinal()] = 4;
                    try {
                        ad2[IMAVPlayer.playerState.INIT.ordinal()] = 1;
                        try {
                            ad2[IMAVPlayer.playerState.PAUSED.ordinal()] = 3;
                            try {
                                ad2[IMAVPlayer.playerState.PLAYING.ordinal()] = 2;
                                try {
                                    ad2[IMAVPlayer.playerState.RELEASED.ordinal()] = 7;
                                    try {
                                        ad2[IMAVPlayer.playerState.SHOWING.ordinal()] = 5;
                                        return IMWebView.ad = ad2;
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
            catch (NoSuchFieldError noSuchFieldError7) {
                continue;
            }
            break;
        }
    }
    
    private void b() {
        if (this.h == ViewState.EXPANDED) {
            this.h();
        }
        this.invalidate();
        this.c.deleteOldAds();
        this.c.stopAllListeners();
        this.l();
    }
    
    private void b(final Bundle bundle, final Activity activity) {
        final JSController.PlayerProperties playerProperties = (JSController.PlayerProperties)bundle.getParcelable("player_properties");
        JSController.Dimensions playDimensions = (JSController.Dimensions)bundle.getParcelable("expand_dimensions");
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Final dimensions: " + playDimensions);
        final String string = bundle.getString("expand_url");
        if (!this.a(playerProperties.id, string, activity, playDimensions)) {
            return;
        }
        this.k = true;
        JSController.PlayerProperties playerProperties2;
        if (string.length() == 0) {
            final JSController.PlayerProperties properties = this.w.getProperties();
            playDimensions = this.w.getPlayDimensions();
            this.w.getMediaURL();
            playerProperties2 = properties;
        }
        else {
            this.w.setPlayData(playerProperties, string);
            this.w.setPlayDimensions(playDimensions);
            playerProperties2 = playerProperties;
        }
        final FrameLayout frameLayout = (FrameLayout)activity.findViewById(16908290);
        if (playerProperties2.isFullScreen()) {
            final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
            layoutParams.addRule(13);
            this.w.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            final RelativeLayout backGroundLayout = new RelativeLayout((Context)activity);
            backGroundLayout.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                public boolean onTouch(final View view, final MotionEvent motionEvent) {
                    return true;
                }
            });
            backGroundLayout.setBackgroundColor(-16777216);
            frameLayout.addView((View)backGroundLayout, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent()));
            backGroundLayout.addView((View)this.w);
            this.w.setBackGroundLayout((ViewGroup)backGroundLayout);
            this.w.requestFocus();
            this.w.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                    if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Back pressed while fullscreen video is playing");
                        IMWebView.this.w.releasePlayer(true);
                        return true;
                    }
                    return false;
                }
            });
        }
        else {
            this.w.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(playDimensions.width, playDimensions.height));
            final FrameLayout backGroundLayout2 = new FrameLayout((Context)activity);
            if (this.t == null) {
                backGroundLayout2.setPadding(playDimensions.x, playDimensions.y, 0, 0);
            }
            else {
                backGroundLayout2.setPadding(playDimensions.x + this.t.currentX, playDimensions.y + this.t.currentY, 0, 0);
            }
            frameLayout.addView((View)backGroundLayout2, (ViewGroup$LayoutParams)new FrameLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent()));
            this.w.setBackGroundLayout((ViewGroup)backGroundLayout2);
            backGroundLayout2.addView((View)this.w);
        }
        this.w.setListener(new IMAVPlayerListener() {
            @Override
            public void onComplete(final IMAVPlayer p0) {
                // 
                // This method could not be decompiled.
                // 
                // Original Bytecode:
                // 
                //     0: aload_0        
                //     1: getfield        com/inmobi/androidsdk/ai/container/IMWebView$4.a:Lcom/inmobi/androidsdk/ai/container/IMWebView;
                //     4: iconst_0       
                //     5: invokestatic    com/inmobi/androidsdk/ai/container/IMWebView.d:(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V
                //     8: aload_1        
                //     9: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.getBackGroundLayout:()Landroid/view/ViewGroup;
                //    12: invokevirtual   android/view/ViewGroup.getParent:()Landroid/view/ViewParent;
                //    15: checkcast       Landroid/view/ViewGroup;
                //    18: astore          4
                //    20: aload           4
                //    22: ifnull          34
                //    25: aload           4
                //    27: aload_1        
                //    28: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.getBackGroundLayout:()Landroid/view/ViewGroup;
                //    31: invokevirtual   android/view/ViewGroup.removeView:(Landroid/view/View;)V
                //    34: aload_1        
                //    35: aconst_null    
                //    36: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.setBackGroundLayout:(Landroid/view/ViewGroup;)V
                //    39: aload_0        
                //    40: monitorenter   
                //    41: aload_0        
                //    42: getfield        com/inmobi/androidsdk/ai/container/IMWebView$4.a:Lcom/inmobi/androidsdk/ai/container/IMWebView;
                //    45: invokestatic    com/inmobi/androidsdk/ai/container/IMWebView.w:(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
                //    48: ifnull          79
                //    51: aload_1        
                //    52: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.getPropertyID:()Ljava/lang/String;
                //    55: aload_0        
                //    56: getfield        com/inmobi/androidsdk/ai/container/IMWebView$4.a:Lcom/inmobi/androidsdk/ai/container/IMWebView;
                //    59: invokestatic    com/inmobi/androidsdk/ai/container/IMWebView.w:(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
                //    62: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.getPropertyID:()Ljava/lang/String;
                //    65: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
                //    68: ifeq            79
                //    71: aload_0        
                //    72: getfield        com/inmobi/androidsdk/ai/container/IMWebView$4.a:Lcom/inmobi/androidsdk/ai/container/IMWebView;
                //    75: aconst_null    
                //    76: invokestatic    com/inmobi/androidsdk/ai/container/IMWebView.a:(Lcom/inmobi/androidsdk/ai/container/IMWebView;Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;)V
                //    79: aload_0        
                //    80: monitorexit    
                //    81: return         
                //    82: astore_2       
                //    83: ldc             "InMobiAndroidSDK_3.6.2"
                //    85: ldc             "Problem removing the video framelayout or relativelayout depending on video startstyle"
                //    87: aload_2        
                //    88: invokestatic    com/inmobi/commons/internal/IMLog.debug:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
                //    91: goto            39
                //    94: astore_3       
                //    95: aload_0        
                //    96: monitorexit    
                //    97: aload_3        
                //    98: athrow         
                //    Exceptions:
                //  Try           Handler
                //  Start  End    Start  End    Type                 
                //  -----  -----  -----  -----  ---------------------
                //  8      20     82     94     Ljava/lang/Exception;
                //  25     34     82     94     Ljava/lang/Exception;
                //  34     39     82     94     Ljava/lang/Exception;
                //  41     79     94     99     Any
                //  79     81     94     99     Any
                //  95     97     94     99     Any
                // 
                // The error that occurred was:
                // 
                // java.lang.IllegalStateException: Expression is linked from several locations: Label_0079:
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
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformCall(AstMethodBodyBuilder.java:1163)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:1010)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformByteCode(AstMethodBodyBuilder.java:554)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformExpression(AstMethodBodyBuilder.java:540)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformNode(AstMethodBodyBuilder.java:392)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.transformBlock(AstMethodBodyBuilder.java:333)
                //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:294)
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
            
            @Override
            public void onError(final IMAVPlayer imavPlayer) {
                this.onComplete(imavPlayer);
            }
            
            @Override
            public void onPrepared(final IMAVPlayer imavPlayer) {
            }
        });
        this.w.play();
    }
    
    private void b(final String str) {
        try {
            if (!str.startsWith("http://") || str.contains("play.google.com") || str.contains("market.android.com") || str.contains("market%3A%2F%2F")) {
                goto Label_0180;
            }
            if (!URLUtil.isValidUrl(str)) {
                this.raiseError("Invalid url", "open");
                return;
            }
            final Intent intent = new Intent((Context)this.W, (Class)IMBrowserActivity.class);
            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> open:" + str);
            intent.putExtra("extra_url", str);
            if (this.getStateVariable() == ViewState.DEFAULT && !this.mIsInterstitialAd && !this.q) {
                intent.putExtra("FIRST_INSTANCE", true);
            }
            IMBrowserActivity.setWebViewListener(this.i);
            this.W.startActivity(intent);
            if (!this.q) {
                this.r();
            }
        }
        catch (ActivityNotFoundException ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Failed to perform mraid Open");
        }
        catch (Exception ex2) {
            this.raiseError("Invalid url", "open");
        }
    }
    
    private boolean b(final int n) {
        return n == 0 || n == 2;
    }
    
    private boolean b(final Activity activity) {
        final int sdk_INT = Build$VERSION.SDK_INT;
        final int a = this.a(activity);
        boolean b;
        if ((a & 0x10) == 0x0 || (a & 0x20) == 0x0 || (a & 0x80) == 0x0) {
            b = false;
        }
        else {
            b = true;
        }
        boolean b2;
        if (sdk_INT >= 13 && ((a & 0x400) == 0x0 || (a & 0x800) == 0x0)) {
            b2 = false;
        }
        else {
            b2 = true;
        }
        return b && b2;
    }
    
    private boolean b(final String s, final String s2, final Activity activity) {
        if ((s2.length() != 0 && !URLUtil.isValidUrl(s2)) || (s2.length() == 0 && !this.A.containsKey(s))) {
            this.raiseError("Request must specify a valid URL", "playVideo");
            return false;
        }
        if (this.w != null) {
            this.w.releasePlayer(false);
        }
        final IMAVPlayer d = this.d(s);
        if (d == null) {
            this.w = new IMAVPlayer((Context)activity, this);
        }
        else {
            this.w = d;
        }
        if (s2.length() == 0) {
            this.w.setPlayData(d.getProperties(), d.getMediaURL());
            this.w.setPlayDimensions(d.getPlayDimensions());
        }
        this.A.remove(s);
        return true;
    }
    
    private IMAVPlayer c(final String key) {
        synchronized (this) {
            IMAVPlayer x;
            if (this.x != null && this.x.getPropertyID().equalsIgnoreCase(key)) {
                x = this.x;
            }
            else {
                final boolean empty = this.B.isEmpty();
                x = null;
                if (!empty) {
                    final boolean containsKey = this.B.containsKey(key);
                    x = null;
                    if (containsKey) {
                        x = this.B.get(key);
                    }
                }
            }
            return x;
        }
    }
    
    private void c() {
    Label_0080_Outer:
        while (true) {
        Label_0019_Outer:
            while (true) {
                while (true) {
                    int childCount = 0;
                    int g = 0;
                    Label_0112: {
                        try {
                            final ViewGroup i = (ViewGroup)this.getParent();
                            childCount = i.getChildCount();
                            g = 0;
                            break Label_0112;
                            // iftrue(Label_0019:, i.getChildAt(g) == this)
                            while (true) {
                                ++g;
                                break Label_0112;
                                continue Label_0080_Outer;
                            }
                            this.g = g;
                            final FrameLayout frameLayout = new FrameLayout(this.getContext());
                            frameLayout.setId(437);
                            i.addView((View)frameLayout, g, new ViewGroup$LayoutParams(this.getWidth(), this.getHeight()));
                            i.removeView((View)this);
                            this.I = i;
                            return;
                        }
                        catch (Exception ex) {
                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception in replaceByPlaceHolder ", ex);
                            return;
                        }
                    }
                    if (g >= childCount) {
                        continue;
                    }
                    break;
                }
                continue Label_0019_Outer;
            }
        }
    }
    
    static /* synthetic */ void c(final IMWebView imWebView, final boolean o) {
        imWebView.o = o;
    }
    
    private boolean c(final int n) {
        return n == 1 || n == 3;
    }
    
    private IMAVPlayer d(final String key) {
        if (!this.A.isEmpty()) {
            return this.A.get(key);
        }
        return null;
    }
    
    private void d() {
        this.aa = InternalSDKUtil.getDisplayRotation(this.H);
        if (this.aa == -5 || this.aa == this.ab) {
            return;
        }
        while (true) {
            while (true) {
                int widthPixels = 0;
                int heightPixels = 0;
                Label_1422: {
                    while (true) {
                        Label_1413: {
                            while (true) {
                                int n = 0;
                                int a = 0;
                                FrameLayout frameLayout2 = null;
                                RelativeLayout relativeLayout = null;
                                Label_0894: {
                                    try {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> SensorEventListener, It came inside the listener" + this.aa);
                                        this.ab = this.aa;
                                        widthPixels = this.V.getResources().getDisplayMetrics().widthPixels;
                                        heightPixels = this.V.getResources().getDisplayMetrics().heightPixels;
                                        if (this.isTablet) {
                                            ++this.aa;
                                            if (this.aa > 3) {
                                                this.aa = 0;
                                            }
                                            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> SensorEventListener, It is a tablet" + this.aa);
                                        }
                                        if (!this.mIsInterstitialAd) {
                                            if (this.aa == 0 || this.aa == 2) {
                                                this.t.actualWidthRequested = this.t.portraitWidthRequested;
                                                this.t.actualHeightRequested = this.t.portraitHeightRequested;
                                                if (widthPixels <= heightPixels) {
                                                    break Label_1422;
                                                }
                                                n = heightPixels;
                                            }
                                            else {
                                                this.t.actualWidthRequested = this.t.portraitHeightRequested;
                                                this.t.actualHeightRequested = this.t.portraitWidthRequested;
                                                if (widthPixels >= heightPixels) {
                                                    break Label_1422;
                                                }
                                                n = heightPixels;
                                            }
                                            if (this.t.zeroWidthHeight) {
                                                this.t.actualWidthRequested = n;
                                                this.t.actualHeightRequested = widthPixels;
                                            }
                                            a = widthPixels - this.t.topStuff;
                                            FrameLayout frameLayout;
                                            if (this.o) {
                                                frameLayout = (FrameLayout)this.p.getRootView().findViewById(16908290);
                                            }
                                            else {
                                                frameLayout = (FrameLayout)this.getRootView().findViewById(16908290);
                                            }
                                            if (frameLayout == null) {
                                                break Label_1413;
                                            }
                                            frameLayout2 = (FrameLayout)frameLayout.findViewById(435);
                                            relativeLayout = (RelativeLayout)frameLayout2.findViewById(438);
                                            if (this.aa != 0 && this.aa != 2) {
                                                break Label_0894;
                                            }
                                            IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> SensorEventListener, It is the case from landscape to portrait");
                                            this.t.width = Math.min(n, this.t.actualWidthRequested);
                                            this.t.height = Math.min(this.t.actualHeightRequested, a - this.t.y);
                                            final int n2 = n - (this.t.x + this.t.width);
                                            int x;
                                            if (n2 < 0) {
                                                x = n2 + this.t.x;
                                                if (x < 0) {
                                                    this.t.width += x;
                                                    x = 0;
                                                }
                                            }
                                            else {
                                                x = this.t.x;
                                            }
                                            if (frameLayout2 != null) {
                                                frameLayout2.setPadding(x, this.t.y, 0, 0);
                                                this.t.currentX = x;
                                                this.t.currentY = this.t.y;
                                                IMAVPlayer imavPlayer = this.w;
                                                if (this.o) {
                                                    this.p.t.currentX = this.t.currentX;
                                                    this.p.t.currentY = this.t.currentY;
                                                    imavPlayer = this.p.w;
                                                }
                                                if (imavPlayer != null && imavPlayer.isInlineVideo()) {
                                                    final JSController.Dimensions playDimensions = imavPlayer.getPlayDimensions();
                                                    if (playDimensions != null && playDimensions.x >= 0 && playDimensions.y >= 0) {
                                                        ((FrameLayout)imavPlayer.getBackGroundLayout()).setPadding(x + playDimensions.x, this.t.y + playDimensions.y, 0, 0);
                                                    }
                                                }
                                                relativeLayout.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(this.t.width, this.t.height));
                                                if (this.o) {
                                                    this.p.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(this.t.width, this.t.height));
                                                    this.p.n = this.t.width;
                                                }
                                                else {
                                                    this.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(this.t.width, this.t.height));
                                                    this.n = this.t.width;
                                                }
                                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Dimensions: {" + x + " ," + this.t.y + " ," + this.t.width + " ," + this.t.height + "}");
                                            }
                                        }
                                        this.a(this.aa);
                                        return;
                                    }
                                    catch (Exception ex) {
                                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception while changing the container coordinates or width while orientation change ", ex);
                                        return;
                                    }
                                }
                                if (this.aa != 1 && this.aa != 3) {
                                    continue;
                                }
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> SensorEventListener, It is the case from portrait to landscape");
                                this.t.height = Math.min(a, this.t.actualHeightRequested);
                                this.t.width = Math.min(this.t.actualWidthRequested, n - this.t.x);
                                final int n3 = a - (this.t.y + this.t.height);
                                int y;
                                if (n3 < 0) {
                                    y = n3 + this.t.y;
                                    if (y < 0) {
                                        this.t.height += y;
                                        y = 0;
                                    }
                                }
                                else {
                                    y = this.t.y;
                                }
                                if (frameLayout2 != null) {
                                    frameLayout2.setPadding(this.t.x, y, 0, 0);
                                    this.t.currentX = this.t.x;
                                    this.t.currentY = y;
                                    IMAVPlayer imavPlayer2 = this.w;
                                    if (this.o) {
                                        this.p.t.currentX = this.t.currentX;
                                        this.p.t.currentY = this.t.currentY;
                                        imavPlayer2 = this.p.w;
                                    }
                                    if (imavPlayer2 != null && imavPlayer2.isInlineVideo()) {
                                        final JSController.Dimensions playDimensions2 = imavPlayer2.getPlayDimensions();
                                        if (playDimensions2 != null && playDimensions2.x >= 0 && playDimensions2.y >= 0) {
                                            ((FrameLayout)imavPlayer2.getBackGroundLayout()).setPadding(this.t.x + playDimensions2.x, y + playDimensions2.y, 0, 0);
                                        }
                                    }
                                    relativeLayout.setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(this.t.width, this.t.height));
                                    if (this.o) {
                                        this.p.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(this.t.width, this.t.height));
                                        this.p.n = this.t.width;
                                    }
                                    else {
                                        this.setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(this.t.width, this.t.height));
                                        this.n = this.t.width;
                                    }
                                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Dimensions: {" + this.t.x + " ," + y + " ," + this.t.width + " ," + this.t.height + "}");
                                    continue;
                                }
                                continue;
                            }
                        }
                        FrameLayout frameLayout2 = null;
                        RelativeLayout relativeLayout = null;
                        continue;
                    }
                }
                int n = widthPixels;
                widthPixels = heightPixels;
                continue;
            }
        }
    }
    
    private IMAVPlayer e(final String key) {
        synchronized (this) {
            IMAVPlayer w;
            if (this.w != null && this.w.getPropertyID().equalsIgnoreCase(key)) {
                w = this.w;
            }
            else {
                final boolean empty = this.A.isEmpty();
                w = null;
                if (!empty) {
                    final boolean containsKey = this.A.containsKey(key);
                    w = null;
                    if (containsKey) {
                        w = this.A.get(key);
                    }
                }
            }
            return w;
        }
    }
    
    private void e() {
        try {
            if (this.K == null) {
                return;
            }
            this.K.setVisibility(8);
            this.M.removeView((View)this.K);
            this.K = null;
            this.M.setVisibility(8);
            this.N.onCustomViewHidden();
            this.L.setVisibility(0);
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error removing html5 video", ex);
        }
    }
    
    @SuppressLint({ "SetJavaScriptEnabled" })
    private void f() {
        this.W = this.V;
        this.setScrollContainer(IMWebView.userInitiatedClose = false);
        this.setVerticalScrollBarEnabled(false);
        this.setHorizontalScrollBarEnabled(false);
        this.webviewUserAgent = this.getSettings().getUserAgentString();
        this.setBackgroundColor(0);
        ((WindowManager)this.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.d = this.V.getResources().getDisplayMetrics().density;
        this.b = false;
        this.getSettings().setJavaScriptEnabled(true);
        this.addJavascriptInterface((Object)(this.c = new JSUtilityController(this, this.getContext())), "utilityController");
        this.setWebViewClient(this.J);
        this.setWebChromeClient(this.O);
        this.H = ((WindowManager)this.V.getSystemService("window")).getDefaultDisplay();
        this.n = this.V.getResources().getDisplayMetrics().widthPixels;
        if (Build$VERSION.SDK_INT >= 14) {
            IMWrapperFunctions.disableHardwareAccl(this);
        }
    }
    
    private void g() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> initStates");
        this.h = ViewState.LOADING;
        this.F.set(false);
        this.R = false;
    }
    
    private void h() {
        if (this.h.compareTo(ViewState.DEFAULT) == 0) {
            return;
        }
        synchronized (this.y) {
            this.z.set(false);
            this.y.notifyAll();
            // monitorexit(this.y)
            if (!this.s && this.publisherOrientation == -1) {
                this.s = true;
            }
            this.k();
            this.releaseAllPlayers();
            this.E.clear();
            this.G.sendEmptyMessage(1005);
            this.setVisibility(0);
            this.o = false;
            if (this.useLockOrient) {
                this.V.setRequestedOrientation(this.D);
            }
            this.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
            this.a(ViewState.DEFAULT);
        }
    }
    
    private void i() {
        final IMCustomView imCustomView = (IMCustomView)this.W.findViewById(225);
        if (imCustomView != null) {
            if (!this.r) {
                imCustomView.setSwitchInt(IMCustomView.SwitchIconType.CLOSE_BUTTON);
                imCustomView.invalidate();
                return;
            }
            imCustomView.setSwitchInt(IMCustomView.SwitchIconType.CLOSE_TRANSPARENT);
            imCustomView.invalidate();
        }
    }
    
    private boolean j() {
        return this.r;
    }
    
    private void k() {
        try {
            FrameLayout frameLayout;
            if (this.o) {
                frameLayout = (FrameLayout)this.p.getRootView().findViewById(16908290);
            }
            else {
                frameLayout = (FrameLayout)this.getRootView().findViewById(16908290);
            }
            final FrameLayout obj = (FrameLayout)this.V.findViewById(437);
            final FrameLayout obj2 = (FrameLayout)frameLayout.findViewById(435);
            IMLog.debug("InMobiAndroidSDK_3.6.2", "PlaceHolder ID: " + obj + " Bg ID: " + obj2);
            if (this.o) {
                this.p.releaseAllPlayers();
            }
            if (obj2 != null) {
                if (this.o) {
                    ((ViewGroup)obj2.getChildAt(0)).removeView((View)this.p);
                    this.p = null;
                }
                else {
                    ((ViewGroup)obj2.getChildAt(0)).removeView((View)this);
                }
                frameLayout.removeView((View)obj2);
            }
            this.l();
            if (obj != null) {
                this.I.removeView((View)obj);
            }
            this.I.addView((View)this, this.g);
            this.I.invalidate();
        }
        catch (Exception ex) {
            try {
                final ViewGroup viewGroup = (ViewGroup)this.getParent();
                viewGroup.removeAllViews();
                ((ViewGroup)viewGroup.getParent()).removeAllViews();
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception while closing the expanded Ad", ex);
            }
            catch (Exception ex2) {
                IMLog.internal("InMobiAndroidSDK_3.6.2", "IMWebview reset contents ", ex2);
            }
        }
    }
    
    private void l() {
        final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
        if (this.Q) {
            layoutParams.height = this.e;
            layoutParams.width = this.f;
        }
        this.setVisibility(0);
        this.requestLayout();
    }
    
    private void m() {
        IMWebView.userInitiatedClose = true;
        IMWebView.isInterstitialDisplayed.set(false);
        this.close();
    }
    
    private void n() {
        if (this.u) {
            final int integerCurrentRotation = this.getIntegerCurrentRotation();
            if (this.v.equalsIgnoreCase("portrait")) {
                if (this.b(integerCurrentRotation)) {
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                }
                else if (this.b(this.V)) {
                    if (this.w != null && this.w.isInlineVideo() && !this.w.getState().equals(IMAVPlayer.playerState.RELEASED)) {
                        this.w.releasePlayer(false);
                    }
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                }
            }
            else {
                if (this.c(integerCurrentRotation)) {
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                    return;
                }
                if (this.b(this.V)) {
                    if (this.w != null && this.w.isInlineVideo() && !this.w.getState().equals(IMAVPlayer.playerState.RELEASED)) {
                        this.w.releasePlayer(false);
                    }
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                }
            }
            return;
        }
        this.aa = -5;
        this.ab = -5;
        this.injectJavaScript("window.mraidview.registerOrientationListener()");
    }
    
    private void o() {
        try {
            final int integerCurrentRotation = this.getIntegerCurrentRotation();
            if (this.u) {
                if (this.v.equals("portrait")) {
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                    return;
                }
                if (this.v.equals("landscape")) {
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                }
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "IMWebview Handle orientation for 2 piece ", ex);
        }
    }
    
    private void p() {
        try {
            this.mIsInterstitialAd = false;
            this.V.setRequestedOrientation(this.C);
            this.releaseAllPlayers();
            final FrameLayout frameLayout = (FrameLayout)this.V.findViewById(16908290);
            final RelativeLayout relativeLayout = (RelativeLayout)frameLayout.findViewById(224);
            if (relativeLayout != null) {
                ((ViewGroup)relativeLayout).removeView((View)this);
                frameLayout.removeView((View)relativeLayout);
            }
            if (this.U != null) {
                this.U.sendToTarget();
                this.U = null;
            }
            this.injectJavaScript("window.mraidview.unRegisterOrientationListener()");
            this.a(ViewState.HIDDEN);
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Failed to close the interstitial ad", ex);
        }
    }
    
    private void q() {
        if (this.w != null && this.w.getState() != IMAVPlayer.playerState.RELEASED) {
            this.A.put(this.w.getPropertyID(), this.w);
            this.w.hide();
            this.w.releasePlayer(false);
        }
        for (final Map.Entry<String, IMAVPlayer> entry : this.B.entrySet()) {
            final IMAVPlayer imavPlayer = entry.getValue();
            switch (a()[imavPlayer.getState().ordinal()]) {
                default: {
                    continue;
                }
                case 1: {
                    imavPlayer.releasePlayer(false);
                    this.B.remove(entry.getKey());
                    continue;
                }
                case 2: {
                    imavPlayer.pause();
                    continue;
                }
            }
        }
    }
    
    private void r() {
        if (this.i != null && this.getStateVariable() == ViewState.DEFAULT && !this.mIsInterstitialAd) {
            IMBrowserActivity.requestOnAdDismiss(this.G.obtainMessage(1028));
            this.i.onShowAdScreen();
        }
    }
    
    public void acceptAction(final String s) {
    }
    
    public void addJavascriptObject(final Object o, final String s) {
        this.addJavascriptInterface(o, s);
    }
    
    public void cancelLoad() {
        this.F.set(true);
    }
    
    public void changeContentAreaForInterstitials(final boolean b) {
    Label_0225_Outer:
        while (true) {
            while (true) {
            Label_0335:
                while (true) {
                    try {
                        this.C = this.V.getRequestedOrientation();
                        this.n();
                        final FrameLayout frameLayout = (FrameLayout)this.V.findViewById(16908290);
                        final RelativeLayout relativeLayout = new RelativeLayout(this.getContext());
                        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
                        relativeLayout$LayoutParams.addRule(10);
                        this.setFocusable(true);
                        this.setFocusableInTouchMode(true);
                        relativeLayout.addView((View)this, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
                        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams((int)(50.0f * this.d), (int)(50.0f * this.d));
                        IMCustomView imCustomView;
                        if (!this.j()) {
                            imCustomView = new IMCustomView(this.getContext(), this.d, IMCustomView.SwitchIconType.CLOSE_BUTTON);
                        }
                        else {
                            imCustomView = new IMCustomView(this.getContext(), this.d, IMCustomView.SwitchIconType.CLOSE_TRANSPARENT);
                        }
                        relativeLayout$LayoutParams2.addRule(11);
                        imCustomView.setId(225);
                        relativeLayout.addView((View)imCustomView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
                        imCustomView.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
                            public void onClick(final View view) {
                                IMWebView.this.m();
                            }
                        });
                        final RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(IMWrapperFunctions.getParamFillParent(), IMWrapperFunctions.getParamFillParent());
                        relativeLayout.setId(224);
                        if (b) {
                            final int backgroundColor = 0;
                            relativeLayout.setBackgroundColor(backgroundColor);
                            frameLayout.addView((View)relativeLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams3);
                            if (b) {
                                final int backgroundColor2 = 0;
                                this.setBackgroundColor(backgroundColor2);
                                this.requestFocus();
                                this.setOnKeyListener((View$OnKeyListener)new View$OnKeyListener() {
                                    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
                                        if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                                            IMLog.debug("InMobiAndroidSDK_3.6.2", "Back Button pressed while Interstitial ad is in active state ");
                                            IMWebView.this.m();
                                            return true;
                                        }
                                        return false;
                                    }
                                });
                                this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
                                    public boolean onTouch(final View view, final MotionEvent motionEvent) {
                                        switch (motionEvent.getAction()) {
                                            case 0: {
                                                view.requestFocus();
                                                break;
                                            }
                                            case 1: {
                                                view.requestFocus();
                                                break;
                                            }
                                        }
                                        return false;
                                    }
                                });
                                IMWebView.isInterstitialDisplayed.set(true);
                                if (this.mMsgOnInterstitialShown != null) {
                                    this.mMsgOnInterstitialShown.sendToTarget();
                                    this.mMsgOnInterstitialShown = null;
                                }
                                this.a(true);
                                return;
                            }
                            break Label_0335;
                        }
                    }
                    catch (Exception ex) {
                        IMLog.debug("InMobiAndroidSDK_3.6.2", "Failed showing interstitial ad", ex);
                        return;
                    }
                    final int backgroundColor = -16777216;
                    continue Label_0225_Outer;
                }
                final int backgroundColor2 = -16777216;
                continue;
            }
        }
    }
    
    public void clearView() {
        this.b();
        super.clearView();
    }
    
    public void close() {
        if (!this.G.hasMessages(1001)) {
            this.G.sendEmptyMessage(1001);
        }
    }
    
    protected void closeOpened(final View view) {
        ((ViewGroup)((Activity)this.getContext()).getWindow().getDecorView()).removeView(view);
        this.requestLayout();
    }
    
    public void closeVideo(final String key) {
        final IMAVPlayer e = this.e(key);
        if (e == null) {
            this.raiseError("Invalid property ID", "closeVideo");
            return;
        }
        if (e.getState() == IMAVPlayer.playerState.RELEASED) {
            this.raiseError("Invalid player state", "closeVideo");
            return;
        }
        this.A.remove(key);
        final Message obtainMessage = this.G.obtainMessage(1012);
        obtainMessage.obj = e;
        this.G.sendMessage(obtainMessage);
    }
    
    public void deinit() {
        if (this.getStateVariable() == ViewState.EXPANDED || this.getStateVariable() == ViewState.EXPANDING) {
            this.close();
        }
    }
    
    public void doHidePlayers() {
        this.G.sendEmptyMessage(1023);
    }
    
    public void expand(final String s, final JSController.ExpandProperties t) {
        this.a(ViewState.EXPANDING);
        this.o = false;
        this.z.set(true);
        final Message obtainMessage = this.G.obtainMessage(1004);
        final Bundle data = new Bundle();
        data.putString("expand_url", s);
        obtainMessage.setData(data);
        this.t = t;
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Dimensions: {" + this.t.x + " ," + this.t.y + " ," + this.t.width + " ," + this.t.height + "}");
        this.s = this.t.lockOrientation;
        this.G.sendMessage(obtainMessage);
    }
    
    public void fireOnLeaveApplication() {
        this.doHidePlayers();
        if (this.i != null) {
            this.i.onLeaveApplication();
        }
    }
    
    public int getAudioVolume(final String s) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "getAudioVolume");
            return -1;
        }
        return c.getVolume();
    }
    
    public String getCurrentRotation(final int n) {
        switch (n) {
            default: {
                return "-1";
            }
            case 0: {
                return "0";
            }
            case 1: {
                return "90";
            }
            case 2: {
                return "180";
            }
            case 3: {
                return "270";
            }
        }
    }
    
    public Activity getExpandedActivity() {
        return this.W;
    }
    
    public int getIntegerCurrentRotation() {
        int displayRotation = InternalSDKUtil.getDisplayRotation(((WindowManager)this.W.getSystemService("window")).getDefaultDisplay());
        if (InternalSDKUtil.getWhetherTablet(displayRotation, this.W.getResources().getDisplayMetrics().widthPixels, this.W.getResources().getDisplayMetrics().heightPixels)) {
            if (++displayRotation > 3) {
                displayRotation = 0;
            }
            this.isTablet = true;
        }
        return displayRotation;
    }
    
    public String getPlacementType() {
        if (this.mIsInterstitialAd) {
            return "interstitial";
        }
        return "inline";
    }
    
    public String getSize() {
        return "{ width: " + (int)(this.getWidth() / this.d) + ", " + "height: " + (int)(this.getHeight() / this.d) + "}";
    }
    
    public String getState() {
        return this.h.toString().toLowerCase();
    }
    
    public ViewState getStateVariable() {
        return this.h;
    }
    
    public int getVideoVolume(final String s) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "getVideoVolume");
            return -1;
        }
        return e.getVolume();
    }
    
    public void hide() {
        this.G.sendEmptyMessage(1002);
    }
    
    public void hideVideo(final String s) {
        final Message obtainMessage = this.G.obtainMessage(1013);
        final Bundle data = new Bundle();
        data.putString("pid", s);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void injectJavaScript(final String s) {
        if (s == null) {
            return;
        }
        try {
            if (this.j) {
                if (s.length() < 400) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "Injecting JavaScript: " + s);
                }
                super.loadUrl("javascript:" + s);
            }
        }
        catch (Exception ex) {
            IMLog.internal("InMobiAndroidSDK_3.6.2", "Error injecting javascript ", ex);
        }
    }
    
    public boolean isAudioMuted(final String s) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "isAudioMuted");
            return false;
        }
        return c.isMediaMuted();
    }
    
    public boolean isBusy() {
        return this.k;
    }
    
    public boolean isExpanded() {
        return this.h == ViewState.EXPANDED;
    }
    
    public boolean isPageFinished() {
        return this.b;
    }
    
    public boolean isVideoMuted(final String s) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "isVideoMuted");
            return false;
        }
        return e.isMediaMuted();
    }
    
    public boolean isViewable() {
        return this.R;
    }
    
    public void loadData(final String s, final String s2, final String s3) {
        super.loadData(s, s2, s3);
    }
    
    public void loadDataWithBaseURL(final String s, final String s2, final String s3, final String s4, final String s5) {
        this.g();
        super.loadDataWithBaseURL(s, s2, s3, s4, s5);
    }
    
    public void loadUrl(final String s) {
        this.g();
        super.loadUrl(s);
    }
    
    public void lockExpandOrientation(final JSController.ExpandProperties expandProperties) {
        try {
            this.D = this.V.getRequestedOrientation();
            if (expandProperties.lockOrientation) {
                this.useLockOrient = true;
                final int integerCurrentRotation = this.getIntegerCurrentRotation();
                if (expandProperties.orientation.equalsIgnoreCase("portrait")) {
                    if (this.b(this.V) || this.b(integerCurrentRotation)) {
                        this.V.setRequestedOrientation(IMWrapperFunctions.getParamPortraitOrientation(integerCurrentRotation));
                    }
                }
                else if (this.b(this.V) || this.c(integerCurrentRotation)) {
                    this.V.setRequestedOrientation(IMWrapperFunctions.getParamLandscapeOrientation(integerCurrentRotation));
                }
            }
        }
        catch (Exception ex) {
            IMLog.debug("InMobiAndroidSDK_3.6.2", "Exception handling the orientation ", ex);
        }
    }
    
    public void muteAudio(final String s) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "muteAudio");
            return;
        }
        if (c.getState() == IMAVPlayer.playerState.RELEASED) {
            this.raiseError("Invalid player state", "muteAudio");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1019);
        final Bundle data = new Bundle();
        data.putString("aplayerref", s);
        obtainMessage.setData(data);
        obtainMessage.sendToTarget();
    }
    
    public void muteVideo(final String s) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "muteVideo");
            return;
        }
        if (e.getState() == IMAVPlayer.playerState.RELEASED || e.getState() == IMAVPlayer.playerState.INIT) {
            this.raiseError("Invalid player state", "muteVideo");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1015);
        obtainMessage.obj = e;
        this.G.sendMessage(obtainMessage);
    }
    
    protected void onAttachedToWindow() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onAttachedToWindow");
        if (!this.Q) {
            final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
            this.e = layoutParams.height;
            this.f = layoutParams.width;
            this.Q = true;
        }
        super.onAttachedToWindow();
    }
    
    protected void onDetachedFromWindow() {
        IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView-> onDetatchedFromWindow");
        this.c.stopAllListeners();
        this.E.clear();
        if (this.mIsInterstitialAd && !this.q) {
            this.m();
        }
        super.onDetachedFromWindow();
    }
    
    public void onOrientationEventChange() {
        this.G.sendEmptyMessage(1027);
    }
    
    public void openURL(final String s) {
        if (!this.isViewable()) {
            this.raiseError("Cannot open URL.Ad is not viewable yet", "openURL");
            return;
        }
        this.doHidePlayers();
        final Message obtainMessage = this.G.obtainMessage(1024);
        final Bundle data = new Bundle();
        data.putString("expand_url", s);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void pageFinishedCallbackForAdCreativeTesting(final Message t) {
        this.T = t;
    }
    
    public void pauseAudio(final String s) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "pauseAudio");
        }
        else {
            if (c.getState() != IMAVPlayer.playerState.PLAYING) {
                this.raiseError("Invalid player state", "pauseAudio");
                return;
            }
            if (c.isPlaying()) {
                final Message obtainMessage = this.G.obtainMessage(1010);
                final Bundle data = new Bundle();
                data.putString("aplayerref", s);
                obtainMessage.setData(data);
                obtainMessage.sendToTarget();
            }
        }
    }
    
    public void pauseVideo(final String s) {
        final Message obtainMessage = this.G.obtainMessage(1011);
        final Bundle data = new Bundle();
        data.putString("pid", s);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void playAudio(final String s, final boolean b, final boolean b2, final boolean b3, final String s2, final String s3, final String s4) {
        synchronized (this.y) {
            Label_0030: {
                if (!this.z.get()) {
                    break Label_0030;
                }
                try {
                    this.y.wait();
                    // monitorexit(this.y)
                    if (!this.mIsInterstitialAd && this.h != ViewState.EXPANDED) {
                        this.raiseError("Cannot play audio.Ad is not in an expanded state", "playAudio");
                        return;
                    }
                }
                catch (InterruptedException ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "mutex failed ", ex);
                }
            }
        }
        if (!this.isViewable()) {
            this.raiseError("Cannot play audio.Ad is not viewable yet", "playAudio");
            return;
        }
        final JSController.PlayerProperties playerProperties = new JSController.PlayerProperties();
        playerProperties.setProperties(false, b, b2, b3, s2, s3, s4);
        final Bundle data = new Bundle();
        data.putString("expand_url", s);
        data.putParcelable("player_properties", (Parcelable)playerProperties);
        final Message obtainMessage = this.G.obtainMessage(1007);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void playVideo(final String s, final boolean b, final boolean b2, final boolean b3, final boolean b4, final JSController.Dimensions dimensions, final String s2, final String s3, final String key) {
        synchronized (this.y) {
            Label_0030: {
                if (!this.z.get()) {
                    break Label_0030;
                }
                try {
                    this.y.wait();
                    // monitorexit(this.y)
                    if (!this.mIsInterstitialAd && this.h != ViewState.EXPANDED) {
                        this.raiseError("Cannot play video.Ad is not in an expanded state", "playVideo");
                        return;
                    }
                }
                catch (InterruptedException ex) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "mutex failed ", ex);
                }
            }
        }
        if (!this.isViewable()) {
            this.raiseError("Cannot play video.Ad is not viewable yet", "playVideo");
            return;
        }
        if (!this.A.isEmpty() && this.A.size() == 5 && !this.A.containsKey(key)) {
            this.raiseError("Player Error. Exceeding permissible limit for saved play instances", "playVideo");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1006);
        final JSController.PlayerProperties playerProperties = new JSController.PlayerProperties();
        playerProperties.setProperties(b, b2, b3, b4, s2, s3, key);
        final Bundle data = new Bundle();
        data.putString("expand_url", s);
        data.putParcelable("player_properties", (Parcelable)playerProperties);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "Before validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
        this.a(dimensions);
        IMLog.debug("InMobiAndroidSDK_3.6.2", "After validation dimension: (" + dimensions.x + ", " + dimensions.y + ", " + dimensions.width + ", " + dimensions.height + ")");
        data.putParcelable("expand_dimensions", (Parcelable)dimensions);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void postInjectJavaScript(final String str) {
        if (str != null && this.j) {
            if (str.length() < 400) {
                IMLog.debug("InMobiAndroidSDK_3.6.2", "Injecting JavaScript: " + str);
            }
            final Message obtainMessage = this.G.obtainMessage(1025);
            final Bundle data = new Bundle();
            data.putString("injectMessage", str);
            obtainMessage.setData(data);
            obtainMessage.sendToTarget();
        }
    }
    
    public void raiseError(final String s, final String s2) {
        final Message obtainMessage = this.G.obtainMessage(1008);
        final Bundle data = new Bundle();
        data.putString("message", s);
        data.putString("action", s2);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void reinitializeExpandProperties() {
        this.c.reinitializeExpandProperties();
    }
    
    public void rejectAction(final String s) {
    }
    
    public void releaseAllPlayers() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/inmobi/androidsdk/ai/container/IMWebView.w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //     4: ifnull          26
        //     7: aload_0        
        //     8: getfield        com/inmobi/androidsdk/ai/container/IMWebView.A:Ljava/util/Hashtable;
        //    11: aload_0        
        //    12: getfield        com/inmobi/androidsdk/ai/container/IMWebView.w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //    15: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.getPropertyID:()Ljava/lang/String;
        //    18: aload_0        
        //    19: getfield        com/inmobi/androidsdk/ai/container/IMWebView.w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //    22: invokevirtual   java/util/Hashtable.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //    25: pop            
        //    26: aload_0        
        //    27: getfield        com/inmobi/androidsdk/ai/container/IMWebView.A:Ljava/util/Hashtable;
        //    30: invokevirtual   java/util/Hashtable.entrySet:()Ljava/util/Set;
        //    33: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //    38: astore          5
        //    40: aload           5
        //    42: invokeinterface java/util/Iterator.hasNext:()Z
        //    47: istore          6
        //    49: iload           6
        //    51: ifne            109
        //    54: aload_0        
        //    55: getfield        com/inmobi/androidsdk/ai/container/IMWebView.A:Ljava/util/Hashtable;
        //    58: invokevirtual   java/util/Hashtable.clear:()V
        //    61: aload_0        
        //    62: aconst_null    
        //    63: putfield        com/inmobi/androidsdk/ai/container/IMWebView.w:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //    66: aload_0        
        //    67: getfield        com/inmobi/androidsdk/ai/container/IMWebView.B:Ljava/util/Hashtable;
        //    70: invokevirtual   java/util/Hashtable.entrySet:()Ljava/util/Set;
        //    73: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //    78: astore_3       
        //    79: aload_3        
        //    80: invokeinterface java/util/Iterator.hasNext:()Z
        //    85: istore          4
        //    87: iload           4
        //    89: ifne            150
        //    92: iconst_0       
        //    93: putstatic       com/inmobi/androidsdk/ai/container/IMWebView.userInitiatedClose:Z
        //    96: aload_0        
        //    97: getfield        com/inmobi/androidsdk/ai/container/IMWebView.B:Ljava/util/Hashtable;
        //   100: invokevirtual   java/util/Hashtable.clear:()V
        //   103: aload_0        
        //   104: aconst_null    
        //   105: putfield        com/inmobi/androidsdk/ai/container/IMWebView.x:Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //   108: return         
        //   109: aload           5
        //   111: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   116: checkcast       Ljava/util/Map$Entry;
        //   119: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   124: checkcast       Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //   127: getstatic       com/inmobi/androidsdk/ai/container/IMWebView.userInitiatedClose:Z
        //   130: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.releasePlayer:(Z)V
        //   133: goto            40
        //   136: astore_1       
        //   137: ldc_w           "InMobiAndroidSDK_3.6.2"
        //   140: ldc_w           "IMwebview release all players "
        //   143: aload_1        
        //   144: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   147: goto            54
        //   150: aload_3        
        //   151: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   156: checkcast       Ljava/util/Map$Entry;
        //   159: invokeinterface java/util/Map$Entry.getValue:()Ljava/lang/Object;
        //   164: checkcast       Lcom/inmobi/androidsdk/ai/controller/util/IMAVPlayer;
        //   167: getstatic       com/inmobi/androidsdk/ai/container/IMWebView.userInitiatedClose:Z
        //   170: invokevirtual   com/inmobi/androidsdk/ai/controller/util/IMAVPlayer.releasePlayer:(Z)V
        //   173: goto            79
        //   176: astore_2       
        //   177: ldc_w           "InMobiAndroidSDK_3.6.2"
        //   180: ldc_w           "IMwebview release all players "
        //   183: aload_2        
        //   184: invokestatic    com/inmobi/commons/internal/IMLog.internal:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
        //   187: goto            92
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  26     40     136    150    Ljava/lang/Exception;
        //  40     49     136    150    Ljava/lang/Exception;
        //  66     79     176    190    Ljava/lang/Exception;
        //  79     87     176    190    Ljava/lang/Exception;
        //  109    133    136    150    Ljava/lang/Exception;
        //  150    173    176    190    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0079:
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
    
    public void requestOnInterstitialClosed(final Message u) {
        this.U = u;
    }
    
    public void requestOnInterstitialShown(final Message mMsgOnInterstitialShown) {
        this.mMsgOnInterstitialShown = mMsgOnInterstitialShown;
    }
    
    public void requestOnPageFinishedCallback(final Message s) {
        this.S = s;
    }
    
    public void requestOnSearchAdClicked(final Message z) {
        this.Z = z;
    }
    
    public void seekAudio(final String s, final int n) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "seekAudio");
            return;
        }
        if (c.getState() == IMAVPlayer.playerState.RELEASED) {
            this.raiseError("Invalid player state", "seekAudio");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1022);
        final Bundle data = new Bundle();
        data.putInt("seekaudio", n);
        obtainMessage.setData(data);
        obtainMessage.obj = c;
        obtainMessage.sendToTarget();
    }
    
    public void seekVideo(final String s, final int n) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "seekVideo");
            return;
        }
        if (e.getState() == IMAVPlayer.playerState.RELEASED || e.getState() == IMAVPlayer.playerState.INIT) {
            this.raiseError("Invalid player state", "seekVideo");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1018);
        final Bundle data = new Bundle();
        data.putInt("seek", n);
        obtainMessage.setData(data);
        obtainMessage.obj = e;
        this.G.sendMessage(obtainMessage);
    }
    
    public void sendasyncPing(final String s) {
        this.c.asyncPing(s);
    }
    
    public void setActivity(final Activity v) {
        this.V = v;
    }
    
    public void setAdUnitData(final boolean l, final String m) {
        this.l = l;
        this.m = m;
    }
    
    public void setAudioVolume(final String s, final int n) {
        if (this.c(s) == null) {
            this.raiseError("Invalid property ID", "setAudioVolume");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1021);
        final Bundle data = new Bundle();
        data.putInt("vol", n);
        data.putString("aplayerref", s);
        obtainMessage.setData(data);
        obtainMessage.sendToTarget();
    }
    
    public void setCustomClose(final boolean r) {
        this.r = r;
        if (this.mIsInterstitialAd) {
            this.G.sendMessage(this.G.obtainMessage(1009));
        }
    }
    
    public void setExpandPropertiesForInterstitial(final boolean customClose, final boolean u, final String v) {
        this.setCustomClose(customClose);
        this.v = v;
        this.u = u;
        if (this.q) {
            this.o();
        }
        if (this.isViewable() && this.mIsInterstitialAd) {
            this.G.sendEmptyMessage(1026);
        }
    }
    
    public void setExpandedActivity(final Activity w) {
        this.W = w;
    }
    
    public void setExternalWebViewClient(final WebViewClient ac) {
        this.ac = ac;
    }
    
    public void setVideoVolume(final String s, final int n) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "setVideoVolume");
            return;
        }
        if (e.getState() == IMAVPlayer.playerState.RELEASED) {
            this.raiseError("Invalid player state", "setVideoVolume");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1017);
        final Bundle data = new Bundle();
        data.putInt("volume", n);
        obtainMessage.setData(data);
        obtainMessage.obj = e;
        this.G.sendMessage(obtainMessage);
    }
    
    public void show() {
        this.G.sendEmptyMessage(1003);
    }
    
    public void showVideo(final String s) {
        final Message obtainMessage = this.G.obtainMessage(1014);
        final Bundle data = new Bundle();
        data.putString("pid", s);
        obtainMessage.setData(data);
        this.G.sendMessage(obtainMessage);
    }
    
    public void unMuteAudio(final String s) {
        final IMAVPlayer c = this.c(s);
        if (c == null) {
            this.raiseError("Invalid property ID", "unmuteAudio");
            return;
        }
        if (c.getState() == IMAVPlayer.playerState.RELEASED) {
            this.raiseError("Invalid player state", "unmuteAudio");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1020);
        final Bundle data = new Bundle();
        data.putString("aplayerref", s);
        obtainMessage.setData(data);
        obtainMessage.sendToTarget();
    }
    
    public void unMuteVideo(final String s) {
        final IMAVPlayer e = this.e(s);
        if (e == null) {
            this.raiseError("Invalid property ID", "unMuteVideo");
            return;
        }
        if (e.getState() == IMAVPlayer.playerState.RELEASED || e.getState() == IMAVPlayer.playerState.INIT) {
            this.raiseError("Invalid player state", "unMuteVideo");
            return;
        }
        final Message obtainMessage = this.G.obtainMessage(1016);
        obtainMessage.obj = e;
        this.G.sendMessage(obtainMessage);
    }
    
    public interface IMWebViewListener
    {
        void onDismissAdScreen();
        
        void onError();
        
        void onExpand();
        
        void onExpandClose();
        
        void onLeaveApplication();
        
        void onShowAdScreen();
    }
    
    public enum ViewState
    {
        DEFAULT("DEFAULT", 1), 
        EXPANDED("EXPANDED", 3), 
        EXPANDING("EXPANDING", 4), 
        HIDDEN("HIDDEN", 5), 
        LOADING("LOADING", 0), 
        RESIZED("RESIZED", 2);
        
        static {
            a = new ViewState[] { ViewState.LOADING, ViewState.DEFAULT, ViewState.RESIZED, ViewState.EXPANDED, ViewState.EXPANDING, ViewState.HIDDEN };
        }
    }
    
    static class a extends Handler
    {
        private final WeakReference<IMWebView> a;
        
        public a(final IMWebView referent) {
            super();
            this.a = new WeakReference<IMWebView>(referent);
        }
        
        static /* synthetic */ int[] a() {
            final int[] b = a.b;
            if (b != null) {
                return b;
            }
            final int[] b2 = new int[ViewState.values().length];
            while (true) {
                try {
                    b2[ViewState.DEFAULT.ordinal()] = 2;
                    try {
                        b2[ViewState.EXPANDED.ordinal()] = 4;
                        try {
                            b2[ViewState.EXPANDING.ordinal()] = 5;
                            try {
                                b2[ViewState.HIDDEN.ordinal()] = 6;
                                try {
                                    b2[ViewState.LOADING.ordinal()] = 1;
                                    try {
                                        b2[ViewState.RESIZED.ordinal()] = 3;
                                        return a.b = b2;
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
                catch (NoSuchFieldError noSuchFieldError6) {
                    continue;
                }
                break;
            }
        }
        
        public void handleMessage(final Message obj) {
            final IMWebView imWebView = this.a.get();
            Label_0172: {
                if (imWebView != null) {
                    IMLog.debug("InMobiAndroidSDK_3.6.2", "IMWebView->handleMessage: msg: " + obj);
                    final Bundle data = obj.getData();
                    switch (obj.what) {
                        case 1005: {
                            if (imWebView.i != null) {
                                imWebView.i.onExpandClose();
                                break;
                            }
                            break;
                        }
                        case 1001: {
                            switch (a()[imWebView.h.ordinal()]) {
                                default: {
                                    break Label_0172;
                                }
                                case 2: {
                                    if (imWebView.mIsInterstitialAd) {
                                        imWebView.p();
                                        break Label_0172;
                                    }
                                    imWebView.hide();
                                    break Label_0172;
                                }
                                case 4:
                                case 5: {
                                    imWebView.h();
                                    IMWebView.c(imWebView, false);
                                    break Label_0172;
                                }
                                case 6: {
                                    imWebView.injectJavaScript("window.mraidview.fireErrorEvent(\"Current state is not expanded or default\", \"close\")");
                                    break Label_0172;
                                }
                            }
                            break;
                        }
                        case 1002: {
                            imWebView.setVisibility(4);
                            imWebView.a(ViewState.HIDDEN);
                            break;
                        }
                        case 1003: {
                            imWebView.injectJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
                            imWebView.setVisibility(0);
                            break;
                        }
                        case 1004: {
                            if (imWebView.h == ViewState.EXPANDING) {
                                imWebView.a(data);
                                break;
                            }
                            break;
                        }
                        case 1007: {
                            try {
                                imWebView.a(data, imWebView.W);
                            }
                            catch (Exception ex) {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Play audio failed ", ex);
                            }
                            break;
                        }
                        case 1006: {
                            try {
                                imWebView.b(data, imWebView.W);
                            }
                            catch (Exception ex2) {
                                IMLog.debug("InMobiAndroidSDK_3.6.2", "Play video failed ", ex2);
                            }
                            break;
                        }
                        case 1010: {
                            final IMAVPlayer imavPlayer = imWebView.B.get(data.getString("aplayerref"));
                            if (imavPlayer != null) {
                                imavPlayer.pause();
                                break;
                            }
                            break;
                        }
                        case 1019: {
                            final IMAVPlayer imavPlayer2 = imWebView.B.get(data.getString("aplayerref"));
                            if (imavPlayer2 != null) {
                                imavPlayer2.mute();
                                break;
                            }
                            break;
                        }
                        case 1020: {
                            final IMAVPlayer imavPlayer3 = imWebView.B.get(data.getString("aplayerref"));
                            if (imavPlayer3 != null) {
                                imavPlayer3.unMute();
                                break;
                            }
                            break;
                        }
                        case 1021: {
                            final IMAVPlayer imavPlayer4 = imWebView.B.get(data.getString("aplayerref"));
                            if (imavPlayer4 != null) {
                                imavPlayer4.setVolume(data.getInt("vol"));
                                break;
                            }
                            break;
                        }
                        case 1022: {
                            ((IMAVPlayer)obj.obj).seekPlayer(1000 * data.getInt("seekaudio"));
                            break;
                        }
                        case 1011: {
                            final IMAVPlayer a = imWebView.e(data.getString("pid"));
                            String s;
                            if (a == null) {
                                s = "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"pauseVideo\")";
                            }
                            else {
                                if (a.getState() == IMAVPlayer.playerState.PLAYING) {
                                    a.pause();
                                    return;
                                }
                                s = "window.mraidview.fireErrorEvent(\"Invalid player state\", \"pauseVideo\")";
                            }
                            imWebView.injectJavaScript(s);
                            break;
                        }
                        case 1012: {
                            ((IMAVPlayer)obj.obj).releasePlayer(false);
                            break;
                        }
                        case 1013: {
                            final String string = data.getString("pid");
                            final IMAVPlayer a2 = imWebView.e(string);
                            String s2;
                            if (a2 == null) {
                                s2 = "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"hideVideo\")";
                            }
                            else {
                                if (a2.getState() != IMAVPlayer.playerState.RELEASED) {
                                    imWebView.A.put(string, a2);
                                    a2.hide();
                                    a2.releasePlayer(false);
                                    return;
                                }
                                s2 = "window.mraidview.fireErrorEvent(\"Invalid player state\", \"hideVideo\")";
                            }
                            imWebView.injectJavaScript(s2);
                            break;
                        }
                        case 1014: {
                            final String string2 = data.getString("pid");
                            final IMAVPlayer a3 = imWebView.e(string2);
                            String s3;
                            if (a3 == null) {
                                s3 = "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"showVideo\")";
                            }
                            else if (a3.getState() != IMAVPlayer.playerState.RELEASED) {
                                s3 = "window.mraidview.fireErrorEvent(\"Invalid player state\", \"showVideo\")";
                            }
                            else {
                                if (imWebView.w == null || imWebView.w.getPropertyID().equalsIgnoreCase(string2)) {
                                    imWebView.A.remove(string2);
                                    final Bundle bundle = new Bundle();
                                    bundle.putString("expand_url", a3.getMediaURL());
                                    bundle.putParcelable("expand_dimensions", (Parcelable)a3.getPlayDimensions());
                                    bundle.putParcelable("player_properties", (Parcelable)a3.getProperties());
                                    imWebView.b(bundle, imWebView.W);
                                    return;
                                }
                                s3 = "window.mraidview.fireErrorEvent(\"Show failed. There is already a video playing\", \"showVideo\")";
                            }
                            imWebView.injectJavaScript(s3);
                            break;
                        }
                        case 1015: {
                            ((IMAVPlayer)obj.obj).mute();
                            break;
                        }
                        case 1016: {
                            ((IMAVPlayer)obj.obj).unMute();
                            break;
                        }
                        case 1018: {
                            ((IMAVPlayer)obj.obj).seekPlayer(1000 * data.getInt("seek"));
                            break;
                        }
                        case 1017: {
                            ((IMAVPlayer)obj.obj).setVolume(data.getInt("volume"));
                            break;
                        }
                        case 1008: {
                            imWebView.injectJavaScript("window.mraidview.fireErrorEvent(\"" + data.getString("message") + "\", \"" + data.getString("action") + "\")");
                            break;
                        }
                        case 1009: {
                            imWebView.i();
                            break;
                        }
                        case 1023: {
                            imWebView.q();
                            break;
                        }
                        case 1024: {
                            imWebView.b(data.getString("expand_url"));
                            break;
                        }
                        case 1025: {
                            final String string3 = data.getString("injectMessage");
                            if (string3 != null) {
                                imWebView.loadUrl("javascript:" + string3);
                                break;
                            }
                            break;
                        }
                        case 1026: {
                            imWebView.n();
                            break;
                        }
                        case 1027: {
                            imWebView.d();
                            break;
                        }
                        case 1028: {
                            if (imWebView.i != null) {
                                imWebView.i.onDismissAdScreen();
                                break;
                            }
                            break;
                        }
                    }
                }
            }
            super.handleMessage(obj);
        }
    }
}
