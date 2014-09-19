package com.fusepowered.a1.video;

import com.fusepowered.a1.view.*;
import android.media.*;
import com.fusepowered.a1.webapp.*;

public interface IApplifierImpactVideoPlayerListener extends IApplifierImpactViewListener, MediaPlayer$OnCompletionListener
{
    void onEventPositionReached(ApplifierImpactWebData.ApplifierVideoPosition p0);
    
    void onVideoPlaybackError();
    
    void onVideoPlaybackStarted();
    
    void onVideoSkip();
}
