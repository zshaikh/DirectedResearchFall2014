package com.fusepowered.m1.android;

import java.io.*;
import java.lang.ref.*;
import android.net.*;
import android.text.*;
import android.view.inputmethod.*;
import android.widget.*;
import com.fusepowered.m1.google.gson.*;
import android.media.*;
import android.app.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.graphics.drawable.*;
import android.view.*;

class InlineVideoView extends VideoView implements Serializable
{
    private static final String ANCHOR_IN_PNG = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII=";
    private static final String ANCHOR_OUT_PNG = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC";
    static final int TIME_TO_UPDATE_SEEK_JS = 500;
    private int duration;
    InlineParams inlineParams;
    MediaController mediaController;
    WeakReference<MMLayout> mmLayoutRef;
    TransparentFix transFix;
    TransparentHandler transparentHandler;
    Handler videoHandler;
    
    public InlineVideoView(final MMLayout referent) {
        super(referent.getContext());
        this.transparentHandler = new TransparentHandler(this);
        this.setId(8832429);
        this.setFocusable(true);
        MMAdImplController.destroyOtherInlineVideo(referent.getContext());
        this.mmLayoutRef = new WeakReference<MMLayout>(referent);
    }
    
    private MediaPlayer$OnCompletionListener createOnCompletionListener() {
        return (MediaPlayer$OnCompletionListener)new VideoCompletionListener(this);
    }
    
    private MediaPlayer$OnErrorListener createOnErrorListener() {
        return (MediaPlayer$OnErrorListener)new VideoErrorListener(this);
    }
    
    private MediaPlayer$OnPreparedListener createOnPreparedListener() {
        return (MediaPlayer$OnPreparedListener)new VideoPreparedListener(this);
    }
    
    private View$OnTouchListener createOnTouchListener() {
        return (View$OnTouchListener)new VideoTouchListener(this);
    }
    
    private Handler createVideoHandler() {
        return new VideoHandler(this);
    }
    
    private void downloadCacheVideo() {
        Utils.ThreadUtils.execute(new DownloadRunnable(this));
    }
    
    private Uri getVideoUri() {
        if (this.hasCachedVideo() && !this.inlineParams.isPlayingStreaming) {
            this.inlineParams.isPlayingStreaming = false;
            return VideoAd.getVideoUri(this.getContext(), this.inlineParams.cachedVideoID);
        }
        if (!TextUtils.isEmpty((CharSequence)this.inlineParams.streamVideoURI)) {
            this.inlineParams.isPlayingStreaming = true;
            return Uri.parse(this.inlineParams.streamVideoURI);
        }
        return null;
    }
    
    private boolean hasCachedVideo() {
        return !TextUtils.isEmpty((CharSequence)this.inlineParams.cachedVideoID) && VideoAd.hasVideoFile(this.getContext(), this.inlineParams.cachedVideoID);
    }
    
    private void initInternalInlineVideo() {
        this.videoHandler = this.createVideoHandler();
        this.setVideoURI(this.getVideoUri());
        this.setBackgroundColor(-16777216);
        this.setClickable(true);
        this.setOnErrorListener(this.createOnErrorListener());
        this.setOnCompletionListener(this.createOnCompletionListener());
        this.setOnPreparedListener(this.createOnPreparedListener());
        this.setOnTouchListener(this.createOnTouchListener());
        if (this.inlineParams.autoPlay) {
            this.seekTo(this.inlineParams.currentPosition);
            this.startInternal();
            if (this.videoHandler != null && !this.videoHandler.hasMessages(2)) {
                this.videoHandler.sendMessageDelayed(Message.obtain(this.videoHandler, 2), 500L);
            }
        }
        if (this.inlineParams.showControls) {
            this.setMediaController((android.widget.MediaController)(this.mediaController = new MediaController(this)));
            this.mediaController.show();
        }
        MMSDK.Log.e("Finished inserting inlineVideo player");
    }
    
    private void makeTransparent() {
        if (!this.transparentHandler.hasMessages(4)) {
            this.transparentHandler.sendEmptyMessage(4);
        }
    }
    
