package com.fusepowered.m2.m2l;

import java.util.*;

class MraidCommandExpand extends MraidCommand
{
    static /* synthetic */ int[] $SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType() {
        final int[] $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType = MraidCommandExpand.$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType;
        if ($switch_TABLE$com$mopub$mobileads$MraidView$PlacementType != null) {
            return $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType;
        }
        final int[] $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2 = new int[MraidView.PlacementType.values().length];
        while (true) {
            try {
                $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2[MraidView.PlacementType.INLINE.ordinal()] = 1;
                try {
                    $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2[MraidView.PlacementType.INTERSTITIAL.ordinal()] = 2;
                    return MraidCommandExpand.$SWITCH_TABLE$com$mopub$mobileads$MraidView$PlacementType = $switch_TABLE$com$mopub$mobileads$MraidView$PlacementType2;
                }
                catch (NoSuchFieldError noSuchFieldError) {}
            }
            catch (NoSuchFieldError noSuchFieldError2) {
                continue;
            }
            break;
        }
    }
    
    MraidCommandExpand(final Map<String, String> map, final MraidView mraidView) {
        super(map, mraidView);
    }
    
    @Override
    void execute() {
        int n = this.getIntFromParamsForKey("w");
        int n2 = this.getIntFromParamsForKey("h");
        final String stringFromParamsForKey = this.getStringFromParamsForKey("url");
        final boolean booleanFromParamsForKey = this.getBooleanFromParamsForKey("shouldUseCustomClose");
        final boolean booleanFromParamsForKey2 = this.getBooleanFromParamsForKey("lockOrientation");
        if (n <= 0) {
            n = this.mView.getDisplayController().mScreenWidth;
        }
        if (n2 <= 0) {
            n2 = this.mView.getDisplayController().mScreenHeight;
        }
        this.mView.getDisplayController().expand(stringFromParamsForKey, n, n2, booleanFromParamsForKey, booleanFromParamsForKey2);
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
