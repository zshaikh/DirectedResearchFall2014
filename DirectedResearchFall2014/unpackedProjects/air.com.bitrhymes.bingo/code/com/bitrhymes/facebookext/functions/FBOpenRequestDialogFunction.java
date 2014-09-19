package com.bitrhymes.facebookext.functions;

import android.text.*;
import android.annotation.*;
import java.util.*;
import com.adobe.fre.*;
import android.os.*;
import com.bitrhymes.facebookext.*;
import android.content.*;

public class FBOpenRequestDialogFunction implements FREFunction
{
    @SuppressLint({ "NewApi" })
    private String checkFriendsList(final String s) {
        int n = 50;
        final String[] split = s.split(",");
        String s2 = TextUtils.join((CharSequence)",", (Object[])split);
        FacebookExt.log("length : " + s2.length());
        for (int n2 = s2.length(); n2 > 1500 && n >= 20; n2 = s2.length(), n -= 10) {
            s2 = this.makeFinal(split, n);
        }
        return s2;
    }
    
    private String makeFinal(final String[] original, final int n) {
        FacebookExt.log("limit : " + n);
        return TextUtils.join((CharSequence)",", (Object[])Arrays.copyOfRange(original, 0, n));
    }
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        FacebookExt.log("FBOpenRequestDialogFunction : ");
        try {
            FacebookExt.context = context;
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            final String asString3 = array[2].getAsString();
            final String asString4 = array[3].getAsString();
            final String asString5 = array[4].getAsString();
            final String asString6 = array[5].getAsString();
            final String asString7 = array[6].getAsString();
            final String asString8 = array[7].getAsString();
            FacebookExtContext.updateFBSession(asString, array[8].getAsString(), asString2);
            final String checkFriendsList = this.checkFriendsList(asString5);
            FacebookExt.log("suggestedFriends : " + checkFriendsList.length());
            final Bundle bundle = new Bundle();
            bundle.putString("title", asString7);
            bundle.putString("message", asString3);
            bundle.putString("notification_text", asString4);
            bundle.putString("suggestions", "[" + checkFriendsList + "]");
            bundle.putString("data", asString8);
            bundle.putString("exclude_ids", "[" + asString6 + "]");
            bundle.putString("frictionless", "1");
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
