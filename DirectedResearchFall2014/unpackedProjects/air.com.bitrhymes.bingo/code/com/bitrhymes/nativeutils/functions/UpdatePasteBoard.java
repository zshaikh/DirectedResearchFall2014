package com.bitrhymes.nativeutils.functions;

import android.os.*;
import android.text.*;
import android.content.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class UpdatePasteBoard implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            String asString = array[0].getAsString();
            if (asString == null) {
                asString = "";
            }
            if (Build$VERSION.SDK_INT < 11) {
                ((ClipboardManager)freContext.getActivity().getSystemService("clipboard")).setText((CharSequence)asString);
            }
            else {
                ((android.content.ClipboardManager)freContext.getActivity().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence)"Bash Gaming", (CharSequence)asString));
            }
        }
        catch (IllegalStateException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            ex.printStackTrace();
        }
        catch (FRETypeMismatchException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            ex2.printStackTrace();
        }
        catch (FREInvalidObjectException ex3) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex3.toString()) + "," + ex3.getMessage() + "," + ex3.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex3));
            ex3.printStackTrace();
        }
        catch (FREWrongThreadException ex4) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex4.toString()) + "," + ex4.getMessage() + "," + ex4.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex4));
            ex4.printStackTrace();
        }
        return null;
    }
}
