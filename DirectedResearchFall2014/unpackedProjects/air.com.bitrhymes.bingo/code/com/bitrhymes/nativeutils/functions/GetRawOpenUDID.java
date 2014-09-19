package com.bitrhymes.nativeutils.functions;

import android.annotation.*;
import com.adobe.fre.*;
import android.content.*;
import android.util.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetRawOpenUDID implements FREFunction
{
    private static final String TAG = "GetRawOpenUDID";
    @SuppressLint({ "ParserError" })
    String openUDID;
    
    public GetRawOpenUDID() {
        super();
        this.openUDID = "";
    }
    
    @SuppressLint({ "ParserError" })
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String fromSDFile = Utils.readFromSDFile(Utils.ODID_STRING_PATH);
            if (Utils.validateODID(fromSDFile, (Context)freContext.getActivity())) {
                this.openUDID = fromSDFile.split("-")[1];
            }
            Log.d("GetRawOpenUDID", "ODID from file:" + this.openUDID + "--length:" + this.openUDID.length());
            if (this.openUDID == null || this.openUDID.trim().length() != 40) {
                Log.d("GetRawOpenUDID", "ODID from file is null or length is 0" + this.openUDID);
                OpenUDID_manager.sync((Context)freContext.getActivity());
                this.openUDID = OpenUDID_manager.getOpenUDID();
                Utils.writeToSDFile(String.valueOf(Utils.SHA1(this.openUDID)) + "-" + this.openUDID, Utils.ODID_STRING_PATH);
            }
            Log.d("GetRawOpenUDID", "OpenUDID:" + this.openUDID);
            return FREObject.newObject(this.openUDID);
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
