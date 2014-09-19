package v2.com.playhaven.interstitial.jsbridge.handlers;

import org.json.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.utils.*;

public class DismissHandler extends LaunchHandler
{
    @Override
    public void handle(final JSONObject jsonObject) {
        String optString;
        if (jsonObject != null) {
            optString = jsonObject.optString("ping", "");
        }
        else {
            optString = null;
        }
        this.contentDisplayer.get().openURL(optString, this);
    }
}
