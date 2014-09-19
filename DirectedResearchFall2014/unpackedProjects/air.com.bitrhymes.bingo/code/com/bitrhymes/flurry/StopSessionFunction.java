package com.bitrhymes.flurry;

import com.adobe.fre.*;
import com.flurry.android.*;
import android.content.*;

public class StopSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FlurryAgent.onEndSession((Context)freContext.getActivity());
        return null;
    }
}
