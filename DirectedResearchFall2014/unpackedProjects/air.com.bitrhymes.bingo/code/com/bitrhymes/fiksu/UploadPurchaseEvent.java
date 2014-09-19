package com.bitrhymes.fiksu;

import com.adobe.fre.*;
import com.fiksu.asotracking.*;
import android.content.*;

public class UploadPurchaseEvent implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            FiksuTrackingManager.uploadPurchaseEvent((Context)freContext.getActivity(), array[0].getAsString(), Double.parseDouble(array[1].getAsString()), array[2].getAsString());
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + AppConstants.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (Exception ex2) {
            ex2.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + AppConstants.getExceptionStackTraceAsString(ex2));
            return null;
        }
    }
}
