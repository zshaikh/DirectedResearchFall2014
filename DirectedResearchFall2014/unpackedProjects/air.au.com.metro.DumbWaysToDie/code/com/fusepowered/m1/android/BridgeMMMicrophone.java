package com.fusepowered.m1.android;

import java.util.*;
import java.lang.ref.*;
import android.content.*;
import android.text.*;
import android.media.*;
import java.io.*;

public class BridgeMMMicrophone extends MMJSObject
{
    private void delayedEnd(final String s) {
        try {
            MMSDK.runOnUiThreadDelayed(new Runnable() {
                @Override
                public void run() {
                    BridgeMMMicrophone.this.stopRecording(null);
                }
            }, 1000 * Integer.parseInt(s));
        }
        catch (NumberFormatException ex) {}
    }
    
    private Recorder initRecorder() {
        final WeakReference<MMWebView> mmWebViewRef = this.mmWebViewRef;
        Recorder instance = null;
        if (mmWebViewRef != null) {
            final MMWebView mmWebView = this.mmWebViewRef.get();
            instance = null;
            if (mmWebView != null) {
                final boolean allowMicrophoneCreationCommands = mmWebView.allowMicrophoneCreationCommands();
                instance = null;
                if (allowMicrophoneCreationCommands) {
                    instance = Recorder.getInstance();
                    instance.addCallBack(mmWebView);
                }
            }
        }
        return instance;
    }
    
    public MMJSResponse isRecordingAllowed(final HashMap<String, String> hashMap) {
        final WeakReference<Context> contextRef = this.contextRef;
        Context context = null;
        if (contextRef != null) {
            context = this.contextRef.get();
        }
        if (MMSDK.hasVoiceAbility(context).equals("true")) {
            return MMJSResponse.responseWithSuccess("Has Microphone / Ready to use");
        }
        return MMJSResponse.responseWithError("No voice ability");
    }
    
    public MMJSResponse startRecording(final HashMap<String, String> hashMap) {
        final Recorder initRecorder = this.initRecorder();
        if (initRecorder == null) {
            return MMJSResponse.responseWithError("Unable to create Microphone Recorder");
        }
        String path = hashMap.get("path");
        if (!TextUtils.isEmpty((CharSequence)path) && this.contextRef != null) {
            final File cacheDirectory = AdCache.getCacheDirectory(this.contextRef.get());
            if (cacheDirectory != null) {
                final File file = new File(cacheDirectory, path);
                if (file != null) {
                    path = file.getPath();
                }
            }
        }
        if (!TextUtils.isEmpty((CharSequence)hashMap.get("duration"))) {
            this.delayedEnd("9");
        }
        final String s = hashMap.get("callbackRate");
        int n = 100;
        while (true) {
            if (TextUtils.isEmpty((CharSequence)s)) {
                break Label_0141;
            }
            try {
                n = (int)(Float.parseFloat(s) * 1000.0f);
                initRecorder.startRecording(path, n);
                return MMJSResponse.responseWithSuccess("recording");
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    public MMJSResponse stopRecording(final HashMap<String, String> hashMap) {
        final Recorder initRecorder = this.initRecorder();
        if (initRecorder == null) {
            return MMJSResponse.responseWithError("Unable to create Microphone Recorder");
        }
        initRecorder.stopRecording();
        return MMJSResponse.responseWithSuccess("stopped recording");
    }
    
    static class Recorder
    {
        State _state;
        AudioRunnable audioRunnable;
        private MediaRecorder mRecorder;
        private WeakReference<MMWebView> webViewRef;
        
        private Recorder() {
            super();
            this.mRecorder = null;
            this._state = State.READY;
        }
        
        private double getAudioLevel() {
            if (this.mRecorder != null) {
                return 9 * this.mRecorder.getMaxAmplitude() / 32767.0;
            }
            return 0.0;
        }
        
        public static Recorder getInstance() {
            return SingletonHolder.INSTANCE;
        }
        
        private void startRecording(final String outputFile, final int n) {
            synchronized (this) {
                if (this.mRecorder == null) {
                    this.mRecorder = new MediaRecorder();
                }
                this.stopRecording();
                this.mRecorder.setAudioSource(1);
                this.mRecorder.setOutputFormat(1);
                if (!TextUtils.isEmpty((CharSequence)outputFile)) {
                    this.mRecorder.setOutputFile(outputFile);
                }
                this.mRecorder.setAudioEncoder(1);
                try {
                    this.mRecorder.prepare();
                    this.mRecorder.start();
                    this.mRecorder.getMaxAmplitude();
                    if (this.webViewRef != null) {
                        final MMWebView mmWebView = this.webViewRef.get();
                        if (mmWebView != null) {
                            this._state = State.RECORDING;
                            mmWebView.setmicrophoneStateChange(State.RECORDING.getState());
                            if (n > 0) {
                                if (this.audioRunnable != null) {
                                    this.audioRunnable.cancel();
                                }
                                mmWebView.postDelayed((Runnable)(this.audioRunnable = new AudioRunnable(n)), (long)n);
                            }
                        }
                    }
                }
                catch (IOException ex) {
                    MMSDK.Log.e("prepare() failed");
                }
            }
        }
        
        void addCallBack(final MMWebView referent) {
            synchronized (this) {
                this.webViewRef = new WeakReference<MMWebView>(referent);
            }
        }
        
        void stopRecording() {
            synchronized (this) {
                Label_0025: {
                    if (this.mRecorder == null) {
                        break Label_0025;
                    }
                    try {
                        this.mRecorder.stop();
                        this.mRecorder.reset();
                        if (this.audioRunnable != null) {
                            this.audioRunnable.cancel();
                        }
                        if (this.webViewRef != null) {
                            final MMWebView mmWebView = this.webViewRef.get();
                            if (mmWebView != null) {
                                this._state = State.READY;
                                mmWebView.setmicrophoneStateChange(State.READY.getState());
                            }
                        }
                    }
                    catch (Exception ex) {
                        MMSDK.Log.w("Exception: " + ex.getMessage());
                    }
                }
            }
        }
        
        private class AudioRunnable implements Runnable
        {
            private int _callbackRate;
            boolean shouldCancel;
            
            public AudioRunnable(final int callbackRate) {
                super();
                this._callbackRate = callbackRate;
            }
            
            void cancel() {
                this.shouldCancel = true;
            }
            
            @Override
            public void run() {
                if (Recorder.this._state.equals(State.RECORDING) && !this.shouldCancel) {
                    final MMWebView mmWebView = (MMWebView)Recorder.this.webViewRef.get();
                    if (mmWebView != null) {
                        mmWebView.setmicrophoneAudioLevelChange(Recorder.this.getAudioLevel());
                    }
                    mmWebView.postDelayed((Runnable)this, (long)this._callbackRate);
                }
            }
        }
        
        private static class SingletonHolder
        {
            public static final Recorder INSTANCE;
            
            static {
                INSTANCE = new Recorder();
            }
        }
        
        enum State
        {
            READY("ready"), 
            RECORDING("recording");
            
            private String _state;
            
            private State(final String state) {
                this._state = state;
            }
            
            public String getState() {
                return this._state;
            }
        }
    }
}
