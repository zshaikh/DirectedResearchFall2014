package com.fusepowered.a1.view;

import android.content.*;
import android.util.*;
import android.graphics.*;
import com.fusepowered.a1.data.*;
import android.widget.*;
import android.view.*;

public class ApplifierImpactMuteVideoButton extends ImageButton
{
    private ApplifierImpactMuteVideoButtonSize _size;
    private ApplifierImpactMuteVideoButtonState _state;
    
    static /* synthetic */ int[] $SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState() {
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState = ApplifierImpactMuteVideoButton.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
        if ($switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState != null) {
            return $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState;
        }
        final int[] $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState2 = new int[ApplifierImpactMuteVideoButtonState.values().length];
        while (true) {
            try {
                $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState2[ApplifierImpactMuteVideoButtonState.Muted.ordinal()] = 2;
                try {
                    $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState2[ApplifierImpactMuteVideoButtonState.UnMuted.ordinal()] = 1;
                    return ApplifierImpactMuteVideoButton.$SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState = $switch_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    public ApplifierImpactMuteVideoButton(final Context context) {
        super(context);
        this._state = ApplifierImpactMuteVideoButtonState.UnMuted;
        this._size = ApplifierImpactMuteVideoButtonSize.Medium;
        this.setupView();
    }
    
    public ApplifierImpactMuteVideoButton(final Context context, final AttributeSet set) {
        super(context, set);
        this._state = ApplifierImpactMuteVideoButtonState.UnMuted;
        this._size = ApplifierImpactMuteVideoButtonSize.Medium;
        this.setupView();
    }
    
    public ApplifierImpactMuteVideoButton(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this._state = ApplifierImpactMuteVideoButtonState.UnMuted;
        this._size = ApplifierImpactMuteVideoButtonSize.Medium;
        this.setupView();
    }
    
    private Bitmap selectBitmap() {
        if (this._size != null && this._size.equals(ApplifierImpactMuteVideoButtonSize.Medium)) {
            switch ($SWITCH_TABLE$com$applifier$impact$android$view$ApplifierImpactMuteVideoButton$ApplifierImpactMuteVideoButtonState()[this._state.ordinal()]) {
                case 1: {
                    String s = ApplifierImpactGraphicsBundle.ICON_AUDIO_UNMUTED_50x50;
                    if (ApplifierImpactDevice.getScreenDensity() == 120) {
                        s = ApplifierImpactGraphicsBundle.ICON_AUDIO_UNMUTED_32x32;
                    }
                    return ApplifierImpactGraphicsBundle.getBitmapFromString(s);
                }
                case 2: {
                    String s2 = ApplifierImpactGraphicsBundle.ICON_AUDIO_MUTED_50x50;
                    if (ApplifierImpactDevice.getScreenDensity() == 120) {
                        s2 = ApplifierImpactGraphicsBundle.ICON_AUDIO_MUTED_32x32;
                    }
                    return ApplifierImpactGraphicsBundle.getBitmapFromString(s2);
                }
            }
        }
        return null;
    }
    
    private void setupView() {
        this.setAdjustViewBounds(true);
        this.setLayoutParams((ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-2, -2));
        this.setImageBitmap(this.selectBitmap());
        this.setBackgroundResource(0);
        this.setPadding(0, 0, 0, 0);
    }
    
    public void setState(final ApplifierImpactMuteVideoButtonState state) {
        if (state != null && !state.equals(this._state)) {
            this._state = state;
            this.setImageBitmap(this.selectBitmap());
        }
    }
    
    public enum ApplifierImpactMuteVideoButtonSize
    {
        Large("Large", 2), 
        Medium("Medium", 1), 
        Small("Small", 0);
    }
    
    public enum ApplifierImpactMuteVideoButtonState
    {
        Muted("Muted", 1), 
        UnMuted("UnMuted", 0);
    }
}
