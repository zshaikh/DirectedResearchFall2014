package v2.com.playhaven.interstitial.jsbridge.handlers;

import v2.com.playhaven.interstitial.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.utils.*;
import java.security.*;
import java.io.*;
import org.json.*;
import v2.com.playhaven.model.*;
import v2.com.playhaven.requests.purchases.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import android.os.*;
import v2.com.playhaven.requests.crashreport.*;

public class PurchaseHandler extends AbstractHandler
{
    private boolean validatePurchase(final JSONObject obj) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (JSONObject.NULL.equals(obj) || obj.length() == 0) {
            return false;
        }
        final String optString = obj.optString(PHContentEnums.Purchase.ProductIDKey.key(), "");
        final String optString2 = obj.optString(PHContentEnums.Purchase.NameKey.key(), "");
        final String optString3 = obj.optString(PHContentEnums.Purchase.ReceiptKey.key(), "");
        final String optString4 = obj.optString(PHContentEnums.Purchase.SignatureKey.key(), "");
        new PHConfiguration();
        final String hexDigest = PHStringUtil.hexDigest(String.format("%s:%s:%s:%s:%s:%s", optString, optString2, 1, this.contentDisplayer.get().getDeviceID(), optString3, this.contentDisplayer.get().getSecret()));
        PHStringUtil.log("Checking purchase signature:  " + optString4 + " against: " + hexDigest);
        return hexDigest.equals(optString4);
    }
    
    public void handle(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
    Label_0026_Outer:
        while (true) {
            while (true) {
                int n = 0;
                Label_0266: {
                    Label_0260: {
                        try {
                            if (jsonObject.isNull("purchases")) {
                                final JSONArray optJSONArray = new JSONArray();
                                break Label_0260;
                            }
                            final JSONArray optJSONArray = jsonObject.optJSONArray("purchases");
                            break Label_0260;
                            // iftrue(Label_0232:, n >= optJSONArray.length())
                            // iftrue(Label_0266:, !this.validatePurchase(optJSONObject))
                            while (true) {
                                final PHPurchase phPurchase = new PHPurchase(this.contentDisplayer.get().getTag());
                                final JSONObject optJSONObject;
                                phPurchase.product = optJSONObject.optString(PHContentEnums.Purchase.ProductIDKey.key(), "");
                                phPurchase.name = optJSONObject.optString(PHContentEnums.Purchase.NameKey.key(), "");
                                phPurchase.receipt = optJSONObject.optString(PHContentEnums.Purchase.ReceiptKey.key(), "");
                                phPurchase.callback = this.bridge.getCurrentQueryVar("callback");
                                PHIAPTrackingRequest.setConversionCookie(phPurchase.product, optJSONObject.optString(PHContentEnums.Purchase.CookieKey.key()));
                                final Bundle bundle = new Bundle();
                                bundle.putParcelable(ContentRequestToInterstitialBridge.InterstitialEventArgument.Purchase.getKey(), (Parcelable)phPurchase);
                                this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.MadePurchase.toString(), bundle);
                                break Label_0266;
                                optJSONObject = optJSONArray.optJSONObject(n);
                                continue Label_0026_Outer;
                            }
                            Label_0232: {
                                this.sendResponseToWebview(this.bridge.getCurrentQueryVar("callback"), null, null);
                            }
                            return;
                        }
                        catch (Exception ex) {
                            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - handlePurchase", PHCrashReport.Urgency.critical);
                            return;
                        }
                    }
                    n = 0;
                    continue;
                }
                ++n;
                continue;
            }
        }
    }
}
