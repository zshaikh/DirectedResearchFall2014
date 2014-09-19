package com.fusepowered.m1.android;

import java.lang.ref.*;
import com.nuance.nmdp.speechkit.recognitionresult.*;
import android.content.*;
import java.util.*;
import org.json.*;
import android.provider.*;
import java.security.*;
import com.nuance.nmdp.speechkit.*;
import android.os.*;
import com.nuance.nmdp.speechkit.util.pdx.*;
import android.text.*;
import com.nuance.nmdp.speechkit.util.dataupload.*;

public class NVASpeechKit
{
    static final float AUDIO_LEVEL_CHANGE_INTERVAL = 0.25f;
    static final float AUDIO_LEVEL_MAX = 90.0f;
    private static final int AUDIO_LEVEL_UPDATE_FREQUENCY = 50;
    private static final int AUDIO_SAMPLE_PERIOD = 2000;
    static final float SAMPLING_BG_INTERVAL = 0.1f;
    private static String nuanceIdCache;
    HandShake.NuanceCredentials _credentials;
    public Result[] _results;
    private Runnable audioLevelCallback;
    private AudioLevelTracker audioLevelTracker;
    private Runnable audioSampleCallback;
    private GenericCommand$Listener commandListener;
    private DataUploadCommand$Listener dataUploadListener;
    private String nuance_transaction_session_id;
    private String packageName;
    private DataUploadCommand pendingDataUploadCommand;
    private CustomWordsOp pendingDataUploadCommandType;
    private SpeechKit sk;
    private Recognizer skCurrentRecognizer;
    private Vocalizer skCurrentVocalizer;
    private Recognizer$Listener skRecogListener;
    private Vocalizer$Listener skVocalListener;
    private Listener speechKitListener;
    private Handler speeckKitHandler;
    private State state;
    private WeakReference<MMWebView> webViewRef;
    
    static {
        NVASpeechKit.nuanceIdCache = null;
    }
    
    public NVASpeechKit(final MMWebView referent) {
        super();
        this._results = null;
        this.audioLevelTracker = new AudioLevelTracker();
        this.audioSampleCallback = new Runnable() {
            @Override
            public void run() {
                NVASpeechKit.this.endRecording();
            }
        };
        this.audioLevelCallback = new Runnable() {
            @Override
            public void run() {
                if (NVASpeechKit.this.skCurrentRecognizer != null) {
                    final double access$100 = normalize(NVASpeechKit.this.skCurrentRecognizer.getAudioLevel());
                    MMSDK.Log.d("audiolevel changed: level=" + access$100);
                    if (NVASpeechKit.this.audioLevelTracker.update(access$100) && NVASpeechKit.this.speechKitListener != null) {
                        NVASpeechKit.this.speechKitListener.onAudioLevelUpdate(access$100);
                    }
                    if (NVASpeechKit.this.state == State.RECORDING || NVASpeechKit.this.audioLevelTracker.isTrackingAudioSample) {
                        NVASpeechKit.this.speeckKitHandler.postDelayed(NVASpeechKit.this.audioLevelCallback, 50L);
                    }
                }
            }
        };
        this.commandListener = (GenericCommand$Listener)new GenericCommand$Listener() {
            public void onComplete(final GenericCommand genericCommand, final GenericResult genericResult, final SpeechError speechError) {
                if (speechError != null) {
                    MMSDK.Log.e("GenericCommand listener. Error: " + speechError.getErrorDetail());
                }
                else {
                    MMSDK.Log.d("GenericCommand listener. Success: " + genericResult.getQueryResult());
                }
                NVASpeechKit.this.notifySpeechResults();
            }
        };
        this.dataUploadListener = (DataUploadCommand$Listener)new DataUploadCommand$Listener() {
            private void notifyListener(final DataUploadCommand dataUploadCommand) {
                if (NVASpeechKit.this.speechKitListener != null && NVASpeechKit.this.pendingDataUploadCommand == dataUploadCommand) {
                    if (NVASpeechKit.this.pendingDataUploadCommandType == CustomWordsOp.Add) {
                        NVASpeechKit.this.speechKitListener.onCustomWordsAdded();
                    }
                    else {
                        NVASpeechKit.this.speechKitListener.onCustomWordsDeleted();
                    }
                }
                NVASpeechKit.this.pendingDataUploadCommand = null;
            }
            
            public void onError(final DataUploadCommand dataUploadCommand, final SpeechError speechError) {
                MMSDK.Log.e("DataUploadCommand listener error. command:" + dataUploadCommand.toString() + " Error:" + speechError.getErrorDetail());
                this.notifyListener(dataUploadCommand);
            }
            
            public void onResults(final DataUploadCommand dataUploadCommand, final DataUploadResult dataUploadResult) {
                MMSDK.Log.d("DataUploadCommand listener successful command:" + dataUploadCommand.toString() + " isVocRegenerated:" + dataUploadResult.isVocRegenerated() + " results:" + dataUploadResult.toString());
                this.notifyListener(dataUploadCommand);
            }
        };
        this.speechKitListener = (Listener)new Listener() {
            @Override
            public void onAudioLevelUpdate(final double n) {
                NVASpeechKit.this.audioLevelChange(n);
            }
            
            @Override
            public void onAudioSampleUpdate(final double n) {
                NVASpeechKit.this.backgroundAudioLevel(n);
            }
            
            @Override
            public void onCustomWordsAdded() {
            }
            
            @Override
            public void onCustomWordsDeleted() {
            }
            
            @Override
            public void onError() {
            }
            
            @Override
            public void onResults() {
                NVASpeechKit.this.recognitionResult(NVASpeechKit.this.resultsToJSON(NVASpeechKit.this.getResults()).toString());
            }
            
            @Override
            public void onStateChange(final State state) {
                switch (state) {
                    default: {}
                    case ERROR: {
                        NVASpeechKit.this.voiceStateChangeError();
                    }
                    case PROCESSING: {
                        NVASpeechKit.this.voiceStateChangeProcessing();
                    }
                    case READY: {
                        NVASpeechKit.this.voiceStateChangeReady();
                    }
                    case RECORDING: {
                        NVASpeechKit.this.voiceStateChangeRecording();
                    }
                    case VOCALIZING: {
                        NVASpeechKit.this.voiceStateChangeVocalizing();
                    }
                }
            }
        };
        if (referent != null) {
            this.webViewRef = new WeakReference<MMWebView>(referent);
            this.initInternalData(referent.getContext().getApplicationContext());
        }
        this.state = State.READY;
    }
    
