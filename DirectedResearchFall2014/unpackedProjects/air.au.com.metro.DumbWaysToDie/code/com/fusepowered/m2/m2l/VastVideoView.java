package com.fusepowered.m2.m2l;

import android.os.*;
import java.util.concurrent.*;
import android.content.*;
import android.view.*;
import android.media.*;
import com.fusepowered.m2.m2l.util.*;
import android.util.*;
import java.util.*;

class VastVideoView extends BaseVideoView
{
    public static final int DEFAULT_VIDEO_DURATION_FOR_CLOSE_BUTTON = 5000;
    private static final float FIRST_QUARTER_MARKER = 0.25f;
    public static final int MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON = 15000;
    private static final float MID_POINT_MARKER = 0.5f;
    private static final float THIRD_QUARTER_MARKER = 0.75f;
    static final String VIDEO_CLICK_THROUGH_TRACKERS = "video_click_through_trackers";
    static final String VIDEO_CLICK_THROUGH_URL = "video_click_through_url";
    static final String VIDEO_COMPLETE_TRACKERS = "video_complete_trackers";
    static final String VIDEO_FIRST_QUARTER_TRACKERS = "video_first_quarter_trackers";
    static final String VIDEO_IMPRESSION_TRACKERS = "video_impression_trackers";
    static final String VIDEO_MID_POINT_TRACKERS = "video_mid_point_trackers";
    private static final long VIDEO_PROGRESS_TIMER_CHECKER_DELAY = 50L;
    static final String VIDEO_START_TRACKERS = "video_start_trackers";
    static final String VIDEO_THIRD_QUARTER_TRACKERS = "video_third_quarter_trackers";
    private static final ThreadPoolExecutor sThreadPoolExecutor;
    private final BaseVideoViewListener mBaseVideoViewListener;
    private ArrayList<String> mClickThroughTrackers;
    private String mClickThroughUrl;
    private ArrayList<String> mCompletionTrackers;
    private ArrayList<String> mFirstQuarterTrackers;
    private Handler mHandler;
    private ArrayList<String> mImpressionTrackers;
    private boolean mIsFirstMarkHit;
    private boolean mIsSecondMarkHit;
    private boolean mIsThirdMarkHit;
    private boolean mIsVideoFinishedPlaying;
    private boolean mIsVideoProgressShouldBeChecked;
    private ArrayList<String> mMidPointTrackers;
    private int mSeekerPositionOnPause;
    private int mShowCloseButtonDelay;
    private ArrayList<String> mThirdQuarterTrackers;
    private Runnable mVideoProgressCheckerRunnable;
    private ArrayList<String> mVideoStartTrackers;
    private String mVideoUrl;
    
    static {
        sThreadPoolExecutor = new ThreadPoolExecutor(10, 50, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue<Runnable>());
    }
    
