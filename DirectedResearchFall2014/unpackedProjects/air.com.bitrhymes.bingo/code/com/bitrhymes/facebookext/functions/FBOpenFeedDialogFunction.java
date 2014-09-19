package com.bitrhymes.facebookext.functions;

import com.adobe.fre.*;
import android.os.*;
import org.json.*;
import java.util.*;
import com.bitrhymes.facebookext.*;
import android.content.*;
import com.facebook.android.*;

public class FBOpenFeedDialogFunction implements FREFunction, DialogListener
{
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
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
            final String asString9 = array[8].getAsString();
            FacebookExtContext.updateFBSession(asString, array[9].getAsString(), asString2);
            final HashMap<String, String> hashMap = new HashMap<String, String>();
            hashMap.put("name", asString3);
            hashMap.put("link", asString4);
            final Bundle bundle = new Bundle();
            bundle.putString("name", asString5);
            bundle.putString("caption", asString6);
            bundle.putString("description", asString7);
            bundle.putString("link", asString8);
            bundle.putString("picture", asString9);
            bundle.putString("actions", new JSONObject((Map)hashMap).toString());
            bundle.putString("frictionless", "1");
            final Intent intent = new Intent(context.getActivity().getApplicationContext(), (Class)DialogActivity.class);
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".method", "feed");
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".parameters", bundle);
            intent.putExtra(String.valueOf(DialogActivity.extraPrefix) + ".callback", "");
            context.getActivity().startActivity(intent);
            return null;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    @Override
    public void onCancel() {
    }
    
    @Override
    public void onComplete(final Bundle bundle) {
    }
    
    @Override
    public void onError(final DialogError dialogError) {
    }
    
    @Override
    public void onFacebookError(final FacebookError facebookError) {
    }
}
