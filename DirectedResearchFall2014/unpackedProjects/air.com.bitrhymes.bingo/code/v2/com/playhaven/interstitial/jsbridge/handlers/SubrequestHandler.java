package v2.com.playhaven.interstitial.jsbridge.handlers;

import v2.com.playhaven.listeners.*;
import v2.com.playhaven.interstitial.*;
import android.os.*;
import v2.com.playhaven.interstitial.requestbridge.bridges.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.requests.crashreport.*;
import org.json.*;
import v2.com.playhaven.model.*;

public class SubrequestHandler extends AbstractHandler implements PHSubContentRequestListener
{
    private void notifyRequesterOfError(final PHContentEnums.Error error) {
        final Bundle bundle = new Bundle();
        bundle.putString(ContentRequestToInterstitialBridge.InterstitialEventArgument.Error.toString(), error.toString());
        this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.Failed.toString(), bundle);
    }
    
    private void notifyRequesterOfStarting() {
        this.contentDisplayer.get().sendEventToRequester(ContentRequestToInterstitialBridge.InterstitialEvent.SentSubrequest.toString(), new Bundle());
    }
    
    public void handle(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
        final PHSubContentRequest phSubContentRequest = new PHSubContentRequest(this);
        phSubContentRequest.setBaseURL(jsonObject.optString("url", ""));
        phSubContentRequest.setWebviewCallback(this.bridge.getCurrentQueryVar("callback"));
        this.contentDisplayer.get().launchSubRequest(phSubContentRequest);
        this.notifyRequesterOfStarting();
    }
    
    @Override
    public void onSubContentRequestFailed(final PHSubContentRequest phSubContentRequest, final PHError phError) {
        if (phSubContentRequest == null) {
            return;
        }
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.putOpt("error", (Object)"1");
            this.sendResponseToWebview(phSubContentRequest.getWebviewCallback(), null, jsonObject);
            this.notifyRequesterOfError(PHContentEnums.Error.FailedSubrequest);
        }
        catch (JSONException ex) {
            PHCrashReport.reportCrash((Exception)ex, "PHInterstitialActivity - requestFailed(request, responseData)", PHCrashReport.Urgency.low);
        }
        catch (Exception ex2) {
            PHCrashReport.reportCrash(ex2, "PHInterstitialActivity - requestFailed(request, responseData)", PHCrashReport.Urgency.critical);
        }
    }
    
    @Override
    public void onSubContentRequestSucceeded(final PHSubContentRequest phSubContentRequest, final JSONObject jsonObject) {
        if (jsonObject.length() == 0) {
            return;
        }
        try {
            final PHContent phContent = new PHContent(jsonObject);
            if (phContent.url != null) {
                this.contentDisplayer.get().launchNestedContentDisplayer(phContent);
                this.sendResponseToWebview(phSubContentRequest.getWebviewCallback(), jsonObject, null);
                return;
            }
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - requestSucceeded(request, responseData)", PHCrashReport.Urgency.critical);
            return;
        }
        try {
            final JSONObject jsonObject2 = new JSONObject();
            jsonObject2.put("error", (Object)"1");
            this.sendResponseToWebview(phSubContentRequest.getWebviewCallback(), jsonObject, jsonObject2);
            this.notifyRequesterOfError(PHContentEnums.Error.FailedSubrequest);
        }
        catch (JSONException ex2) {
            ex2.printStackTrace();
        }
    }
}
