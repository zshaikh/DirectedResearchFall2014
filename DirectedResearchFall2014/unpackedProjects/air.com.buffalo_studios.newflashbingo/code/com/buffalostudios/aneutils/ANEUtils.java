package com.buffalostudios.aneutils;

import com.adobe.fre.*;
import com.buffalostudios.aneutils.common.*;
import android.util.*;

public class ANEUtils
{
    private static final String TAG = "ANEUtils";
    private static boolean _isInForeground;
    
    static {
        ANEUtils._isInForeground = false;
    }
    
    public static boolean getInForeground() {
        return ANEUtils._isInForeground;
    }
    
    private static void setInForeground(final boolean isInForeground) {
        ANEUtils._isInForeground = isInForeground;
    }
    
    public static class GetError implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return ANEHelper.newFREString(ANEHelper.getError());
        }
    }
    
    public static class SetInForeground implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            try {
                setInForeground(array[0].getAsBool());
                return null;
            }
            catch (Exception ex) {
                Log.d("ANEUtils", "Parse exception");
                return null;
            }
        }
    }
}
