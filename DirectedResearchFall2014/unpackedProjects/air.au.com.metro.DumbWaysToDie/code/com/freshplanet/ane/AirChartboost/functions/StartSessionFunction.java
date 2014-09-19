package com.freshplanet.ane.AirChartboost.functions;

import com.adobe.fre.*;
import com.chartboost.sdk.*;
import com.freshplanet.ane.AirChartboost.*;

public class StartSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            final Chartboost sharedChartboost = Chartboost.sharedChartboost();
            sharedChartboost.onCreate(freContext.getActivity(), asString, asString2, new AirChartboostDelegate());
            sharedChartboost.startSession();
            return null;
        }
        catch (Exception ex) {
            AirChartboostExtension.log(ex.getMessage());
            return null;
        }
    }
}
