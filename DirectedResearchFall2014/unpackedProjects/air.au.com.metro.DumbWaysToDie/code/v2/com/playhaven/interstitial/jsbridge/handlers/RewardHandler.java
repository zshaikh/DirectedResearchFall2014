package v2.com.playhaven.interstitial.jsbridge.handlers;

import v2.com.playhaven.interstitial.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.utils.*;
import java.security.*;
import java.io.*;
import org.json.*;
import v2.com.playhaven.requests.crashreport.*;
import v2.com.playhaven.model.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import android.os.*;

public class RewardHandler extends AbstractHandler
{
    private boolean validateReward(final JSONObject obj) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (JSONObject.NULL.equals(obj) || obj.length() == 0) {
            return false;
        }
        final String optString = obj.optString(PHContentEnums.Reward.IDKey.key(), "");
        final String optString2 = obj.optString(PHContentEnums.Reward.QuantityKey.key(), "");
        final String optString3 = obj.optString(PHContentEnums.Reward.ReceiptKey.key(), "");
        final String optString4 = obj.optString(PHContentEnums.Reward.SignatureKey.key(), "");
        String deviceID = this.contentDisplayer.get().getDeviceID();
        if (deviceID == null) {
            deviceID = "null";
        }
        new PHConfiguration();
        final String hexDigest = PHStringUtil.hexDigest(String.format("%s:%s:%s:%s:%s", optString, optString2, deviceID, optString3, this.contentDisplayer.get().getSecret()));
        PHStringUtil.log("Checking reward signature:  " + optString4 + " against: " + hexDigest);
        return hexDigest.equalsIgnoreCase(optString4);
    }
    
    public void handle(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
    Label_0026_Outer:
        while (true) {
            while (true) {
                Label_0210: {
                    Label_0064: {
                        try {
                            if (jsonObject.isNull("rewards")) {
                                final JSONArray optJSONArray = new JSONArray();
                                break Label_0210;
                            }
                            break Label_0064;
                            while (true) {
                                this.sendResponseToWebview(this.bridge.getCurrentQueryVar("callback"), null, null);
                                return;
                                continue Label_0026_Outer;
                            }
                        }
                        // iftrue(Label_0075:, n < optJSONArray.length())
                        catch (Exception ex) {
                            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - handleRewards", PHCrashReport.Urgency.low);
                            return;
                        }
                    }
                    final JSONArray optJSONArray = jsonObject.optJSONArray("rewards");
                    break Label_0210;
                    int n = 0;
                    final JSONObject optJSONObject;
                    Label_0075: {
                        optJSONObject = optJSONArray.optJSONObject(n);
                    }
                    if (this.validateReward(optJSONObject)) {
                        final PHReward phReward = new PHReward();
                        phReward.name = optJSONObject.optString(PHContentEnums.Reward.IDKey.key(), "");
                        phReward.quantity = optJSONObject.optInt(PHContentEnums.Reward.QuantityKey.key(), -1);
                        phReward.receipt = optJSONObject.optString(PHContentEnums.Reward.ReceiptKey.key(), "");
                        final Bundle bundle = new Bundle();
                        bundle.putParcelable(ContentRequestToInterstitialBridge.InterstitialEventArgument.Reward.getKey(), (Parcelable)phReward);
                        this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.UnlockedReward.toString(), bundle);
                    }
                    ++n;
                    continue;
                }
                int n = 0;
                continue;
            }
        }
    }
}
