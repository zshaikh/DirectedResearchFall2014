package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import android.app.*;
import android.content.*;
import com.fusepowered.fuseapi.*;

public class DisplayNotificationsFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.displayNotifications(new AlertDialog$Builder((Context)freContext.getActivity()));
        return null;
    }
}
