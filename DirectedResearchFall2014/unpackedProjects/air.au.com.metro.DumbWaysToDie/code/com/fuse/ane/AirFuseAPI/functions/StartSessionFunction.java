package com.fuse.ane.AirFuseAPI.functions;

import com.fuse.ane.callback.*;
import com.fusepowered.fuseapi.*;
import com.fusepowered.util.*;
import com.adobe.fre.*;

public class StartSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            FuseAPI.startSession(array[0].getAsString(), freContext.getActivity(), freContext.getActivity().getApplicationContext(), new MessageCallback(freContext.getActivity()));
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            ex4.printStackTrace();
            return null;
        }
    }
}
