package v2.com.playhaven.interstitial.jsbridge.handlers;

import v2.com.playhaven.utils.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import android.os.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import v2.com.playhaven.interstitial.*;
import v2.com.playhaven.requests.crashreport.*;
import org.json.*;
import v2.com.playhaven.requests.content.*;

public class LaunchHandler extends AbstractHandler implements Listener
{
    public void handle(final JSONObject jsonObject) {
        if (jsonObject != null && !this.doesntHaveContentDisplayer()) {
            this.contentDisplayer.get().launchURL(jsonObject.optString("url", ""), this);
        }
    }
    
    @Override
    public void onURLOpenerFailed(final PHURLOpener phurlOpener) {
        while (true) {
            if (phurlOpener.getContentTemplateCallback() == null) {
                break Label_0059;
            }
            try {
                final JSONObject jsonObject = new JSONObject();
                final JSONObject jsonObject2 = new JSONObject();
                jsonObject2.put("error", (Object)"1");
                jsonObject.put("url", (Object)phurlOpener.getTargetURL());
                this.sendResponseToWebview(phurlOpener.getContentTemplateCallback(), jsonObject, jsonObject2);
                final Bundle bundle = new Bundle();
                bundle.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.Error.getKey(), PHContentEnums.Error.CouldNotLoadURL.toString());
                this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.Failed.toString(), bundle);
            }
            catch (JSONException ex) {
                PHCrashReport.reportCrash((Exception)ex, "PHInterstitialActivity - onURLOpenerFailed", PHCrashReport.Urgency.critical);
                continue;
            }
            catch (Exception ex2) {
                PHCrashReport.reportCrash(ex2, "PHInterstitialActivity - onURLOpenerFailed", PHCrashReport.Urgency.critical);
                continue;
            }
            break;
        }
    }
    
    @Override
    public void onURLOpenerFinished(final PHURLOpener phurlOpener) {
        while (true) {
            if (phurlOpener.getContentTemplateCallback() == null) {
                break Label_0090;
            }
            try {
                final JSONObject jsonObject = new JSONObject();
                jsonObject.put("url", (Object)phurlOpener.getTargetURL());
                this.sendResponseToWebview(phurlOpener.getContentTemplateCallback(), jsonObject, null);
                final Bundle bundle = new Bundle();
                bundle.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.LaunchURL.getKey(), phurlOpener.getTargetURL());
                this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.LaunchedURL.toString(), bundle);
                final Bundle bundle2 = new Bundle();
                bundle2.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.CloseType.getKey(), PHContentRequest.PHDismissType.AdSelfDismiss.toString());
                this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.Dismissed.toString(), bundle2);
                this.contentDisplayer.get().dismiss();
            }
            catch (JSONException ex) {
                PHCrashReport.reportCrash((Exception)ex, "PHInterstitialActivity - onURLOpenerFinished", PHCrashReport.Urgency.critical);
                continue;
            }
            catch (Exception ex2) {
                PHCrashReport.reportCrash(ex2, "PHInterstitialActivity - onURLOpenerFinished", PHCrashReport.Urgency.critical);
                continue;
            }
            break;
        }
    }
}