    private void removeFromParent() {
        final ViewGroup viewGroup = (ViewGroup)this.getParent();
        if (viewGroup != null) {
            viewGroup.removeView((View)this);
        }
    }
    
    private void removeKeyboardFocusViewJira1642() {
        ((InputMethodManager)this.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.getWindowToken(), 0);
        this.requestFocus();
    }
    
    private void resumeInternal(final boolean b) {
        if (!this.inlineParams.isCompleted) {
            this.seekTo(this.inlineParams.currentPosition);
            if (b || this.inlineParams.autoPlay) {
                this.startInternal();
                if (this.videoHandler != null && !this.videoHandler.hasMessages(2)) {
                    this.videoHandler.sendMessageDelayed(Message.obtain(this.videoHandler, 2), 500L);
                }
            }
        }
    }
    
    private void setInlineVideoParams(final InlineParams inlineParams) {
        this.inlineParams = inlineParams;
    }
    
    boolean adjustVideo(final InlineParams adjustVideoParams) {
        synchronized (this) {
            this.setAdjustVideoParams(adjustVideoParams);
            MMSDK.Log.e("Called initInlineVideo inside reposition section code");
            final boolean playing = this.isPlaying();
            this.stopPlayback();
            final MMLayout mmLayout = this.mmLayoutRef.get();
            if (mmLayout != null) {
                mmLayout.addInlineVideo();
            }
            this.resumeInternal(playing);
            return true;
        }
    }
    
    void downloadVideo() {
        VideoAd.downloadVideoFile(this.getContext(), this.inlineParams.cachedVideoURI, this.inlineParams.cachedVideoID);
    }
    
    public RelativeLayout$LayoutParams getCustomLayoutParams() {
        if (this.inlineParams.goingFullScreen) {
            return new RelativeLayout$LayoutParams(-1, -1);
        }
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams((int)(this.inlineParams.scaleFactor * this.inlineParams.width), (int)(this.inlineParams.scaleFactor * this.inlineParams.height));
        relativeLayout$LayoutParams.topMargin = (int)(this.inlineParams.scaleFactor * this.inlineParams.y);
        relativeLayout$LayoutParams.leftMargin = (int)(this.inlineParams.scaleFactor * this.inlineParams.x);
        MMSDK.Log.d("lp height = " + relativeLayout$LayoutParams.height);
        return relativeLayout$LayoutParams;
    }
    
    String getGsonState() {
        return new Gson().toJson(this.inlineParams);
    }
    
    void handleTransparentMessage(final Message message) {
        switch (message.what) {
            case 4: {
                if (this.isPlaying() && this.getCurrentPosition() > 0) {
                    this.transparentHandler.sendEmptyMessageDelayed(5, 100L);
                    return;
                }
                this.transparentHandler.sendEmptyMessageDelayed(4, 50L);
            }
            case 5: {
                if (!this.isPlaying() || this.getCurrentPosition() <= 0) {
                    break;
                }
                this.setBackgroundColor(0);
                if (this.mmLayoutRef != null && this.mmLayoutRef.get() != null) {
                    this.mmLayoutRef.get().removeBlackView();
                    return;
                }
                break;
            }
        }
    }
    
    void initInlineVideo(final InlineParams inlineVideoParams) {
        synchronized (this) {
            this.setInlineVideoParams(inlineVideoParams);
            if (!TextUtils.isEmpty((CharSequence)this.inlineParams.cachedVideoURI)) {
                this.downloadCacheVideo();
            }
            if (this.isValid()) {
                this.initInternalInlineVideo();
            }
            else {
                MMSDK.Log.e("The videoURI attribute was not specified on the video marker div.");
            }
        }
    }
    
    boolean isPlayingStreaming() {
        return this.inlineParams != null && this.inlineParams.isPlayingStreaming;
    }
    
    boolean isValid() {
        return !TextUtils.isEmpty((CharSequence)this.inlineParams.streamVideoURI) || this.hasCachedVideo();
    }
    
    void onCompletion(final MediaPlayer mediaPlayer) {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        this.inlineParams.isCompleted = true;
        this.inlineParams.currentPosition = this.duration;
        if (this.inlineParams.currentPosition == -1) {
            this.inlineParams.currentPosition = 0;
        }
        this.updateVideoSeekTimeFinal();
    }
    
