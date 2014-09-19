package com.buffalostudios.aneutils.loadingspinner;

import com.adobe.fre.*;
import com.buffalostudios.aneutils.common.*;

public class LoadingSpinner
{
    public static class Hide implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            LoadingSpinnerActivity.stop(freContext.getActivity());
            return null;
        }
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return null;
        }
    }
    
    public static class Show implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            LoadingSpinnerActivity.start(freContext.getActivity(), ANEArgument.asInt(array[0]), ANEArgument.asInt(array[1]), ANEArgument.asInt(array[2]), ANEArgument.asInt(array[3]), ANEArgument.asInt(array[4]), ANEArgument.asInts(array[5]));
            return null;
        }
    }
}
