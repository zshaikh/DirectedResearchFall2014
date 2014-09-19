package com.bitrhymes.facebookext.functions;

import com.facebook.*;
import android.content.*;
import com.adobe.fre.*;
import com.bitrhymes.facebookext.*;

public class FBSetClientToken implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
    Label_0027_Outer:
        while (true) {
            while (true) {
                while (true) {
                    try {
                        final String asString = array[0].getAsString();
                        if (asString != null) {
                            InsightsLogger.newLogger((Context)freContext.getActivity(), asString);
                            return null;
                        }
                    }
                    catch (IllegalStateException ex) {
                        ex.printStackTrace();
                        final String asString = null;
                        continue Label_0027_Outer;
                    }
                    catch (FRETypeMismatchException ex2) {
                        ex2.printStackTrace();
                        final String asString = null;
                        continue Label_0027_Outer;
                    }
                    catch (FREInvalidObjectException ex3) {
                        ex3.printStackTrace();
                        final String asString = null;
                        continue Label_0027_Outer;
                    }
                    catch (FREWrongThreadException ex4) {
                        ex4.printStackTrace();
                        final String asString = null;
                        continue Label_0027_Outer;
                    }
                    break;
                }
                FacebookExt.log("cannot start publish install, applicationId is null");
                continue;
            }
        }
    }
}
