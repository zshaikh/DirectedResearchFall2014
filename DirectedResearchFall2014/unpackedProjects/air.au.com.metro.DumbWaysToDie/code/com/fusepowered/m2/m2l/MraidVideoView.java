package com.fusepowered.m2.m2l;

import android.content.*;
import android.media.*;

class MraidVideoView extends BaseVideoView
{
    public MraidVideoView(final Context context, final Intent intent, final BaseVideoViewListener baseVideoViewListener) {
        super(context);
        this.setOnCompletionListener((MediaPlayer$OnCompletionListener)new MediaPlayer$OnCompletionListener() {
            public void onCompletion(final MediaPlayer mediaPlayer) {
                if (baseVideoViewListener != null) {
                    baseVideoViewListener.videoCompleted(true);
                }
            }
        });
        this.setOnErrorListener((MediaPlayer$OnErrorListener)new MediaPlayer$OnErrorListener() {
            public boolean onError(final MediaPlayer mediaPlayer, final int n, final int n2) {
                if (baseVideoViewListener != null) {
                    baseVideoViewListener.videoError(false);
                }
                return false;
            }
        });
        this.setVideoPath(intent.getStringExtra("video_url"));
    }
}
