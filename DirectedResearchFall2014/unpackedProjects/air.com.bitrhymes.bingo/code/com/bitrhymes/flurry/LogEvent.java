package com.bitrhymes.flurry;

import com.flurry.android.*;
import android.util.*;
import java.util.*;
import com.adobe.fre.*;

public class LogEvent implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
    Label_0102_Outer:
        while (true) {
            while (true) {
                String asString2 = null;
                Label_0606: {
                    try {
                        String s = array[0].getAsString();
                        final String asString = array[1].getAsString();
                        asString2 = array[2].getAsString();
                        final String asString3 = array[3].getAsString();
                        if (s.length() > 255) {
                            s = s.substring(0, 255);
                        }
                        while (true) {
                            boolean b;
                            if (asString3 != null && asString3.length() > 0 && asString != null && asString.length() > 0) {
                                final int int1 = Integer.parseInt(asString3);
                                b = false;
                                if (int1 == 1) {
                                    b = true;
                                }
                                break Label_0606;
                            }
                            else {
                                if (asString3 != null && asString3.length() > 0) {
                                    final int int2 = Integer.parseInt(asString3);
                                    boolean b2 = false;
                                    if (int2 == 1) {
                                        b2 = true;
                                    }
                                    FlurryAgent.logEvent(s, b2);
                                    Log.i(this.getClass().getSimpleName(), "end of flurry request");
                                    break;
                                }
                                goto Label_0261;
                            }
                            final HashMap<String, String> hashMap = new HashMap<String, String>();
                            hashMap.put(asString, asString2);
                            FlurryAgent.logEvent(s, hashMap, b);
                            continue Label_0102_Outer;
                        }
                    }
                    catch (IllegalStateException ex) {
                        ex.printStackTrace();
                        freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
                        break;
                    }
                    catch (FRETypeMismatchException ex2) {
                        ex2.printStackTrace();
                        freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
                        break;
                    }
                    catch (FREInvalidObjectException ex3) {
                        ex3.printStackTrace();
                        freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
                        break;
                    }
                    catch (FREWrongThreadException ex4) {
                        ex4.printStackTrace();
                        freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
                        break;
                    }
                    catch (Exception ex5) {
                        ex5.printStackTrace();
                        freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex5.toString()) + "," + ex5.getMessage() + "," + ex5.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex5));
                        break;
                    }
                }
                if (asString2 == null) {
                    asString2 = "";
                    continue;
                }
                continue;
            }
        }
        return null;
    }
}
