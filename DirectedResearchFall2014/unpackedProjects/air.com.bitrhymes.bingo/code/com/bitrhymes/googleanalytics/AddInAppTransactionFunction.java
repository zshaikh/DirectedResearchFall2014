package com.bitrhymes.googleanalytics;

import com.google.analytics.tracking.android.*;
import com.adobe.fre.*;

public class AddInAppTransactionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            final double double1 = Double.parseDouble(array[1].getAsString());
            final String asString2 = array[2].getAsString();
            final double double2 = Double.parseDouble(array[3].getAsString());
            final double double3 = Double.parseDouble(array[4].getAsString());
            final String asString3 = array[5].getAsString();
            final double double4 = Double.parseDouble(array[6].getAsString());
            final long n = Integer.parseInt(array[7].getAsString());
            final String asString4 = array[8].getAsString();
            final String asString5 = array[9].getAsString();
            final Transaction build = new Transaction.Builder(asString, (long)(1000000.0 * double1)).setAffiliation(asString2).setTotalTaxInMicros((long)(1000000.0 * double3)).setShippingCostInMicros((long)(1000000.0 * double2)).build();
            build.addItem(new Transaction.Item.Builder(asString3, asString4, (long)(1000000.0 * double4), n).setProductCategory(asString5).build());
            EasyTracker.getTracker().sendTransaction(build);
            return null;
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            return null;
        }
        catch (FREWrongThreadException ex4) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            return null;
        }
        catch (NumberFormatException ex5) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex5.toString()) + "," + ex5.getMessage() + "," + ex5.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex5));
            return null;
        }
        catch (Exception ex6) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex6.toString()) + "," + ex6.getMessage() + "," + ex6.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex6));
            return null;
        }
    }
}
