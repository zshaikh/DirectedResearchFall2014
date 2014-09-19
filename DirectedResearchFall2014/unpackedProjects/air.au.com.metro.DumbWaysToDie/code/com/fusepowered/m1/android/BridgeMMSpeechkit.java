package com.fusepowered.m1.android;

import android.content.*;
import java.util.*;
import android.text.*;
import android.webkit.*;
import android.media.*;

public class BridgeMMSpeechkit extends MMJSObject implements MediaPlayer$OnCompletionListener, PeriodicListener
{
    private NVASpeechKit getCreateSpeechKit() {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        NVASpeechKit speechKit = null;
        if (mmWebView != null) {
            final boolean allowSpeechCreationCommands = mmWebView.allowSpeechCreationCommands();
            speechKit = null;
            if (allowSpeechCreationCommands) {
                if (getSpeechKitInternal() != null) {
                    return getSpeechKitInternal();
                }
                final Context context = mmWebView.getContext();
                speechKit = null;
                if (context != null) {
                    speechKit = new NVASpeechKit(mmWebView);
                    setSpeechKit(speechKit);
                    final HandShake.NuanceCredentials nuanceCredentials = HandShake.sharedHandShake(context).nuanceCredentials;
                    if (nuanceCredentials != null) {
                        speechKit.initialize(nuanceCredentials, context.getApplicationContext());
                    }
                }
            }
        }
        return speechKit;
    }
    
    static SpeechKitHolder getInstance() {
        return SingletonHolder.INSTANCE;
    }
    
