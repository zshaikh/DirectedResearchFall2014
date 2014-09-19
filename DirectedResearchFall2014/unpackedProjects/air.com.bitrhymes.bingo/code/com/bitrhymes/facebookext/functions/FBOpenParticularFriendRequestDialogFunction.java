package com.bitrhymes.facebookext.functions;

import com.adobe.fre.*;
import android.util.*;
import android.os.*;
import com.bitrhymes.facebookext.*;
import android.content.*;

public class FBOpenParticularFriendRequestDialogFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        FacebookExt.log("FBOpenParticularFriendRequestDialogFunction : ");
        try {
            FacebookExt.context = context;
            Log.i(this.getClass().getSimpleName(), "Entered inside the try block");
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            final String asString3 = array[2].getAsString();
            final String asString4 = array[3].getAsString();
            final String asString5 = array[4].getAsString();
            final String asString6 = array[5].getAsString();
            final String asString7 = array[6].getAsString();
            FacebookExtContext.updateFBSession(asString, array[7].getAsString(), asString2);
            final Bundle bundle = new Bundle();
            bundle.putString("to", asString5);
            bundle.putString("title", asString6);
            bundle.putString("message", asString3);
            bundle.putString("notification_text", asString4);
            bundle.putString("data", asString7);
            bundle.putString("frictionless", "1");
            Log.i(this.getClass().getSimpleName(), "Will call facebook.dialog in the bingo native extension");
            final Intent intent = new Intent(context.getActivity().getApplicationContext(), (Class)DialogActivity.class);
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".method", "apprequests");
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".parameters", bundle);
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".callback", "");
            context.getActivity().startActivity(intent);
            return null;
        }
        catch (Exception ex) {
            return null;
        }
    }
}
