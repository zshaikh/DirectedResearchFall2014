package com.google.ads.mediation;

import android.view.*;
import android.app.*;
import com.google.ads.*;

public interface MediationBannerAdapter<ADDITIONAL_PARAMETERS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends MediationAdapter<ADDITIONAL_PARAMETERS, SERVER_PARAMETERS>
{
    View getBannerView();
    
    void requestBannerAd(MediationBannerListener p0, Activity p1, SERVER_PARAMETERS p2, AdSize p3, MediationAdRequest p4, ADDITIONAL_PARAMETERS p5);
}
