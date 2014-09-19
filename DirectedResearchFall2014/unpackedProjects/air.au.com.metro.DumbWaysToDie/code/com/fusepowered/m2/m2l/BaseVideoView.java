package com.fusepowered.m2.m2l;

import android.widget.*;
import android.content.*;

abstract class BaseVideoView extends VideoView
{
    public BaseVideoView(final Context context) {
        super(context);
    }
    
    void onPause() {
    }
    
    void onResume() {
    }
    
    public interface BaseVideoViewListener
    {
        void showCloseButton();
        
        void videoClicked();
        
        void videoCompleted(boolean p0);
        
        void videoError(boolean p0);
    }
}