    public VastVideoView(final Context context, final Intent intent, final BaseVideoViewListener mBaseVideoViewListener) {
        super(context);
        this.mShowCloseButtonDelay = 5000;
        this.mBaseVideoViewListener = mBaseVideoViewListener;
        this.mHandler = new Handler();
        this.mIsVideoProgressShouldBeChecked = true;
        this.mSeekerPositionOnPause = -1;
        this.mVideoUrl = intent.getStringExtra("video_url");
        this.mVideoStartTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_start_trackers");
        this.mFirstQuarterTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_first_quarter_trackers");
        this.mMidPointTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_mid_point_trackers");
        this.mThirdQuarterTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_third_quarter_trackers");
        this.mCompletionTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_complete_trackers");
        this.mImpressionTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_impression_trackers");
        this.mClickThroughUrl = intent.getStringExtra("video_click_through_url");
        this.mClickThroughTrackers = (ArrayList<String>)intent.getStringArrayListExtra("video_click_through_trackers");
        this.setOnCompletionListener((MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
            public void onCompletion(final MediaPlayer mediaPlayer) {
                VastVideoView.this.stopProgressChecker();
                if (VastVideoView.this.mBaseVideoViewListener != null) {
                    VastVideoView.this.mBaseVideoViewListener.videoCompleted(false);
                }
                VastVideoView.this.pingOnBackgroundThread(VastVideoView.this.mCompletionTrackers);
                VastVideoView.access$4(VastVideoView.this, true);
            }
        });
        this.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
            public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
                VastVideoView.this.stopProgressChecker();
                if (mBaseVideoViewListener != null) {
                    mBaseVideoViewListener.videoError(false);
                }
                return false;
            }
        });
        this.setVideoPath(this.mVideoUrl);
        this.requestFocus();
        this.setOnTouchListener((View$OnTouchListener)new View$OnTouchListener() {
            public boolean onTouch(final View view, final MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    VastVideoView.this.pingOnBackgroundThread(VastVideoView.this.mClickThroughTrackers);
                    if (VastVideoView.this.mBaseVideoViewListener != null) {
                        VastVideoView.this.mBaseVideoViewListener.videoClicked();
                    }
                    final Intent intent = new Intent(context, (Class)M2RBrowser.class);
                    intent.putExtra("extra_url", VastVideoView.this.mClickThroughUrl);
                    context.startActivity(intent);
                }
                return true;
            }
        });
        this.mVideoProgressCheckerRunnable = new Runnable() {
            @Override
            public void run() {
                final float n = VastVideoView.this.getDuration();
                if (n > 0.0f) {
                    final float n2 = VastVideoView.this.getCurrentPosition() / n;
                    if (n2 > 0.25f && !VastVideoView.this.mIsFirstMarkHit) {
                        VastVideoView.access$8(VastVideoView.this, true);
                        VastVideoView.this.pingOnBackgroundThread(VastVideoView.this.mFirstQuarterTrackers);
                    }
                    if (n2 > 0.5f && !VastVideoView.this.mIsSecondMarkHit) {
                        VastVideoView.access$11(VastVideoView.this, true);
                        VastVideoView.this.pingOnBackgroundThread(VastVideoView.this.mMidPointTrackers);
                    }
                    if (n2 > 0.75f && !VastVideoView.this.mIsThirdMarkHit) {
                        VastVideoView.access$14(VastVideoView.this, true);
                        VastVideoView.this.pingOnBackgroundThread(VastVideoView.this.mThirdQuarterTrackers);
                    }
                    if (VastVideoView.this.getCurrentPosition() > VastVideoView.this.mShowCloseButtonDelay && VastVideoView.this.mBaseVideoViewListener != null) {
                        VastVideoView.this.mBaseVideoViewListener.showCloseButton();
                    }
                }
                if (VastVideoView.this.mIsVideoProgressShouldBeChecked) {
                    VastVideoView.this.mHandler.postDelayed(VastVideoView.this.mVideoProgressCheckerRunnable, 50L);
                }
            }
        };
        this.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
            public void onPrepared(final MediaPlayer mediaPlayer) {
                if (VastVideoView.this.getDuration() < 15000) {
                    VastVideoView.access$20(VastVideoView.this, VastVideoView.this.getDuration());
                }
            }
        });
        this.pingOnBackgroundThread(this.mVideoStartTrackers);
        this.pingOnBackgroundThread(this.mImpressionTrackers);
        this.mHandler.post(this.mVideoProgressCheckerRunnable);
    }
    
    static /* synthetic */ void access$11(final VastVideoView vastVideoView, final boolean mIsSecondMarkHit) {
        vastVideoView.mIsSecondMarkHit = mIsSecondMarkHit;
    }
    
    static /* synthetic */ void access$14(final VastVideoView vastVideoView, final boolean mIsThirdMarkHit) {
        vastVideoView.mIsThirdMarkHit = mIsThirdMarkHit;
    }
    
    static /* synthetic */ void access$20(final VastVideoView vastVideoView, final int mShowCloseButtonDelay) {
        vastVideoView.mShowCloseButtonDelay = mShowCloseButtonDelay;
    }
    
    static /* synthetic */ void access$4(final VastVideoView vastVideoView, final boolean mIsVideoFinishedPlaying) {
        vastVideoView.mIsVideoFinishedPlaying = mIsVideoFinishedPlaying;
    }
    
    static /* synthetic */ void access$8(final VastVideoView vastVideoView, final boolean mIsFirstMarkHit) {
        vastVideoView.mIsFirstMarkHit = mIsFirstMarkHit;
    }
    
    private void pingOnBackgroundThread(final List<String> list) {
        if (list != null) {
            final Iterator<String> iterator = list.iterator();
            while (iterator.hasNext()) {
                VastVideoView.sThreadPoolExecutor.execute(new Runnable() {
                    private final /* synthetic */ String val$url = iterator.next();
                    
                    @Override
                    public void run() {
                        try {
                            HttpUtils.ping(this.val$url);
                        }
                        catch (Exception ex) {
                            Log.d("MoPub", "Unable to track video impression url: " + this.val$url);
                        }
                    }
                });
            }
        }
    }
    
    private void stopProgressChecker() {
        this.mIsVideoProgressShouldBeChecked = false;
        this.mHandler.removeCallbacks(this.mVideoProgressCheckerRunnable);
    }
    
    protected void onPause() {
        super.onPause();
        this.stopProgressChecker();
        this.mSeekerPositionOnPause = this.getCurrentPosition();
    }
    
    protected void onResume() {
        super.onResume();
        this.mIsVideoProgressShouldBeChecked = true;
        this.mHandler.post(this.mVideoProgressCheckerRunnable);
        this.seekTo(this.mSeekerPositionOnPause);
        if (!this.mIsVideoFinishedPlaying) {
            this.start();
        }
    }
}
