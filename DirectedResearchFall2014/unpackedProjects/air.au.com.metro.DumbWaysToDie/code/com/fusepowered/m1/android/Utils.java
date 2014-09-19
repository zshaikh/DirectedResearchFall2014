package com.fusepowered.m1.android;

import org.apache.http.impl.client.*;
import org.apache.http.client.methods.*;
import android.content.*;
import android.text.*;
import android.net.*;
import android.app.*;
import java.io.*;
import java.util.concurrent.*;
import org.apache.http.client.*;

class Utils
{
    static class HttpUtils
    {
        static void executeUrl(final String s) {
            ThreadUtils.execute(new Runnable() {
                @Override
                public void run() {
                    try {
                        ((HttpClient)new DefaultHttpClient()).execute((HttpUriRequest)new HttpGet(s));
                        MMSDK.Log.d("Executed Url :\"" + s + "\"");
                    }
                    catch (IOException ex) {
                        MMSDK.Log.e(ex);
                    }
                }
            });
        }
    }
    
    static class IntentUtils
    {
        private static void fixDataAndTypeForVideo(final Context context, final Intent intent) {
            final Uri data = intent.getData();
            if (data != null) {
                final String lastPathSegment = data.getLastPathSegment();
                if (TextUtils.isEmpty((CharSequence)intent.getStringExtra("class")) && !TextUtils.isEmpty((CharSequence)lastPathSegment) && (lastPathSegment.endsWith(".mp4") || lastPathSegment.endsWith(".3gp") || lastPathSegment.endsWith(".mkv") || lastPathSegment.endsWith("content.once"))) {
                    intent.setDataAndType(intent.getData(), "video/*");
                }
            }
        }
        
