package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.*;
import android.content.*;
import android.util.*;
import android.media.*;
import android.widget.*;
import android.view.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class PlayMovieWithURL implements FREFunction
{
    private FREContext mContext;
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        this.mContext = freContext;
        try {
            NativeUtilsContext.setFREContext(freContext);
            final String asString = array[0].getAsString();
            final VideoView videoView = new VideoView((Context)freContext.getActivity());
            Log.i("video View ", "set Url ");
            videoView.setVideoPath(asString);
            videoView.setOnPreparedListener((MediaPlayer$OnPreparedListener)new MediaPlayer$OnPreparedListener() {
                public void onPrepared(final MediaPlayer mediaPlayer) {
                    PlayMovieWithURL.this.mContext.dispatchStatusEventAsync("MOVIE_PLAY_STARTED", "1");
                    Log.i("Video View ", " onPrepared  ");
                    videoView.start();
                }
            });
            final MediaController mediaController = new MediaController((Context)freContext.getActivity());
            mediaController.setMediaPlayer((MediaController$MediaPlayerControl)videoView);
            videoView.setMediaController(mediaController);
            videoView.requestFocus();
            freContext.getActivity().setContentView((View)videoView);
            return null;
        }
        catch (IllegalStateException ex) {
            this.mContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            this.mContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            this.mContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            this.mContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            ex4.printStackTrace();
            return null;
        }
    }
}
