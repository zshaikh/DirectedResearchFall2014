package com.playhaven.src.publishersdk.content;

import v2.com.playhaven.interstitial.*;

public class PHContentView extends PHInterstitialActivity
{
    public boolean showsOverlayImmediately;
    
    public enum ButtonState
    {
        Down("Down", 0, 16842919), 
        Up("Up", 1, 16842910);
        
        private int android_state;
        
        private ButtonState(final String name, final int ordinal, final int android_state) {
            this.android_state = android_state;
        }
        
        public int getAndroidState() {
            return this.android_state;
        }
    }
}
