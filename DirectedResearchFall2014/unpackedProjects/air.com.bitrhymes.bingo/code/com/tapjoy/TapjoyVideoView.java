package com.tapjoy;

import android.widget.*;
import android.net.*;
import android.graphics.*;
import java.util.*;
import android.media.*;
import android.os.*;
import android.app.*;
import android.content.*;
import android.view.*;

public class TapjoyVideoView extends Activity implements MediaPlayer$OnCompletionListener, MediaPlayer$OnErrorListener, MediaPlayer$OnPreparedListener
{
    private static final String BUNDLE_DIALOG_SHOWING = "dialog_showing";
    private static final String BUNDLE_SEEK_TIME = "seek_time";
    private static final int DIALOG_CONNECTIVITY_LOST_ID = 1;
    private static final int DIALOG_WARNING_ID = 0;
    private static final String TAG = "VideoView";
    private static boolean streamingVideo = false;
    static int textSize = 0;
    private static TapjoyVideoObject videoData;
    private static boolean videoError = false;
    private static final String videoSecondsText = " seconds";
    private static final String videoWillResumeText = "";
    private boolean allowBackKey;
    private String cancelMessage;
    private boolean clickRequestSuccess;
    private String connectivityMessage;
    Dialog dialog;
    private boolean dialogShowing;
    final Handler mHandler;
    final Runnable mUpdateResults;
    private TextView overlayText;
    private RelativeLayout relativeLayout;
    private int seekTime;
    private boolean sendClick;
    private boolean shouldDismiss;
    private ImageView tapjoyImage;
    private int timeRemaining;
    Timer timer;
    private TapjoyVideoBroadcastReceiver videoBroadcastReceiver;
    private String videoURL;
    private VideoView videoView;
    private Bitmap watermark;
    private String webviewURL;
    
    static {
        TapjoyVideoView.videoError = false;
        TapjoyVideoView.streamingVideo = false;
        TapjoyVideoView.textSize = 16;
    }
    
    public TapjoyVideoView() {
        super();
        this.videoView = null;
        this.overlayText = null;
        this.videoURL = null;
        this.webviewURL = null;
        this.cancelMessage = "Currency will not be awarded, are you sure you want to cancel the video?";
        this.connectivityMessage = "A network connection is necessary to view videos. You will be able to complete the offer and receive your reward on the next connect.";
        this.timer = null;
        this.dialogShowing = false;
        this.sendClick = false;
        this.clickRequestSuccess = false;
        this.allowBackKey = false;
        this.shouldDismiss = false;
        this.timeRemaining = 0;
        this.seekTime = 0;
        this.mHandler = new Handler();
        this.mUpdateResults = new Runnable() {
            @Override
            public void run() {
                TapjoyVideoView.this.overlayText.setText((CharSequence)("" + TapjoyVideoView.this.getRemainingVideoTime() + " seconds"));
            }
        };
    }
    
    private void finishWithResult(final boolean b) {
        final Intent intent = new Intent();
        intent.putExtra("result", b);
        intent.putExtra("result_string1", Float.toString(this.videoView.getCurrentPosition() / 1000.0f));
        intent.putExtra("result_string2", Float.toString(this.videoView.getDuration() / 1000.0f));
        intent.putExtra("callback_id", this.getIntent().getStringExtra("callback_id"));
        this.setResult(-1, intent);
        this.finish();
    }
    
    private int getRemainingVideoTime() {
        int n = (this.videoView.getDuration() - this.videoView.getCurrentPosition()) / 1000;
        if (n < 0) {
            n = 0;
        }
        return n;
    }
    
