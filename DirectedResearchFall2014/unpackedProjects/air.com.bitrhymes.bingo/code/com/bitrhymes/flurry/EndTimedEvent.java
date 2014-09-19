package com.bitrhymes.flurry;

import com.flurry.android.*;
import android.util.*;
import com.adobe.fre.*;

public class EndTimedEvent implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            String s = array[0].getAsString();
            if (s.length() > 255) {
                s = s.substring(0, 255);
            }
            FlurryAgent.endTimedEvent(s);
            Log.i(this.getClass().getSimpleName(), "end of flurry request");
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            ex2.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            ex3.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            return null;
        }
        catch (FREWrongThreadException ex4) {
            ex4.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            return null;
        }
    }
}
