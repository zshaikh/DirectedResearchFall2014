package com.bitrhymes.facebookext.functions;

import java.math.*;
import java.util.*;
import com.facebook.*;
import android.content.*;
import com.adobe.fre.*;

public class FBLogPurchaseFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        BigDecimal bigDecimal = null;
        while (true) {
            try {
                final String asString = array[0].getAsString();
                final String asString2 = array[1].getAsString();
                bigDecimal = null;
                while (true) {
                    Label_0088: {
                        if (asString == null) {
                            break Label_0088;
                        }
                        final int length = asString.length();
                        bigDecimal = null;
                        if (length <= 0) {
                            break Label_0088;
                        }
                        bigDecimal = new BigDecimal(asString);
                        Currency instance;
                        if (asString2 != null && asString2.length() > 0) {
                            instance = Currency.getInstance(asString2);
                        }
                        else {
                            instance = null;
                        }
                        AppEventsLogger.newLogger((Context)freContext.getActivity()).logPurchase(bigDecimal, instance);
                        return null;
                    }
                    bigDecimal = new BigDecimal(0.0);
                    continue;
                }
            }
            catch (IllegalStateException ex) {
                ex.printStackTrace();
                final Currency instance = null;
                continue;
            }
            catch (FRETypeMismatchException ex2) {
                ex2.printStackTrace();
                final Currency instance = null;
                continue;
            }
            catch (FREInvalidObjectException ex3) {
                ex3.printStackTrace();
                final Currency instance = null;
                continue;
            }
            catch (FREWrongThreadException ex4) {
                ex4.printStackTrace();
                final Currency instance = null;
                continue;
            }
            continue;
        }
    }
}