    private void initVideoView() {
        this.relativeLayout.removeAllViews();
        this.relativeLayout.setBackgroundColor(-16777216);
        if (this.videoView == null && this.overlayText == null) {
            this.tapjoyImage = new ImageView((Context)this);
            this.watermark = TapjoyVideo.getWatermarkImage();
            if (this.watermark != null) {
                this.tapjoyImage.setImageBitmap(this.watermark);
            }
            final RelativeLayout$LayoutParams layoutParams = new RelativeLayout$LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            this.tapjoyImage.setLayoutParams((ViewGroup$LayoutParams)layoutParams);
            (this.videoView = new VideoView((Context)this)).setOnCompletionListener((MediaPlayer$OnCompletionListener)this);
            this.videoView.setOnErrorListener((MediaPlayer$OnErrorListener)this);
            this.videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)this);
            if (TapjoyVideoView.streamingVideo) {
                TapjoyLog.i("VideoView", "streaming video: " + this.videoURL);
                this.videoView.setVideoURI(Uri.parse(this.videoURL));
            }
            else {
                TapjoyLog.i("VideoView", "cached video: " + this.videoURL);
                this.videoView.setVideoPath(this.videoURL);
            }
            final RelativeLayout$LayoutParams layoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
            layoutParams2.addRule(13);
            this.videoView.setLayoutParams((ViewGroup$LayoutParams)layoutParams2);
            this.timeRemaining = this.videoView.getDuration() / 1000;
            TapjoyLog.i("VideoView", "videoView.getDuration(): " + this.videoView.getDuration());
            TapjoyLog.i("VideoView", "timeRemaining: " + this.timeRemaining);
            (this.overlayText = new TextView((Context)this)).setTextSize((float)TapjoyVideoView.textSize);
            this.overlayText.setTypeface(Typeface.create("default", 1), 1);
            final RelativeLayout$LayoutParams layoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
            layoutParams3.addRule(12);
            this.overlayText.setLayoutParams((ViewGroup$LayoutParams)layoutParams3);
        }
        this.startVideo();
        this.relativeLayout.addView((View)this.videoView);
        this.relativeLayout.addView((View)this.tapjoyImage);
        this.relativeLayout.addView((View)this.overlayText);
    }
    
    private void showVideoCompletionScreen() {
        if (this.shouldDismiss) {
            this.finishWithResult(true);
            return;
        }
        final Intent intent = new Intent((Context)this, (Class)TJAdUnitView.class);
        intent.putExtra("view_type", 4);
        intent.putExtra("url", this.webviewURL);
        intent.putExtra("legacy_view", true);
        this.startActivityForResult(intent, 0);
    }
    
    private void startVideo() {
        this.videoView.requestFocus();
        if (this.dialogShowing) {
            this.videoView.seekTo(this.seekTime);
            TapjoyLog.i("VideoView", "dialog is showing -- don't start");
        }
        else {
            TapjoyLog.i("VideoView", "start");
            this.videoView.seekTo(0);
            this.videoView.start();
            TapjoyVideo.videoNotifierStart();
        }
        if (this.timer != null) {
            this.timer.cancel();
        }
        (this.timer = new Timer()).schedule(new RemainingTime(), 500L, 100L);
        this.clickRequestSuccess = false;
        if (this.sendClick) {
            new Thread(new Runnable() {
                @Override
                public void run() {
                    TapjoyLog.i("VideoView", "SENDING CLICK...");
                    final TapjoyHttpURLResponse responseFromURL = new TapjoyURLConnection().getResponseFromURL(TapjoyVideoView.videoData.clickURL);
                    if (responseFromURL.response != null && responseFromURL.response.contains("OK")) {
                        TapjoyLog.i("VideoView", "CLICK REQUEST SUCCESS!");
                        TapjoyVideoView.this.clickRequestSuccess = true;
                    }
                }
            }).start();
            this.sendClick = false;
        }
    }
    
    protected void onActivityResult(final int i, final int j, final Intent intent) {
        super.onActivityResult(i, j, intent);
        TapjoyLog.i("VideoView", "onActivityResult requestCode:" + i + ", resultCode: " + j);
        Bundle extras = null;
        if (intent != null) {
            extras = intent.getExtras();
        }
        String string;
        if (extras != null) {
            string = extras.getString("result");
        }
        else {
            string = null;
        }
        if (string == null || string.length() == 0 || string.equals("offer_wall")) {
            this.finishWithResult(true);
        }
        else if (string.equals("tjvideo")) {
            this.initVideoView();
        }
    }
    
    public void onCompletion(final MediaPlayer mediaPlayer) {
        TapjoyLog.i("VideoView", "onCompletion");
        if (this.timer != null) {
            this.timer.cancel();
        }
        this.showVideoCompletionScreen();
        if (!TapjoyVideoView.videoError) {
            TapjoyVideo.videoNotifierComplete();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    if (TapjoyVideoView.this.clickRequestSuccess) {
                        TapjoyConnectCore.getInstance().actionComplete(TapjoyVideoView.videoData.offerID);
                    }
                }
            }).start();
        }
        TapjoyVideoView.videoError = false;
        this.allowBackKey = true;
    }
    
    protected void onCreate(final Bundle bundle) {
        TapjoyLog.i("VideoView", "onCreate");
        super.onCreate(bundle);
        TapjoyConnectCore.viewWillOpen(3);
        if (bundle != null) {
            TapjoyLog.i("VideoView", "*** Loading saved data from bundle ***");
            this.seekTime = bundle.getInt("seek_time");
            this.dialogShowing = bundle.getBoolean("dialog_showing");
        }
        final Bundle extras = this.getIntent().getExtras();
        if (extras != null) {
            TapjoyVideoView.videoData = (TapjoyVideoObject)extras.getSerializable("VIDEO_DATA");
            this.videoURL = extras.getString("VIDEO_URL");
            if (extras.containsKey("VIDEO_CANCEL_MESSAGE")) {
                this.cancelMessage = extras.getString("VIDEO_CANCEL_MESSAGE");
            }
            if (extras.containsKey("VIDEO_SHOULD_DISMISS")) {
                this.shouldDismiss = extras.getBoolean("VIDEO_SHOULD_DISMISS");
            }
        }
        TapjoyLog.i("VideoView", "dialogShowing: " + this.dialogShowing + ", seekTime: " + this.seekTime);
        if (TapjoyVideoView.videoData != null) {
            this.sendClick = true;
            TapjoyVideoView.streamingVideo = false;
            if (TapjoyVideo.getInstance() == null) {
                TapjoyLog.i("VideoView", "null video");
                this.finishWithResult(false);
                return;
            }
            this.videoURL = TapjoyVideoView.videoData.dataLocation;
            this.webviewURL = TapjoyVideoView.videoData.webviewURL;
            if (this.videoURL == null || this.videoURL.length() == 0) {
                TapjoyLog.i("VideoView", "no cached video, try streaming video at location: " + TapjoyVideoView.videoData.videoURL);
                this.videoURL = TapjoyVideoView.videoData.videoURL;
                TapjoyVideoView.streamingVideo = true;
            }
            TapjoyLog.i("VideoView", "videoPath: " + this.videoURL);
        }
        else if (this.videoURL != null) {
            TapjoyVideoView.streamingVideo = true;
            this.sendClick = false;
            TapjoyLog.i("VideoView", "playing video only: " + this.videoURL);
        }
        this.requestWindowFeature(1);
        (this.relativeLayout = new RelativeLayout((Context)this)).setLayoutParams((ViewGroup$LayoutParams)new RelativeLayout$LayoutParams(-1, -1));
        this.setContentView((View)this.relativeLayout);
        if (Build$VERSION.SDK_INT > 3) {
            final int screenLayoutSize = new TapjoyDisplayMetricsUtil((Context)this).getScreenLayoutSize();
            TapjoyLog.i("VideoView", "deviceScreenLayoutSize: " + screenLayoutSize);
            if (screenLayoutSize == 4) {
                TapjoyVideoView.textSize = 32;
            }
        }
        this.registerReceiver((BroadcastReceiver)(this.videoBroadcastReceiver = new TapjoyVideoBroadcastReceiver()), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.initVideoView();
        TapjoyLog.i("VideoView", "onCreate DONE");
        TapjoyConnectCore.viewDidOpen(3);
    }
    
    protected Dialog onCreateDialog(final int n) {
        TapjoyLog.i("VideoView", "dialog onCreateDialog");
        if (!this.dialogShowing) {
            return this.dialog;
        }
        switch (n) {
            default: {
                this.dialog = null;
                break;
            }
            case 0: {
                (this.dialog = (Dialog)new AlertDialog$Builder((Context)this).setTitle((CharSequence)"Cancel Video?").setMessage((CharSequence)this.cancelMessage).setNegativeButton((CharSequence)"End", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        TapjoyVideoView.this.finishWithResult(false);
                    }
                }).setPositiveButton((CharSequence)"Resume", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        dialogInterface.dismiss();
                        TapjoyVideoView.this.videoView.seekTo(TapjoyVideoView.this.seekTime);
                        TapjoyVideoView.this.videoView.start();
                        TapjoyVideoView.this.dialogShowing = false;
                        TapjoyLog.i("VideoView", "RESUME VIDEO time: " + TapjoyVideoView.this.seekTime);
                        TapjoyLog.i("VideoView", "currentPosition: " + TapjoyVideoView.this.videoView.getCurrentPosition());
                        TapjoyLog.i("VideoView", "duration: " + TapjoyVideoView.this.videoView.getDuration() + ", elapsed: " + (TapjoyVideoView.this.videoView.getDuration() - TapjoyVideoView.this.videoView.getCurrentPosition()));
                    }
                }).create()).setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                    public void onCancel(final DialogInterface dialogInterface) {
                        TapjoyLog.i("VideoView", "dialog onCancel");
                        dialogInterface.dismiss();
                        TapjoyVideoView.this.videoView.seekTo(TapjoyVideoView.this.seekTime);
                        TapjoyVideoView.this.videoView.start();
                        TapjoyVideoView.this.dialogShowing = false;
                    }
                });
                this.dialog.show();
                this.dialogShowing = true;
                break;
            }
            case 1: {
                (this.dialog = (Dialog)new AlertDialog$Builder((Context)this).setTitle((CharSequence)"Network Connection Lost").setMessage((CharSequence)this.connectivityMessage).setPositiveButton((CharSequence)"Okay", (DialogInterface$OnClickListener)new DialogInterface$OnClickListener() {
                    public void onClick(final DialogInterface dialogInterface, final int n) {
                        dialogInterface.dismiss();
                        TapjoyVideoView.this.dialogShowing = false;
                        TapjoyVideoView.this.finishWithResult(false);
                    }
                }).create()).setOnCancelListener((DialogInterface$OnCancelListener)new DialogInterface$OnCancelListener() {
                    public void onCancel(final DialogInterface dialogInterface) {
                        TapjoyLog.i("VideoView", "dialog onCancel");
                        dialogInterface.dismiss();
                        TapjoyVideoView.this.dialogShowing = false;
                        TapjoyVideoView.this.finishWithResult(false);
                    }
                });
                this.dialog.show();
                this.dialogShowing = true;
                break;
            }
        }
        return this.dialog;
    }
    
    protected void onDestroy() {
        super.onDestroy();
        if (this.isFinishing()) {
            this.unregisterReceiver((BroadcastReceiver)this.videoBroadcastReceiver);
            TapjoyConnectCore.viewWillClose(3);
            TapjoyConnectCore.viewDidClose(3);
        }
    }
    
    public boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
        TapjoyVideoView.videoError = true;
        TapjoyLog.i("VideoView", "onError, what: " + i + "extra: " + j);
        TapjoyVideo.videoNotifierError(3);
        this.allowBackKey = true;
        if (this.timer != null) {
            this.timer.cancel();
        }
        return i == 1 && j == -1004;
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (n == 4) {
            if (!this.allowBackKey && this.cancelMessage != null && this.cancelMessage.length() > 0) {
                this.seekTime = this.videoView.getCurrentPosition();
                this.videoView.pause();
                this.dialogShowing = true;
                this.showDialog(0);
                TapjoyLog.i("VideoView", "PAUSE VIDEO time: " + this.seekTime);
                TapjoyLog.i("VideoView", "currentPosition: " + this.videoView.getCurrentPosition());
                TapjoyLog.i("VideoView", "duration: " + this.videoView.getDuration() + ", elapsed: " + (this.videoView.getDuration() - this.videoView.getCurrentPosition()));
                return true;
            }
            if (this.videoView.isPlaying()) {
                this.videoView.stopPlayback();
                this.showVideoCompletionScreen();
                if (this.timer != null) {
                    this.timer.cancel();
                }
                return true;
            }
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    protected void onPause() {
        super.onPause();
        if (this.videoView.isPlaying()) {
            TapjoyLog.i("VideoView", "onPause");
            this.seekTime = this.videoView.getCurrentPosition();
            TapjoyLog.i("VideoView", "seekTime: " + this.seekTime);
        }
    }
    
    public void onPrepared(final MediaPlayer mediaPlayer) {
        TapjoyLog.i("VideoView", "onPrepared");
    }
    
    protected void onResume() {
        TapjoyLog.i("VideoView", "onResume");
        super.onResume();
        this.setRequestedOrientation(0);
        if (this.seekTime > 0) {
            TapjoyLog.i("VideoView", "seekTime: " + this.seekTime);
            this.videoView.seekTo(this.seekTime);
            if (!this.dialogShowing || this.dialog == null || !this.dialog.isShowing()) {
                this.videoView.start();
            }
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        TapjoyLog.i("VideoView", "*** onSaveInstanceState ***");
        TapjoyLog.i("VideoView", "dialogShowing: " + this.dialogShowing + ", seekTime: " + this.seekTime);
        bundle.putBoolean("dialog_showing", this.dialogShowing);
        bundle.putInt("seek_time", this.seekTime);
    }
    
    public void onWindowFocusChanged(final boolean b) {
        TapjoyLog.i("VideoView", "onWindowFocusChanged");
        super.onWindowFocusChanged(b);
    }
    
    private class RemainingTime extends TimerTask
    {
        @Override
        public void run() {
            TapjoyVideoView.this.mHandler.post(TapjoyVideoView.this.mUpdateResults);
        }
    }
    
    private class TapjoyVideoBroadcastReceiver extends BroadcastReceiver
    {
        public void onReceive(final Context context, final Intent intent) {
            if (intent.getBooleanExtra("noConnectivity", false)) {
                TapjoyVideoView.this.videoView.pause();
                TapjoyVideoView.this.dialogShowing = true;
                TapjoyVideoView.this.showDialog(1);
                TapjoyLog.i("VideoView", "No network connectivity during video playback");
            }
        }
    }
}
