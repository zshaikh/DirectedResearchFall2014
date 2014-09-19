package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.utils.*;
import java.io.*;
import com.adobe.fre.*;

public class GetPushNoticationTrack implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FREObject object = null;
        try {
            final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(freContext.getActivity().openFileInput("bgpush.txt")));
            final StringBuilder sb = new StringBuilder();
            while (true) {
                final String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
            final String string = sb.toString();
            freContext.getActivity().deleteFile("bgpush.txt");
            if (string == null || string.length() <= 0) {
                goto Label_0162;
            }
            object = FREObject.newObject(string);
        }
        catch (IOException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
        }
        catch (FREWrongThreadException ex2) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex2.toString()) + "," + ex2.getMessage() + "," + ex2.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex2));
            goto Label_0160;
        }
        return object;
    }
}
