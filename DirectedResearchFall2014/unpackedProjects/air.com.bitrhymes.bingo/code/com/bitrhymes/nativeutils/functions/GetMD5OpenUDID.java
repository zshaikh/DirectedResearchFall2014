package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.content.*;
import android.util.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetMD5OpenUDID implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String fromSDFile = Utils.readFromSDFile(Utils.ODID_STRING_PATH);
            final boolean validateODID = Utils.validateODID(fromSDFile, (Context)freContext.getActivity());
            String openUDID = null;
            if (validateODID) {
                openUDID = fromSDFile.split("-")[1];
            }
            Log.d("GetMD5OpenUDID", "ODID from file:" + openUDID);
            if (openUDID == null || openUDID.trim().length() != 40) {
                Log.d("GetMD5OpenUDID", "ODID from file is null or length is 0" + openUDID);
                OpenUDID_manager.sync((Context)freContext.getActivity());
                openUDID = OpenUDID_manager.getOpenUDID();
                Utils.writeToSDFile(String.valueOf(Utils.SHA1(openUDID)) + "-" + openUDID, Utils.ODID_STRING_PATH);
            }
            return FREObject.newObject(Utils.md5(openUDID));
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
