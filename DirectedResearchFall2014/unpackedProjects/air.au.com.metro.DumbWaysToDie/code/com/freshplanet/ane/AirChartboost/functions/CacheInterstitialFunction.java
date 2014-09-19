package com.freshplanet.ane.AirChartboost.functions;

import com.adobe.fre.*;
import com.chartboost.sdk.*;
import com.freshplanet.ane.AirChartboost.*;

public class CacheInterstitialFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            Label_0033: {
                if (array.length <= 0) {
                    break Label_0033;
                }
                try {
                    Chartboost.sharedChartboost().cacheInterstitial(array[0].getAsString());
                    return null;
                }
                catch (Exception ex) {
                    AirChartboostExtension.log(ex.getMessage());
                    return null;
                }
            }
            Chartboost.sharedChartboost().cacheInterstitial();
            continue;
        }
    }
}