    private String byte2Str(final byte[] array) {
        if (array == null) {
            return null;
        }
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < array.length; ++i) {
            final int j = 0xFF & array[i];
            final String hexString = Integer.toHexString(j);
            if (j < 16) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }
    
    private void cancelAudioLevelCallbacks() {
        if (this.speeckKitHandler != null) {
            this.speeckKitHandler.removeCallbacks(this.audioSampleCallback);
            this.speeckKitHandler.removeCallbacks(this.audioLevelCallback);
        }
    }
    
    private Recognizer$Listener createRecognizerListener() {
        return (Recognizer$Listener)new Recognizer$Listener() {
            public void onError(final Recognizer recognizer, final SpeechError speechError) {
                MMSDK.Log.d("Speech Kit Error code:" + speechError.getErrorCode() + " detail:" + speechError.getErrorDetail() + " suggestions:" + speechError.getSuggestion());
                NVASpeechKit.this.cancelAudioLevelCallbacks();
                NVASpeechKit.this.handleSpeechError(speechError);
                NVASpeechKit.this.skCurrentRecognizer = null;
                if (NVASpeechKit.this.sk != null) {
                    MMSDK.Log.d("Recognizer.Listener.onError: session id [" + NVASpeechKit.this.sk.getSessionId() + "]");
                }
            }
            
            public void onRecordingBegin(final Recognizer recognizer) {
                MMSDK.Log.d("recording begins");
                NVASpeechKit.this._results = null;
                if (!NVASpeechKit.this.audioLevelTracker.isTrackingAudioSample()) {
                    NVASpeechKit.this.setState(State.RECORDING);
                }
                NVASpeechKit.this.startProgress(recognizer);
                if (NVASpeechKit.this.audioLevelTracker.isTrackingAudioSample()) {
                    NVASpeechKit.this.speeckKitHandler.removeCallbacks(NVASpeechKit.this.audioSampleCallback);
                    NVASpeechKit.this.speeckKitHandler.postDelayed(NVASpeechKit.this.audioSampleCallback, 2000L);
                }
            }
            
            public void onRecordingDone(final Recognizer recognizer) {
                MMSDK.Log.d("recording has ended");
                NVASpeechKit.this.cancelAudioLevelCallbacks();
                if (!NVASpeechKit.this.audioLevelTracker.isTrackingAudioSample()) {
                    NVASpeechKit.this.setState(State.PROCESSING);
                }
                if (NVASpeechKit.this.sk != null) {
                    NVASpeechKit.this.nuance_transaction_session_id = NVASpeechKit.this.sk.getSessionId();
                }
            }
            
            public void onResults(final Recognizer recognizer, final Recognition recognition) {
                MMSDK.Log.d("recording results returned.");
                NVASpeechKit.this.cancelAudioLevelCallbacks();
                if (!NVASpeechKit.this.audioLevelTracker.isTrackingAudioSample) {
                    NVASpeechKit.this.processResults(recognition.getDetailedResults());
                    if (NVASpeechKit.this.nuance_transaction_session_id != null) {
                        MMSDK.Log.d("Recognizer.Listener.onResults: session id [" + NVASpeechKit.this.nuance_transaction_session_id + "]");
                    }
                    NVASpeechKit.this.logEvent();
                    return;
                }
                NVASpeechKit.this._results = new Result[0];
                NVASpeechKit.this.notifySpeechResults();
            }
        };
    }
    
