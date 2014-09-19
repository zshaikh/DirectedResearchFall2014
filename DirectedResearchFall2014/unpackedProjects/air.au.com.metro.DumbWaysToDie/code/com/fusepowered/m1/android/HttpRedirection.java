package com.fusepowered.m1.android;

import java.net.*;
import java.io.*;
import java.lang.ref.*;
import android.os.*;
import android.content.*;
import android.net.*;
import org.json.*;

final class HttpRedirection
{
    private static final String HEADER_LOCATION = "Location";
    private static final String HTTPS = "https";
    private static final String LOG_URL_FORMAT = "Redirecting to: %s";
    private static final String METHOD_GET = "GET";
    
    static final String navigateRedirects(String string) {
        if (string == null) {
            return null;
        }
        HttpURLConnection.setFollowRedirects(false);
        try {
            while (!string.startsWith("https")) {
                final URL url = new URL(string);
                final HttpURLConnection httpURLConnection = (HttpURLConnection)url.openConnection();
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.connect();
                final int responseCode = httpURLConnection.getResponseCode();
                if (responseCode < 300 || responseCode >= 400) {
                    break;
                }
                final URI uri = new URI(httpURLConnection.getHeaderField("Location"));
                if (uri.isAbsolute()) {
                    goto Label_0148;
                }
                string = url.toURI().resolve(uri).toString();
                MMSDK.Log.v("Redirecting to: %s", string);
            }
        }
        catch (MalformedURLException ex) {}
        catch (SocketTimeoutException ex2) {
            MMSDK.Log.d("Connection timeout.");
        }
        catch (URISyntaxException ex3) {
            MMSDK.Log.d("URI Syntax incorrect.");
        }
        catch (IOException ex4) {}
        return string;
    }
    
    static void startActivityFromUri(final RedirectionListenerImpl referent) {
        if (referent == null || referent.url == null || referent.weakContext == null) {
            return;
        }
        Utils.ThreadUtils.execute(new Runnable() {
            final /* synthetic */ WeakReference val$listenerReference = new WeakReference((T)referent);
            
            private void handleDestinationUri(final RedirectionListenerImpl redirectionListenerImpl) {
                final Context context = redirectionListenerImpl.weakContext.get();
                if (context == null) {
                    return;
                }
                final String scheme = redirectionListenerImpl.destinationUri.getScheme();
                Intent intentForUri = null;
                Label_0145: {
                    if (scheme != null) {
                        if (scheme.equalsIgnoreCase("mmvideo")) {
                            break Label_0145;
                        }
                        intentForUri = Utils.IntentUtils.getIntentForUri(redirectionListenerImpl);
                    }
                Block_11_Outer:
                    while (true) {
                        if (intentForUri == null) {
                            return;
                        }
                        final OverlaySettings overlaySettings = redirectionListenerImpl.getOverlaySettings();
                        if (intentForUri != null && overlaySettings != null) {
                            if (redirectionListenerImpl.orientation != null) {
                                overlaySettings.orientation = redirectionListenerImpl.orientation;
                            }
                            intentForUri.putExtra("settings", (Parcelable)overlaySettings);
                        }
                        final String stringExtra = intentForUri.getStringExtra("class");
                        if (stringExtra != null) {
                            if (stringExtra.equals(AdViewOverlayActivity.class.getCanonicalName())) {
                                return;
                            }
                        }
                        try {
                            if (redirectionListenerImpl.isActivityStartable(redirectionListenerImpl.destinationUri)) {
                                Utils.IntentUtils.startActivity(context, intentForUri);
                                redirectionListenerImpl.startingActivity(redirectionListenerImpl.destinationUri);
                            }
                            return;
                            while (true) {
                                VideoAd.playAd(context, redirectionListenerImpl.destinationUri.getHost(), redirectionListenerImpl);
                                intentForUri = null;
                                continue Block_11_Outer;
                                final boolean handlingMMVideo = redirectionListenerImpl.isHandlingMMVideo(redirectionListenerImpl.destinationUri);
                                intentForUri = null;
                                continue;
                            }
                        }
                        // iftrue(Label_0045:, handlingMMVideo)
                        catch (ActivityNotFoundException ex) {
                            MMSDK.Log.e("No activity found for %s", redirectionListenerImpl.destinationUri);
                        }
                        break;
                    }
                }
            }
            
            @Override
            public void run() {
                final RedirectionListenerImpl redirectionListenerImpl = (RedirectionListenerImpl)this.val$listenerReference.get();
                if (redirectionListenerImpl != null) {
                    final String navigateRedirects = HttpRedirection.navigateRedirects(redirectionListenerImpl.url);
                    if (navigateRedirects != null) {
                        redirectionListenerImpl.destinationUri = Uri.parse(navigateRedirects);
                        if (redirectionListenerImpl.destinationUri == null) {
                            MMSDK.Log.v("Could not start activity for %s", navigateRedirects);
                            return;
                        }
                        this.handleDestinationUri(redirectionListenerImpl);
                    }
                }
            }
        });
    }
    
    private interface Listener
    {
        boolean canOpenOverlay();
        
        OverlaySettings getOverlaySettings();
        
        boolean isActivityStartable(Uri p0);
        
        boolean isExpandingToUrl();
        
        boolean isHandlingMMVideo(Uri p0);
        
        void startingActivity(Uri p0);
        
        void startingVideo();
        
        void updateLastVideoViewedTime();
    }
    
    static class RedirectionListenerImpl implements Listener
    {
        long creatorAdImplInternalId;
        Uri destinationUri;
        String orientation;
        String url;
        WeakReference<Context> weakContext;
        
        @Override
        public boolean canOpenOverlay() {
            return false;
        }
        
        public JSONObject getAdProperties() {
            return null;
        }
        
        @Override
        public OverlaySettings getOverlaySettings() {
            return null;
        }
        
        @Override
        public boolean isActivityStartable(final Uri uri) {
            return true;
        }
        
        @Override
        public boolean isExpandingToUrl() {
            return false;
        }
        
        @Override
        public boolean isHandlingMMVideo(final Uri uri) {
            return false;
        }
        
        @Override
        public void startingActivity(final Uri uri) {
            MMSDK.Log.d("Starting activity for %s", uri);
        }
        
        @Override
        public void startingVideo() {
        }
        
        @Override
        public void updateLastVideoViewedTime() {
        }
    }
}
