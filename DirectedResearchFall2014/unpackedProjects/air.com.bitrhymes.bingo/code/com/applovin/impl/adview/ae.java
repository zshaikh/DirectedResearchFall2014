package com.applovin.impl.adview;

import com.applovin.sdk.*;

class ae implements AppLovinAdVideoPlaybackListener
{
    final /* synthetic */ ah a;
    final /* synthetic */ ab b;
    
    ae(final ab b, final ah a) {
        this.b = b;
        this.a = a;
        super();
    }
    
    @Override
    public void videoPlaybackBegan(final AppLovinAd appLovinAd) {
        final AppLovinAdVideoPlaybackListener b = this.a.b();
        if (b != null) {
            b.videoPlaybackBegan(appLovinAd);
        }
    }
    
    @Override
    public void videoPlaybackEnded(final AppLovinAd appLovinAd, final double n, final Boolean b) {
        final AppLovinAdVideoPlaybackListener b2 = this.a.b();
        if (b2 != null) {
            b2.videoPlaybackEnded(appLovinAd, n, b);
        }
    }
}