    boolean onError(final MediaPlayer mediaPlayer, final int i, final int j) {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        final MMLayout mmLayout = this.mmLayoutRef.get();
        if (mmLayout == null) {
            MMSDK.Log.w("MMLayout weak reference broken");
            return false;
        }
        mmLayout.loadUrl("javascript:MMJS.setError(" + String.format("Error while playing, %d - %d", i, j) + ");");
        return true;
    }
    
    void onMediaControllerClick(final View view) {
        final MMLayout mmLayout = this.mmLayoutRef.get();
        if (mmLayout != null) {
            this.setBackgroundColor(-16777216);
            if (this.isPlaying()) {
                this.inlineParams.currentPosition = this.getCurrentPosition();
            }
            if (this.inlineParams.goingFullScreen) {
                this.inlineParams.goingFullScreen = false;
                if (this.inlineParams.originalOrientation != 1) {
                    final boolean playing = this.isPlaying();
                    this.stopPlayback();
                    mmLayout.repositionVideoLayout();
                    this.resumeInternal(playing);
                    return;
                }
                final Activity activity = (Activity)this.getContext();
                if (activity != null) {
                    activity.setRequestedOrientation(1);
                }
            }
            else {
                this.inlineParams.originalOrientation = this.getContext().getResources().getConfiguration().orientation;
                this.inlineParams.goingFullScreen = true;
                if (this.inlineParams.originalOrientation == 2) {
                    final boolean playing2 = this.isPlaying();
                    this.stopPlayback();
                    mmLayout.fullScreenVideoLayout();
                    this.resumeInternal(playing2);
                    return;
                }
                final Activity activity2 = (Activity)this.getContext();
                if (activity2 != null) {
                    activity2.setRequestedOrientation(0);
                }
            }
        }
    }
    
    void onPrepared(final MediaPlayer mediaPlayer) {
        if (this.inlineParams.autoPlay) {
            this.makeTransparent();
        }
        this.seekTo(this.inlineParams.currentPosition);
        if (this.inlineParams.autoPlay || !this.inlineParams.isInitialPlayBack) {
            this.getHeight();
        }
        else {
            this.inlineParams.isInitialPlayBack = false;
        }
        this.duration = this.getDuration();
    }
    
