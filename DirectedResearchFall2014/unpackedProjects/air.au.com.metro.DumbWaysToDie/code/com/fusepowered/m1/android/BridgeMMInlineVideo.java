package com.fusepowered.m1.android;

import java.util.*;
import java.util.concurrent.*;

class BridgeMMInlineVideo extends MMJSObject
{
    public MMJSResponse adjustVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null && mmWebView != null && mmWebView.getMMLayout().adjustVideo(new InlineVideoView.InlineParams(hashMap, mmWebView.getContext()))) {
                    return MMJSResponse.responseWithSuccess();
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse insertVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    mmLayout.initInlineVideo(new InlineVideoView.InlineParams(hashMap, mmWebView.getContext()));
                    return MMJSResponse.responseWithSuccess("usingStreaming=" + mmLayout.isVideoPlayingStreaming());
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse pauseVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    if (mmLayout != null) {
                        mmLayout.pauseVideo();
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse playVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    if (mmLayout != null) {
                        mmLayout.playVideo();
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse removeVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    if (mmLayout != null) {
                        mmLayout.removeVideo();
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse resumeVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    if (mmLayout != null) {
                        mmLayout.resumeVideo();
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse setStreamVideoSource(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    final String videoSource = hashMap.get("streamVideoURI");
                    if (mmLayout != null && videoSource != null) {
                        mmLayout.setVideoSource(videoSource);
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
    
    public MMJSResponse stopVideo(final HashMap<String, String> hashMap) {
        return this.runOnUiThreadFuture(new Callable<MMJSResponse>() {
            @Override
            public MMJSResponse call() {
                final MMWebView mmWebView = BridgeMMInlineVideo.this.mmWebViewRef.get();
                if (mmWebView != null) {
                    final MMLayout mmLayout = mmWebView.getMMLayout();
                    if (mmLayout != null) {
                        mmLayout.stopVideo();
                        return MMJSResponse.responseWithSuccess();
                    }
                }
                return MMJSResponse.responseWithError();
            }
        });
    }
}
