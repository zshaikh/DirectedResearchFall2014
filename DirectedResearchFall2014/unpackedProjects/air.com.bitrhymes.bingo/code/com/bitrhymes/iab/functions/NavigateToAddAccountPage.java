package com.bitrhymes.iab.functions;

import com.adobe.fre.*;
import android.accounts.*;
import android.os.*;

public class NavigateToAddAccountPage implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AccountManager.get(freContext.getActivity().getApplicationContext()).addAccount("com.google", (String)null, (String[])null, (Bundle)null, freContext.getActivity(), (AccountManagerCallback)null, (Handler)null);
        return null;
    }
}