    private Vocalizer$Listener createVocalizerListener() {
        return (Vocalizer$Listener)new Vocalizer$Listener() {
            public void onSpeakingBegin(final Vocalizer vocalizer, final String str, final Object o) {
                MMSDK.Log.d("Vocalization begins. text=" + str);
                NVASpeechKit.this.setState(State.VOCALIZING);
            }
            
            public void onSpeakingDone(final Vocalizer vocalizer, final String s, final SpeechError speechError, final Object o) {
                MMSDK.Log.d("Vocalization has ended.");
                if (speechError != null) {
                    MMSDK.Log.e("Vocalizer error: " + speechError.getErrorDetail());
                    NVASpeechKit.this.handleSpeechError(speechError);
                    return;
                }
                NVASpeechKit.this.setState(State.READY);
            }
        };
    }
    
    private String getAdId() {
        if (this.webViewRef != null) {
            final MMWebView mmWebView = this.webViewRef.get();
            if (mmWebView != null) {
                return mmWebView.getAdId();
            }
        }
        return "DEFAULT_AD_ID";
    }
    
    private MMWebView getMMWebView() {
        if (this.webViewRef != null) {
            return this.webViewRef.get();
        }
        return null;
    }
    
    private String getSpeechError(final SpeechError speechError) {
        if (speechError == null) {
            return "No Error given";
        }
        return "Speech Kit Error code:" + speechError.getErrorCode() + " detail:" + speechError.getErrorDetail() + " suggestions:" + speechError.getSuggestion();
    }
    
    private void handleSpeechError(final SpeechError speechError) {
        switch (speechError.getErrorCode()) {
            default: {
                if (this.speechKitListener != null) {
                    this.speechKitListener.onError();
                    this.setState(State.ERROR);
                    this.voiceError(this.getSpeechError(speechError));
                }
            }
            case 2: {
                if (!this.audioLevelTracker.isTrackingAudioSample) {
                    this.setState(State.PROCESSING);
                }
                this._results = new Result[0];
                this.notifySpeechResults();
            }
            case 5: {
                this.setState(State.READY);
                this.skCurrentRecognizer = null;
            }
        }
    }
    
    private void initInternalData(final Context context) {
        if (this.packageName == null) {
            this.packageName = context.getApplicationContext().getPackageName();
        }
    }
    
    private void notifySpeechResults() {
        if (this.speechKitListener != null && this._results != null) {
            if (this.audioLevelTracker.isTrackingAudioSample) {
                this.speechKitListener.onAudioSampleUpdate(this.audioLevelTracker.averageLevel);
                this.audioLevelTracker.reset();
            }
            else {
                this.speechKitListener.onResults();
            }
        }
        this.setState(State.READY);
        this.skCurrentRecognizer = null;
    }
    
    private void processResults(final List<DetailedResult> list) {
        MMSDK.Log.d("processResults called.");
        this._results = new Result[list.size()];
        int n = 0;
        for (final DetailedResult detailedResult : list) {
            final Result[] results = this._results;
            final int n2 = n + 1;
            results[n] = new Result(detailedResult.toString(), detailedResult.getConfidenceScore());
            n = n2;
        }
    }
    