    private NVASpeechKit getSpeechKit() {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView != null && mmWebView.allowRecordingCommands()) {
            return getSpeechKitInternal();
        }
        return null;
    }
    
    static NVASpeechKit getSpeechKitInternal() {
        return getInstance().getSpeechKit();
    }
    
    private NVASpeechKit getSpeechKitRelease() {
        return getSpeechKitInternal();
    }
    
    static boolean releaseSpeechKit() {
        return getInstance().release();
    }
    
    static void setSpeechKit(final NVASpeechKit speechKit) {
        getInstance().release();
        getInstance().setSpeechKit(speechKit);
    }
    
    public MMJSResponse addCustomVoiceWords(final HashMap<String, String> hashMap) {
        final NVASpeechKit createSpeechKit = this.getCreateSpeechKit();
        if (createSpeechKit == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        final String str = hashMap.get("words");
        if (!TextUtils.isEmpty((CharSequence)str)) {
            createSpeechKit.updateCustomWords(NVASpeechKit.CustomWordsOp.Add, str.split(","));
            this.injectJavascript("javascript:MMJS.sdk.customVoiceWordsAdded()");
            return MMJSResponse.responseWithSuccess("Added " + str);
        }
        return null;
    }
    
    public MMJSResponse cacheAudio(final HashMap<String, String> hashMap) {
        final String s = hashMap.get("url");
        if (!URLUtil.isValidUrl(s)) {
            return MMJSResponse.responseWithError("Invalid url");
        }
        if (this.contextRef != null) {
            final Context context = this.contextRef.get();
            if (context != null && AdCache.downloadComponentToCache(s, s.substring(1 + s.lastIndexOf("/")), context)) {
                this.injectJavascript("javascript:MMJS.sdk.audioCached()");
                return MMJSResponse.responseWithSuccess("Successfully cached audio at " + s);
            }
        }
        return MMJSResponse.responseWithError("Failed to cache audio at" + s);
    }
    
    public MMJSResponse deleteCustomVoiceWords(final HashMap<String, String> hashMap) {
        final NVASpeechKit createSpeechKit = this.getCreateSpeechKit();
        if (createSpeechKit == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        final String str = hashMap.get("words");
        if (!TextUtils.isEmpty((CharSequence)str)) {
            createSpeechKit.updateCustomWords(NVASpeechKit.CustomWordsOp.Remove, str.split(","));
            this.injectJavascript("javascript:MMJS.sdk.customVoiceWordsDeleted()");
            return MMJSResponse.responseWithSuccess("Deleted " + str);
        }
        return null;
    }
    
    public MMJSResponse endRecording(final HashMap<String, String> hashMap) {
        final NVASpeechKit speechKit = this.getSpeechKit();
        if (speechKit == null) {
            return MMJSResponse.responseWithError("Unable to get speech kit");
        }
        synchronized (speechKit) {
            if (speechKit.endRecording()) {
                return MMJSResponse.responseWithSuccess();
            }
        }
        // monitorexit(speechKit)
        return MMJSResponse.responseWithError("Failed in speechKit");
    }
    
    public MMJSResponse getSessionId(final HashMap<String, String> hashMap) {
        final NVASpeechKit speechKit = this.getSpeechKit();
        if (speechKit == null) {
            return MMJSResponse.responseWithError("No SpeechKit session open.");
        }
        final String sessionId = speechKit.getSessionId();
        if (!TextUtils.isEmpty((CharSequence)sessionId)) {
            return MMJSResponse.responseWithSuccess(sessionId);
        }
        return MMJSResponse.responseWithError("No SpeechKit session open.");
    }
    
    void injectJavascript(final String s) {
        final MMWebView mmWebView = this.mmWebViewRef.get();
        if (mmWebView != null) {
            mmWebView.loadUrl(s);
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        this.injectJavascript("javascript:MMJS.sdk.audioCompleted()");
        final Context context = this.contextRef.get();
        if (context != null) {
            final BridgeMMMedia.Audio sharedAudio = BridgeMMMedia.Audio.sharedAudio(context);
            if (sharedAudio != null) {
                sharedAudio.removeCompletionListener((MediaPlayer$OnCompletionListener)this);
                sharedAudio.removePeriodicListener((BridgeMMMedia.Audio.PeriodicListener)this);
            }
        }
    }
    
    public void onUpdate(final int i) {
        this.injectJavascript("javascript:MMJS.sdk.audioPositionChange(" + i + ")");
    }
    
    public MMJSResponse playAudio(final HashMap<String, String> hashMap) {
        if (this.getCreateSpeechKit() == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        if (!URLUtil.isValidUrl((String)hashMap.get("url"))) {
            return MMJSResponse.responseWithError("Invalid url");
        }
        final BridgeMMMedia bridgeMMMedia = new BridgeMMMedia();
        if (this.contextRef != null) {
            bridgeMMMedia.setContext(this.contextRef.get());
            final String value = hashMap.get("url");
            if (!TextUtils.isEmpty((CharSequence)value)) {
                final Context context = this.contextRef.get();
                if (context != null) {
                    final BridgeMMMedia.Audio sharedAudio = BridgeMMMedia.Audio.sharedAudio(context);
                    if (sharedAudio != null) {
                        sharedAudio.addCompletionListener((MediaPlayer$OnCompletionListener)this);
                        sharedAudio.addPeriodicListener((BridgeMMMedia.Audio.PeriodicListener)this);
                    }
                    hashMap.put("path", value);
                    final MMJSResponse playAudio = bridgeMMMedia.playAudio(hashMap);
                    if (playAudio != null && playAudio.result == 1) {
                        this.injectJavascript("javascript:MMJS.sdk.audioStarted()");
                    }
                    return playAudio;
                }
            }
        }
        return null;
    }
    
    public MMJSResponse releaseVoice(final HashMap<String, String> hashMap) {
        if (releaseSpeechKit()) {
            return MMJSResponse.responseWithError("Unable to get speech kit");
        }
        return MMJSResponse.responseWithSuccess("released speechkit");
    }
    
    public MMJSResponse sampleBackgroundAudioLevel(final HashMap<String, String> hashMap) {
        final NVASpeechKit createSpeechKit = this.getCreateSpeechKit();
        if (createSpeechKit == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        createSpeechKit.startSampleRecording();
        return null;
    }
    
    public MMJSResponse startRecording(final HashMap<String, String> hashMap) {
        final NVASpeechKit createSpeechKit = this.getCreateSpeechKit();
        if (createSpeechKit == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        String s = hashMap.get("language");
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = "en_GB";
        }
        if (createSpeechKit.startRecording(s)) {
            return MMJSResponse.responseWithSuccess();
        }
        return MMJSResponse.responseWithError("Failed in speechKit");
    }
    
    public MMJSResponse stopAudio(final HashMap<String, String> hashMap) {
        final NVASpeechKit speechKit = this.getSpeechKit();
        if (speechKit == null) {
            return MMJSResponse.responseWithError("Unable to get speech kit");
        }
        speechKit.stopActions();
        final BridgeMMMedia bridgeMMMedia = new BridgeMMMedia();
        if (this.contextRef != null) {
            bridgeMMMedia.setContext(this.contextRef.get());
            return bridgeMMMedia.stopAudio(hashMap);
        }
        return MMJSResponse.responseWithSuccess();
    }
    
    public MMJSResponse textToSpeech(final HashMap<String, String> hashMap) {
        MMSDK.Log.d("@@-Calling textToSpeech");
        final NVASpeechKit createSpeechKit = this.getCreateSpeechKit();
        if (createSpeechKit == null) {
            return MMJSResponse.responseWithError("Unable to create speech kit");
        }
        String s = hashMap.get("language");
        final String s2 = hashMap.get("text");
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = "en_GB";
        }
        createSpeechKit.stopActions();
        if (createSpeechKit.textToSpeech(s2, s)) {
            return MMJSResponse.responseWithSuccess();
        }
        return MMJSResponse.responseWithError("Failed in speechKit");
    }
    
    private static class SingletonHolder
    {
        public static final SpeechKitHolder INSTANCE;
        
        static {
            INSTANCE = new SpeechKitHolder();
        }
    }
    
    private static class SpeechKitHolder
    {
        private NVASpeechKit _speechKit;
        
        public NVASpeechKit getSpeechKit() {
            return this._speechKit;
        }
        
        public boolean release() {
            if (this._speechKit == null) {
                return false;
            }
            Utils.ThreadUtils.execute(new Runnable() {
                @Override
                public void run() {
                    synchronized (SpeechKitHolder.this) {
                        if (SpeechKitHolder.this._speechKit != null) {
                            SpeechKitHolder.this._speechKit.cancelRecording();
                            SpeechKitHolder.this._speechKit.release();
                            SpeechKitHolder.this._speechKit = null;
                        }
                    }
                }
            });
            return true;
        }
        
        public void setSpeechKit(final NVASpeechKit speechKit) {
            this._speechKit = speechKit;
        }
    }
}