    public void onRestoreInstanceState(final Parcelable parcelable) {
        if (!(parcelable instanceof AdViewOverlayView.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        final AdViewOverlayView.SavedState savedState = (AdViewOverlayView.SavedState)parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.inlineParams.inflateFromGson(savedState.gson);
    }
    
    public Parcelable onSaveInstanceState() {
        final AdViewOverlayView.SavedState savedState = new AdViewOverlayView.SavedState(super.onSaveInstanceState());
        if (this.isPlaying()) {
            this.inlineParams.currentPosition = this.getCurrentPosition();
        }
        savedState.gson = this.getGsonState();
        return (Parcelable)savedState;
    }
    
    boolean onTouch(final View view, final MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            final MMLayout mmLayout = this.mmLayoutRef.get();
            if (mmLayout == null) {
                MMSDK.Log.w("MMLayout weak reference broken");
                return false;
            }
            if (!TextUtils.isEmpty((CharSequence)this.inlineParams.touchCallBack)) {
                mmLayout.loadUrl(String.format("javascript:" + this.inlineParams.touchCallBack + "(%f,%f)", motionEvent.getX(), motionEvent.getY()));
            }
            if (this.inlineParams.showControls && this.mediaController != null && !this.mediaController.isShowing()) {
                this.mediaController.show();
                return true;
            }
        }
        return true;
    }
    
    void pauseVideo() {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        if (this.isPlaying()) {
            this.inlineParams.currentPosition = this.getCurrentPosition();
            this.pause();
        }
    }
    
    void playVideo() {
        if (!this.isPlaying()) {
            if (this.inlineParams.isStopped && this.getVideoUri() != null) {
                this.inlineParams.isStopped = false;
                this.setVideoURI(this.getVideoUri());
                this.seekTo(0);
            }
            else if (this.inlineParams.isCompleted) {
                this.seekTo(0);
            }
            this.inlineParams.isCompleted = false;
            this.startInternal();
        }
        if (this.videoHandler != null && !this.videoHandler.hasMessages(2)) {
            this.videoHandler.sendMessageDelayed(Message.obtain(this.videoHandler, 2), 500L);
        }
    }
    
    void removeVideo() {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        if (this.isPlaying()) {
            this.stopPlayback();
        }
        this.setOnCompletionListener((MediaPlayer$OnCompletionListener)null);
        this.setOnErrorListener((MediaPlayer$OnErrorListener)null);
        this.setOnPreparedListener((MediaPlayer$OnPreparedListener)null);
        this.setOnTouchListener((View$OnTouchListener)null);
        this.removeFromParent();
    }
    
    void resumeVideo() {
        if (!this.isPlaying() && !this.inlineParams.isCompleted) {
            this.startInternal();
            if (this.videoHandler != null && !this.videoHandler.hasMessages(2)) {
                this.videoHandler.sendMessageDelayed(Message.obtain(this.videoHandler, 2), 500L);
            }
        }
    }
    
    void setAdjustVideoParams(final InlineParams inlineParams) {
        this.inlineParams.x = inlineParams.x;
        this.inlineParams.y = inlineParams.y;
        this.inlineParams.width = inlineParams.width;
        this.inlineParams.height = inlineParams.height;
    }
    
    void setVideoSource(final String s) {
        if (this.isPlaying()) {
            this.stopPlayback();
        }
        this.inlineParams.currentPosition = 0;
        this.setBackgroundColor(-16777216);
        this.setVideoURI(Uri.parse(s));
        this.startInternal();
    }
    
    public void start() {
        this.makeTransparent();
        this.removeKeyboardFocusViewJira1642();
        super.start();
    }
    
    public void startInternal() {
        if (((PowerManager)this.getContext().getSystemService("power")).isScreenOn()) {
            this.start();
        }
    }
    
    public void stopPlayback() {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        if (this.isPlaying()) {
            this.inlineParams.currentPosition = 0;
        }
        super.stopPlayback();
    }
    
    void stopVideo() {
        if (this.videoHandler != null && this.videoHandler.hasMessages(2)) {
            this.videoHandler.removeMessages(2);
        }
        if (this.isPlaying()) {
            this.inlineParams.isStopped = true;
            this.inlineParams.currentPosition = 0;
            if (this.mmLayoutRef != null && this.mmLayoutRef.get() != null) {
                this.mmLayoutRef.get().addBlackView();
            }
            this.stopPlayback();
        }
    }
    
    public String toString() {
        return this.inlineParams.toString();
    }
    
    void updateVideoSeekTime() {
        final int currentPosition = this.getCurrentPosition();
        if (currentPosition >= 0) {
            MMSDK.Log.d("Time is " + currentPosition);
            this.updateVideoSeekTime(Math.floor(currentPosition / 1000.0f));
        }
    }
    
    void updateVideoSeekTime(final double d) {
        final MMLayout mmLayout = this.mmLayoutRef.get();
        if (mmLayout == null) {
            MMSDK.Log.w("MMLayout weak reference broken");
        }
        mmLayout.loadUrl("javascript:MMJS.inlineVideo.updateVideoSeekTime(" + d + ");");
    }
    
    void updateVideoSeekTimeFinal() {
        if (this.duration > 0) {
            MMSDK.Log.d("Time is " + this.duration);
            this.updateVideoSeekTime(Math.ceil(this.duration / 1000.0f));
        }
    }
    
    private static class DownloadRunnable implements Runnable
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public DownloadRunnable(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        @Override
        public void run() {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            if (inlineVideoView != null) {
                inlineVideoView.downloadVideo();
            }
        }
    }
    
    static class InlineParams
    {
        boolean autoPlay;
        int bodyHeight;
        int bodyWidth;
        String cachedVideoID;
        String cachedVideoURI;
        int currentPosition;
        boolean goingFullScreen;
        int height;
        boolean isCompleted;
        boolean isInitialPlayBack;
        boolean isPlayingStreaming;
        boolean isStopped;
        int originalOrientation;
        float scaleFactor;
        boolean showControls;
        String streamVideoURI;
        String touchCallBack;
        int width;
        int x;
        int y;
        
        InlineParams(final HashMap<String, String> hashMap, final Context context) {
            super();
            this.isInitialPlayBack = true;
            if (hashMap.get("x") != null) {
                this.x = (int)Float.parseFloat(hashMap.get("x"));
            }
            if (hashMap.get("y") != null) {
                this.y = (int)Float.parseFloat(hashMap.get("y"));
            }
            if (hashMap.get("width") != null) {
                this.width = (int)Float.parseFloat(hashMap.get("width"));
            }
            if (hashMap.get("height") != null) {
                this.height = (int)Float.parseFloat(hashMap.get("height"));
            }
            this.streamVideoURI = hashMap.get("streamVideoURI");
            this.cachedVideoURI = hashMap.get("cachedVideoURI");
            this.cachedVideoID = hashMap.get("cachedVideoID");
            if (hashMap.get("autoPlay") != null) {
                this.autoPlay = Boolean.parseBoolean(hashMap.get("autoPlay"));
            }
            if (hashMap.get("showControls") != null) {
                this.showControls = Boolean.parseBoolean(hashMap.get("showControls"));
            }
            if (hashMap.get("bodyWidth") != null) {
                this.bodyWidth = (int)Float.parseFloat(hashMap.get("bodyWidth"));
            }
            if (hashMap.get("bodyHeight") != null) {
                this.bodyHeight = (int)Float.parseFloat(hashMap.get("bodyHeight"));
            }
            this.touchCallBack = hashMap.get("touchCallback");
            this.scaleFactor = context.getResources().getDisplayMetrics().density;
        }
        
        static InlineParams getInlineParams(final String s) {
            return new Gson().fromJson(s, InlineParams.class);
        }
        
        void inflateFromGson(final String str) {
            final InlineParams obj = new Gson().fromJson(str, InlineParams.class);
            this.x = obj.x;
            this.y = obj.y;
            this.bodyWidth = obj.bodyWidth;
            this.bodyHeight = obj.bodyHeight;
            this.width = obj.width;
            this.height = obj.height;
            this.currentPosition = obj.currentPosition;
            this.streamVideoURI = obj.streamVideoURI;
            this.cachedVideoURI = obj.cachedVideoURI;
            this.cachedVideoID = obj.cachedVideoID;
            this.touchCallBack = obj.touchCallBack;
            this.autoPlay = obj.autoPlay;
            this.showControls = obj.showControls;
            this.isInitialPlayBack = obj.isInitialPlayBack;
            this.scaleFactor = obj.scaleFactor;
            this.goingFullScreen = obj.goingFullScreen;
            this.originalOrientation = obj.originalOrientation;
            this.isCompleted = obj.isCompleted;
            MMSDK.Log.d("gson*****" + str);
            MMSDK.Log.d("PARAMS*****" + obj);
        }
        
        @Override
        public String toString() {
            return String.format("%s id, %d x, %d y, %d bWidth, %d bHeight, %d pos, %b autoPlay", this.cachedVideoID, this.x, this.y, this.bodyWidth, this.bodyHeight, this.currentPosition, this.autoPlay);
        }
    }
    
    private static class MediaController extends android.widget.MediaController
    {
        BitmapDrawable inDrawable;
        private WeakReference<InlineVideoView> inlineVideoRef;
        BitmapDrawable outDrawable;
        
        public MediaController(final InlineVideoView referent) {
            super(referent.getContext());
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public void setAnchorView(final View p0) {
            // 
            // This method could not be decompiled.
            // 
            // Original Bytecode:
            // 
            //     0: aload_0        
            //     1: aload_1        
            //     2: invokespecial   android/widget/MediaController.setAnchorView:(Landroid/view/View;)V
            //     5: new             Landroid/widget/Button;
            //     8: dup            
            //     9: aload_0        
            //    10: invokevirtual   com/fusepowered/m1/android/InlineVideoView$MediaController.getContext:()Landroid/content/Context;
            //    13: invokespecial   android/widget/Button.<init>:(Landroid/content/Context;)V
            //    16: astore_2       
            //    17: aload_0        
            //    18: getfield        com/fusepowered/m1/android/InlineVideoView$MediaController.inDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //    21: ifnonnull       47
            //    24: aload_0        
            //    25: new             Landroid/graphics/drawable/BitmapDrawable;
            //    28: dup            
            //    29: new             Ljava/io/ByteArrayInputStream;
            //    32: dup            
            //    33: ldc             "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII="
            //    35: invokestatic    com/fusepowered/m1/android/Base64.decode:(Ljava/lang/String;)[B
            //    38: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
            //    41: invokespecial   android/graphics/drawable/BitmapDrawable.<init>:(Ljava/io/InputStream;)V
            //    44: putfield        com/fusepowered/m1/android/InlineVideoView$MediaController.inDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //    47: aload_0        
            //    48: getfield        com/fusepowered/m1/android/InlineVideoView$MediaController.outDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //    51: ifnonnull       77
            //    54: aload_0        
            //    55: new             Landroid/graphics/drawable/BitmapDrawable;
            //    58: dup            
            //    59: new             Ljava/io/ByteArrayInputStream;
            //    62: dup            
            //    63: ldc             "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC"
            //    65: invokestatic    com/fusepowered/m1/android/Base64.decode:(Ljava/lang/String;)[B
            //    68: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
            //    71: invokespecial   android/graphics/drawable/BitmapDrawable.<init>:(Ljava/io/InputStream;)V
            //    74: putfield        com/fusepowered/m1/android/InlineVideoView$MediaController.outDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //    77: aload_0        
            //    78: getfield        com/fusepowered/m1/android/InlineVideoView$MediaController.inlineVideoRef:Ljava/lang/ref/WeakReference;
            //    81: invokevirtual   java/lang/ref/WeakReference.get:()Ljava/lang/Object;
            //    84: checkcast       Lcom/fusepowered/m1/android/InlineVideoView;
            //    87: astore_3       
            //    88: aload_3        
            //    89: ifnull          122
            //    92: aload_3        
            //    93: getfield        com/fusepowered/m1/android/InlineVideoView.inlineParams:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
            //    96: getfield        com/fusepowered/m1/android/InlineVideoView$InlineParams.goingFullScreen:Z
            //    99: ifeq            217
            //   102: aload_2        
            //   103: aload_0        
            //   104: getfield        com/fusepowered/m1/android/InlineVideoView$MediaController.inDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //   107: invokevirtual   android/widget/Button.setBackgroundDrawable:(Landroid/graphics/drawable/Drawable;)V
            //   110: aload_2        
            //   111: new             Lcom/fusepowered/m1/android/InlineVideoView$MediaController$MediaClickListener;
            //   114: dup            
            //   115: aload_3        
            //   116: invokespecial   com/fusepowered/m1/android/InlineVideoView$MediaController$MediaClickListener.<init>:(Lcom/fusepowered/m1/android/InlineVideoView;)V
            //   119: invokevirtual   android/widget/Button.setOnClickListener:(Landroid/view/View$OnClickListener;)V
            //   122: new             Landroid/widget/FrameLayout$LayoutParams;
            //   125: dup            
            //   126: bipush          -2
            //   128: bipush          -2
            //   130: iconst_5       
            //   131: invokespecial   android/widget/FrameLayout$LayoutParams.<init>:(III)V
            //   134: astore          4
            //   136: aload           4
            //   138: iconst_0       
            //   139: bipush          20
            //   141: bipush          10
            //   143: iconst_0       
            //   144: invokevirtual   android/widget/FrameLayout$LayoutParams.setMargins:(IIII)V
            //   147: aload_0        
            //   148: aload_2        
            //   149: aload           4
            //   151: invokevirtual   com/fusepowered/m1/android/InlineVideoView$MediaController.addView:(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
            //   154: return         
            //   155: astore          6
            //   157: new             Ljava/lang/StringBuilder;
            //   160: dup            
            //   161: invokespecial   java/lang/StringBuilder.<init>:()V
            //   164: ldc             "Exception image:"
            //   166: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   169: aload           6
            //   171: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   174: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   177: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   180: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;)V
            //   183: goto            47
            //   186: astore          5
            //   188: new             Ljava/lang/StringBuilder;
            //   191: dup            
            //   192: invokespecial   java/lang/StringBuilder.<init>:()V
            //   195: ldc             "Exception image:"
            //   197: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   200: aload           5
            //   202: invokevirtual   java/lang/Exception.getMessage:()Ljava/lang/String;
            //   205: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   208: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
            //   211: invokestatic    com/fusepowered/m1/android/MMSDK$Log.e:(Ljava/lang/String;)V
            //   214: goto            77
            //   217: aload_2        
            //   218: aload_0        
            //   219: getfield        com/fusepowered/m1/android/InlineVideoView$MediaController.outDrawable:Landroid/graphics/drawable/BitmapDrawable;
            //   222: invokevirtual   android/widget/Button.setBackgroundDrawable:(Landroid/graphics/drawable/Drawable;)V
            //   225: goto            110
            //    Exceptions:
            //  Try           Handler
            //  Start  End    Start  End    Type                 
            //  -----  -----  -----  -----  ---------------------
            //  24     47     155    186    Ljava/lang/Exception;
            //  54     77     186    217    Ljava/lang/Exception;
            // 
            // The error that occurred was:
            // 
            // java.lang.IllegalStateException: Expression is linked from several locations: Label_0077:
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
            //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:556)
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
        
        static final class MediaClickListener implements View$OnClickListener
        {
            private WeakReference<InlineVideoView> inlineVideoRef;
            
            public MediaClickListener(final InlineVideoView referent) {
                super();
                this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
            }
            
            public void onClick(final View view) {
                final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
                if (inlineVideoView != null) {
                    inlineVideoView.onMediaControllerClick(view);
                }
            }
        }
    }
    
    interface TransparentFix
    {
        void removeBlackView();
    }
    
    private static class TransparentHandler extends Handler
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public TransparentHandler(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public void handleMessage(final Message message) {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            if (inlineVideoView != null) {
                inlineVideoView.handleTransparentMessage(message);
            }
        }
    }
    
    private static class VideoCompletionListener implements MediaPlayer$OnCompletionListener
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public VideoCompletionListener(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public void onCompletion(final MediaPlayer mediaPlayer) {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            if (inlineVideoView != null) {
                inlineVideoView.onCompletion(mediaPlayer);
            }
        }
    }
    
    private static class VideoErrorListener implements MediaPlayer$OnErrorListener
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public VideoErrorListener(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            if (inlineVideoView != null) {
                inlineVideoView.onError(mediaPlayer, n, n2);
            }
            return true;
        }
    }
    
    private static class VideoHandler extends Handler
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public VideoHandler(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 2: {
                    final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
                    if (inlineVideoView != null) {
                        if (inlineVideoView.isPlaying()) {
                            inlineVideoView.updateVideoSeekTime();
                        }
                        inlineVideoView.videoHandler.sendMessageDelayed(Message.obtain(inlineVideoView.videoHandler, 2), 500L);
                        return;
                    }
                    break;
                }
            }
        }
    }
    
    private static class VideoPreparedListener implements MediaPlayer$OnPreparedListener
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public VideoPreparedListener(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public void onPrepared(final MediaPlayer mediaPlayer) {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            if (inlineVideoView != null) {
                inlineVideoView.onPrepared(mediaPlayer);
            }
        }
    }
    
    private static class VideoTouchListener implements View$OnTouchListener
    {
        private WeakReference<InlineVideoView> inlineVideoRef;
        
        public VideoTouchListener(final InlineVideoView referent) {
            super();
            this.inlineVideoRef = new WeakReference<InlineVideoView>(referent);
        }
        
        public boolean onTouch(final View view, final MotionEvent motionEvent) {
            final InlineVideoView inlineVideoView = this.inlineVideoRef.get();
            return inlineVideoView == null || inlineVideoView.onTouch(view, motionEvent);
        }
    }
}