    private void releaseWebView() {
        if (this.getMMWebView() != null) {
            this.webViewRef.clear();
        }
    }
    
    private JSONArray resultsToJSON(final Result[] array) {
        final JSONArray jsonArray = new JSONArray();
        int i = 0;
        while (i < array.length) {
            final JSONObject jsonObject = new JSONObject();
            try {
                jsonObject.put("score", (Object)("" + array[i].getResultScore()));
                jsonObject.put("result", (Object)array[i].getResultString());
                jsonArray.put((Object)jsonObject);
                ++i;
                continue;
            }
            catch (JSONException ex) {
                MMSDK.Log.d("JSON creation error.");
                ex.printStackTrace();
                return null;
            }
            break;
        }
        return jsonArray;
    }
    
    private void setState(final State state) {
        synchronized (this) {
            MMSDK.Log.d("recording results returned. state=" + state);
            final State state2 = this.state;
            this.state = state;
            if (this.speechKitListener != null && this.state != state2) {
                this.speechKitListener.onStateChange(state);
            }
        }
    }
    
    private void startProgress(final Recognizer recognizer) {
        this.speeckKitHandler.removeCallbacks(this.audioLevelCallback);
        this.speeckKitHandler.postDelayed(this.audioLevelCallback, 50L);
    }
    
    private byte[] string2Byte(final String s) {
        if (s == null) {
            return null;
        }
        final byte[] array = new byte[s.length() / 2];
        for (int i = 0; i < array.length; ++i) {
            array[i] = (byte)Integer.parseInt(s.substring(i * 2, 2 + i * 2), 16);
        }
        return array;
    }
    