        static Intent getIntentForUri(final HttpRedirection.RedirectionListenerImpl redirectionListenerImpl) {
            if (redirectionListenerImpl == null) {
                return null;
            }
            final Uri destinationUri = redirectionListenerImpl.destinationUri;
            final Context context = redirectionListenerImpl.weakContext.get();
            Intent intent = null;
            if (context != null) {
                intent = null;
                if (destinationUri != null) {
                    final String scheme = destinationUri.getScheme();
                    intent = null;
                    if (scheme != null) {
                        if (scheme.equalsIgnoreCase("market")) {
                            MMSDK.Log.v("Creating Android Market intent.");
                            intent = new Intent("android.intent.action.VIEW", destinationUri);
                            MMSDK.Event.intentStarted(context, "market", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("rtsp")) {
                            MMSDK.Log.v("Creating streaming video player intent.");
                            intent = new Intent(context, (Class)MMActivity.class);
                            intent.setData(destinationUri);
                            intent.putExtra("class", "com.fusepowered.m1.android.VideoPlayerActivity");
                        }
                        else if (scheme.equalsIgnoreCase("tel")) {
                            MMSDK.Log.v("Creating telephone intent.");
                            intent = new Intent("android.intent.action.DIAL", destinationUri);
                            MMSDK.Event.intentStarted(context, "tel", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("sms")) {
                            MMSDK.Log.v("Creating txt message intent.");
                            intent = new Intent("android.intent.action.VIEW");
                            String s = destinationUri.getSchemeSpecificPart();
                            final int index = s.indexOf("?body=");
                            if (index != -1) {
                                s = s.substring(0, index);
                            }
                            intent.putExtra("address", s.replace(',', ';'));
                            if (index != -1) {
                                intent.putExtra("sms_body", destinationUri.getSchemeSpecificPart().substring(index + 6));
                            }
                            intent.setType("vnd.android-dir/mms-sms");
                            MMSDK.Event.intentStarted(context, "sms", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("mailto")) {
                            intent = new Intent("android.intent.action.VIEW", destinationUri);
                            MMSDK.Event.intentStarted(context, "email", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("geo")) {
                            MMSDK.Log.v("Creating Google Maps intent.");
                            intent = new Intent("android.intent.action.VIEW", destinationUri);
                            MMSDK.Event.intentStarted(context, "geo", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("https")) {
                            MMSDK.Log.v("Creating launch browser intent.");
                            intent = new Intent("android.intent.action.VIEW", destinationUri);
                            MMSDK.Event.intentStarted(context, "browser", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("mmbrowser")) {
                            String s2 = destinationUri.toString().substring(12);
                            if (s2 != null && !s2.contains("://")) {
                                s2 = s2.replaceFirst("//", "://");
                            }
                            MMSDK.Log.v("MMBrowser - Creating launch browser intent.");
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(s2));
                            MMSDK.Event.intentStarted(context, "browser", redirectionListenerImpl.creatorAdImplInternalId);
                        }
                        else if (scheme.equalsIgnoreCase("http")) {
                            if (destinationUri.getLastPathSegment() != null && (destinationUri.getLastPathSegment().endsWith(".mp4") || destinationUri.getLastPathSegment().endsWith(".3gp"))) {
                                MMSDK.Log.v("Creating video player intent.");
                                intent = new Intent(context, (Class)MMActivity.class);
                                intent.setData(destinationUri);
                                intent.putExtra("class", "com.fusepowered.m1.android.VideoPlayerActivity");
                                MMSDK.Event.intentStarted(context, "streamingVideo", redirectionListenerImpl.creatorAdImplInternalId);
                            }
                            else {
                                if (redirectionListenerImpl.canOpenOverlay()) {
                                    MMSDK.Log.v("Creating launch overlay intent.");
                                    final Intent intent2 = new Intent(context, (Class)MMActivity.class);
                                    intent2.putExtra("class", AdViewOverlayActivity.class.getCanonicalName());
                                    intent2.setData(destinationUri);
                                    return intent2;
                                }
                                MMSDK.Log.v("Creating launch browser intent.");
                                MMSDK.Event.intentStarted(context, "browser", redirectionListenerImpl.creatorAdImplInternalId);
                                intent = new Intent("android.intent.action.VIEW", destinationUri);
                            }
                        }
                        else {
                            MMSDK.Log.v("Creating intent for unrecognized URI. %s", destinationUri);
                            intent = new Intent("android.intent.action.VIEW", destinationUri);
                        }
                    }
                }
                if (intent != null) {
                    MMSDK.Log.v("%s resolved to Intent: %s", destinationUri, intent);
                }
                else {
                    MMSDK.Log.v("%s", destinationUri);
                }
            }
            return intent;
        }
        
        static void startActionView(final Context context, final String s) {
            startActivity(context, new Intent("android.intent.action.VIEW", Uri.parse(s)));
        }
        
        static void startActivity(final Context context, final Intent intent) {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            fixDataAndTypeForVideo(context, intent);
            context.startActivity(intent);
        }
        
        static void startAdViewOverlayActivity(final Context context) {
            final Intent intent = new Intent(context, (Class)MMActivity.class);
            intent.putExtra("class", "com.fusepowered.m1.android.AdViewOverlayActivity");
            startActivity(context, intent);
        }
        
        static void startAdViewOverlayActivity(final Context context, final Intent intent) {
            intent.setClass(context, (Class)MMActivity.class);
            intent.putExtra("class", "com.fusepowered.m1.android.AdViewOverlayActivity");
            startActivity(context, intent);
        }
        
        static void startAdViewOverlayActivityWithData(final Context context, final String s) {
            final Intent intent = new Intent(context, (Class)MMActivity.class);
            intent.putExtra("class", "com.fusepowered.m1.android.AdViewOverlayActivity");
            intent.setData(Uri.parse(s));
            startActivity(context, intent);
        }
        
        static void startCachedVideoPlayerActivity(final Context context, final Intent intent) {
            intent.setClass(context, (Class)MMActivity.class);
            intent.putExtra("class", "com.fusepowered.m1.android.CachedVideoPlayerActivity");
            startActivity(context, intent);
        }
        
        static void startPickerActivity(final Context context, final File file, final String s) {
            final Intent intent = new Intent(context, (Class)MMActivity.class);
            intent.setData(Uri.fromFile(file));
            intent.putExtra("type", s);
            intent.putExtra("class", "com.fusepowered.m1.android.BridgeMMMedia$PickerActivity");
            startActivity(context, intent);
        }
        
        static void startVideoPlayerActivityWithData(final Context context, final Uri data) {
            final Intent intent = new Intent(context, (Class)MMActivity.class);
            intent.setData(data);
            intent.putExtra("class", "com.fusepowered.m1.android.VideoPlayerActivity");
            startActivity(context, intent);
        }
        
        static void startVideoPlayerActivityWithData(final Context context, final File file) {
            startVideoPlayerActivityWithData(context, Uri.fromFile(file));
        }
        
        static void startVideoPlayerActivityWithData(final Context context, final String s) {
            startVideoPlayerActivityWithData(context, Uri.parse(s));
        }
    }
    
    static class ThreadUtils
    {
        private static final ExecutorService cachedThreadExecutor;
        
        static {
            cachedThreadExecutor = Executors.newCachedThreadPool();
        }
        
        static void execute(final Runnable runnable) {
            ThreadUtils.cachedThreadExecutor.execute(runnable);
        }
    }
}
