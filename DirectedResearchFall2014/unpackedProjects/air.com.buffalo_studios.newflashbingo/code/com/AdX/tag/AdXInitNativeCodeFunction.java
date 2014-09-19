package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;

public class AdXInitNativeCodeFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.i("AdXInitNativeCodeFunction", "call");
        return null;
    }
}