    void audioLevelChange(final double d) {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.audioLevelChange(" + d + ")");
        }
    }
    
    void backgroundAudioLevel(final double d) {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.backgroundAudioLevel(" + d + ")");
        }
    }
    
    public void cancelRecording() {
        if (this.skCurrentRecognizer != null) {
            MMSDK.Log.d("cancel RECORDING");
            this.skCurrentRecognizer.cancel();
            this.skCurrentRecognizer = null;
            this.setState(State.READY);
        }
    }
    
    public boolean endRecording() {
        if (this.skCurrentRecognizer != null) {
            MMSDK.Log.d("end RECORDING");
            this.skCurrentRecognizer.stopRecording();
            this.skCurrentRecognizer = null;
            return true;
        }
        return false;
    }
    
    String getNuanceId() {
        while (true) {
            while (true) {
                Context context = null;
                Label_0132: {
                    synchronized (this) {
                        if (NVASpeechKit.nuanceIdCache != null) {
                            return NVASpeechKit.nuanceIdCache;
                        }
                        final WeakReference<MMWebView> webViewRef = this.webViewRef;
                        context = null;
                        if (webViewRef == null) {
                            break Label_0132;
                        }
                        final MMWebView mmWebView = this.webViewRef.get();
                        context = null;
                        if (mmWebView != null) {
                            context = mmWebView.getContext();
                        }
                        break Label_0132;
                        final String string = Settings$Secure.getString(context.getContentResolver(), "android_id");
                        // iftrue(Label_0080:, string != null)
                        return null;
                        try {
                            Label_0080: {
                                nuanceIdCache = (NVASpeechKit.nuanceIdCache = MMSDK.byteArrayToString(MessageDigest.getInstance("SHA1").digest(string.getBytes())));
                            }
                        }
                        catch (Exception ex) {
                            MMSDK.Log.v(ex.getMessage());
                            nuanceIdCache = null;
                        }
                        return nuanceIdCache;
                    }
                }
                if (context == null) {
                    return null;
                }
                continue;
            }
        }
    }
    
    public Result[] getResults() {
        return this._results;
    }
    
    String getSessionId() {
        if (this.sk != null) {
            return this.sk.getSessionId();
        }
        return "";
    }
    
    public State getState() {
        synchronized (this) {
            return this.state;
        }
    }
    
    public boolean initialize(final HandShake.NuanceCredentials credentials, final Context context) {
        MMSDK.Log.d("initialize called.");
        if (credentials == null || context == null) {
            return false;
        }
        this._credentials = credentials;
        while (true) {
            if (this.sk != null) {
                try {
                    this.sk.connect();
                    if (this.sk == null) {
                        final byte[] string2Byte = this.string2Byte(credentials.appKey);
                        MMSDK.Log.d(credentials.toString());
                        this.sk = SpeechKit.initialize(context, "1.0", credentials.appID, credentials.server, credentials.port, false, string2Byte, SpeechKit$CmdSetType.NVC);
                        this.skVocalListener = this.createVocalizerListener();
                        this.skRecogListener = this.createRecognizerListener();
                        this.speeckKitHandler = new Handler(Looper.getMainLooper());
                        this.sk.connect();
                        this.setState(State.READY);
                        return true;
                    }
                }
                catch (IllegalStateException ex) {
                    this.sk = null;
                    continue;
                }
                MMSDK.Log.d("Already initialized. Skipping.");
                return false;
            }
            continue;
        }
    }
    
    public void logEvent() {
        if (this.sk == null) {
            return;
        }
        final PdxValue$Dictionary pdxValue$Dictionary = new PdxValue$Dictionary();
        pdxValue$Dictionary.put("nva_ad_network_id", "MillenialMedia");
        pdxValue$Dictionary.put("nva_device_id", this.getNuanceId());
        pdxValue$Dictionary.put("nva_ad_publisher_id", this.packageName);
        String sessionID = "";
        if (this._credentials != null && !TextUtils.isEmpty((CharSequence)this._credentials.sessionID)) {
            sessionID = this._credentials.sessionID;
            pdxValue$Dictionary.put("nva_ad_session_id", this._credentials.sessionID);
        }
        final String adId = this.getAdId();
        if (!TextUtils.isEmpty((CharSequence)adId)) {
            pdxValue$Dictionary.put("nva_ad_id", adId);
        }
        if (this.nuance_transaction_session_id != null) {
            pdxValue$Dictionary.put("nva_nvc_session_id", this.nuance_transaction_session_id);
            final String nuance_transaction_session_id = this.nuance_transaction_session_id;
            this.nuance_transaction_session_id = null;
        }
        else {
            this.sk.getSessionId();
        }
        MMSDK.Log.d("Sending log revision command to server. sessionId[" + this.sk.getSessionId() + "] deviceId[" + this.getNuanceId() + "] adId[" + adId + "] mmSessionId[" + sessionID + "]");
        this.sk.createLogRevisionCmd("NVA_LOG_EVENT", pdxValue$Dictionary, this.sk.getSessionId(), this.commandListener, this.speeckKitHandler).start();
    }
    
    void recognitionResult(final String str) {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.recognitionResult(" + str + ")");
        }
    }
    
    public void release() {
        MMSDK.Log.d("release called.");
        this.stopActions();
        this.cancelAudioLevelCallbacks();
        if (this.sk != null) {
            this.sk.release();
            this.setState(State.READY);
            this.sk = null;
        }
        this.pendingDataUploadCommand = null;
        this.releaseWebView();
    }
    
    public void setSpeechKitListener(final Listener speechKitListener) {
        this.speechKitListener = speechKitListener;
    }
    
    public boolean startRecording(final String s) {
        MMSDK.Log.d("RECORDING INVOKED.");
        if (this.state == State.READY && this.sk != null) {
            this.nuance_transaction_session_id = null;
            this.skCurrentRecognizer = this.sk.createRecognizer("dictation", 1, s, this.skRecogListener, this.speeckKitHandler);
            MMSDK.Log.d("START RECORDING");
            this.skCurrentRecognizer.start();
            return true;
        }
        return false;
    }
    
    public void startSampleRecording() {
        this.audioLevelTracker.startTrackingAudioSample();
        this.startRecording("en_US");
    }
    
    public void stopActions() {
        if (this.sk == null) {
            return;
        }
        try {
            this.sk.cancelCurrent();
        }
        catch (Exception ex) {
            MMSDK.Log.e("No speech kit to disconnect.", ex);
        }
    }
    
    public boolean textToSpeech(final String s, final String s2) {
        MMSDK.Log.d("TTS INVOKED.");
        if (this.state == State.READY && this.sk != null) {
            (this.skCurrentVocalizer = this.sk.createVocalizerWithLanguage(s2, this.skVocalListener, this.speeckKitHandler)).speakString(s, (Object)this);
            return true;
        }
        return false;
    }
    
    public void updateCustomWords(final CustomWordsOp pendingDataUploadCommandType, final String[] array) {
        if (this.sk == null) {
            return;
        }
        final DataBlock dataBlock = new DataBlock();
        final StringBuilder append = new StringBuilder().append("Creating dataupload command and ");
        String str;
        if (pendingDataUploadCommandType == CustomWordsOp.Add) {
            str = "adding";
        }
        else {
            str = "deleting";
        }
        MMSDK.Log.d(append.append(str).append(" words.").toString());
        final Data data = new Data("nva_custom_word_uploads", Data$DataType.CUSTOMWORDS);
        Action$ActionType action$ActionType;
        if (pendingDataUploadCommandType == CustomWordsOp.Add) {
            action$ActionType = Action$ActionType.ADD;
        }
        else {
            action$ActionType = Action$ActionType.REMOVE;
        }
        final Action action = new Action(action$ActionType);
        for (final String str2 : array) {
            action.addWord(str2);
            MMSDK.Log.d("\tword: '" + str2 + "'");
        }
        data.addAction(action);
        dataBlock.addData(data);
        final int checksum = dataBlock.getChecksum();
        this.pendingDataUploadCommandType = pendingDataUploadCommandType;
        (this.pendingDataUploadCommand = this.sk.createDataUploadCmd(dataBlock, checksum, checksum, this.dataUploadListener, this.speeckKitHandler)).start();
    }
    
    void voiceError(final String str) {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceError('" + str + "')");
        }
    }
    
    void voiceStateChangeError() {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceStateChange('error')");
        }
    }
    
    void voiceStateChangeProcessing() {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceStateChange('processing')");
        }
    }
    
    void voiceStateChangeReady() {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceStateChange('ready')");
        }
    }
    
    void voiceStateChangeRecording() {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceStateChange('recording')");
        }
    }
    
    void voiceStateChangeVocalizing() {
        final MMWebView mmWebView = this.getMMWebView();
        if (mmWebView != null) {
            mmWebView.loadUrl("javascript:MMJS.sdk.voiceStateChange('vocalizing')");
        }
    }
    
    static class AudioLevelTracker
    {
        private static final double MAX = 80.0;
        private static final double MIN = 40.0;
        private static final double NORMALIZE_FACTOR = 4.004004004004004;
        private static final double SCALE = 9.99;
        double audioLevel;
        int audioLevelCount;
        double averageLevel;
        boolean isTrackingAudioSample;
        
        public AudioLevelTracker() {
            super();
            this.reset();
        }
        
        private static double normalize(final double n) {
            return Math.min(9.99, Math.max(Math.floor(n - 40.0) / 4.004004004004004, 0.0));
        }
        
        public boolean isTrackingAudioSample() {
            return this.isTrackingAudioSample;
        }
        
        public void reset() {
            this.averageLevel = 0.0;
            this.audioLevelCount = 0;
            this.isTrackingAudioSample = false;
        }
        
        public void startTrackingAudioSample() {
            this.reset();
            this.isTrackingAudioSample = true;
        }
        
        public boolean update(final double audioLevel) {
            final double averageLevel = this.averageLevel;
            final double audioLevel2 = this.audioLevel;
            this.audioLevel = audioLevel;
            ++this.audioLevelCount;
            this.averageLevel = (audioLevel + averageLevel * (this.audioLevelCount - 1)) / this.audioLevelCount;
            return !this.isTrackingAudioSample && this.audioLevel != audioLevel2;
        }
    }
    
    public enum CustomWordsOp
    {
        Add, 
        Remove;
    }
    
    public interface Listener
    {
        void onAudioLevelUpdate(double p0);
        
        void onAudioSampleUpdate(double p0);
        
        void onCustomWordsAdded();
        
        void onCustomWordsDeleted();
        
        void onError();
        
        void onResults();
        
        void onStateChange(State p0);
    }
    
    public class Result
    {
        public final int resultScore;
        public final String resultString;
        
        public Result(final String resultString, final double n) {
            super();
            this.resultString = resultString;
            this.resultScore = (int)n;
        }
        
        public int getResultScore() {
            return this.resultScore;
        }
        
        public String getResultString() {
            return this.resultString;
        }
    }
    
    public enum State
    {
        ERROR("error"), 
        PROCESSING("processing"), 
        READY("ready"), 
        RECORDING("recording"), 
        VOCALIZING("vocalizing");
        
        private String name;
        
        private State(final String name2) {
            this.name = name2;
        }
        
        @Override
        public String toString() {
            return this.name;
        }
    }
}
