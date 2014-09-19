package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandPlayVideo extends MraidCommand
{
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType() {
        final int[] $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType = MraidCommandPlayVideo.$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType;
        if ($switch_TABLE$com$mopub$mobileads$MraidView$PlacementType != null) {
            return $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2 = new int[MraidView.PlacementType.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2[MraidView.PlacementType.INLINE.ordinal()] = 1;
                try {
                    $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2[MraidView.PlacementType.INTERSTITIAL.ordinal()] = 2;
                    return MraidCommandPlayVideo.$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType = $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    public MraidCommandPlayVideo(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        final String stringFromParamsForKey = this.getStringFromParamsForKey("uri");
        if (stringFromParamsForKey != null && !stringFromParamsForKey.equals("")) {
            this.mView.getDisplayController().showVideo(stringFromParamsForKey);
            return;
        }
        this.mView.fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.PLAY_VIDEO, "Video can't be played with null or empty URL");
    }
    
    @Override
    protected boolean isCommandDependentOnUserClick(final MraidView.PlacementType placementType) {
        switch ($SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType()[placementType.ordinal()]) {
            default: {
                return super.isCommandDependentOnUserClick(placementType);
            }
            case 1: {
                return true;
            }
            case 2: {
                return false;
            }
        }
    }
}
