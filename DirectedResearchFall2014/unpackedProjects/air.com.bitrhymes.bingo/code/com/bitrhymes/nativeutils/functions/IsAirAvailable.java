package com.bitrhymes.nativeutils.functions;

import android.util.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;
import android.content.pm.*;
import java.util.*;

public class IsAirAvailable implements FREFunction
{
    private FREContext context;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        this.context = context;
        try {
            final boolean packageExisted = this.isPackageExisted("com.adobe.air");
            Log.i("IsAirAvailable", "PKG : " + packageExisted);
            return FREObject.newObject(packageExisted);
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            this.context.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (Exception ex2) {
            ex2.printStackTrace();
            this.context.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
    }
    
    public boolean isPackageExisted(final String anObject) {
        final Iterator<ApplicationInfo> iterator = this.context.getActivity().getPackageManager().getInstalledApplications(0).iterator();
        while (iterator.hasNext()) {
            if (iterator.next().packageName.equals(anObject)) {
                return true;
            }
        }
        return false;
    }
}
