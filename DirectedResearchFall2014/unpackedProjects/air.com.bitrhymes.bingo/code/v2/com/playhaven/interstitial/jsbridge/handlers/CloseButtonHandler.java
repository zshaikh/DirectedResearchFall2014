package v2.com.playhaven.interstitial.jsbridge.handlers;

import org.json.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import v2.com.playhaven.requests.crashreport.*;

public class CloseButtonHandler extends AbstractHandler
{
    public void handle(final JSONObject jsonObject) {
        if (jsonObject == null) {
            return;
        }
    Label_0109_Outer:
        while (true) {
            while (true) {
            Label_0166:
                while (true) {
                    Label_0148: {
                        try {
                            final String optString = jsonObject.optString("hidden");
                            PHStringUtil.log("WebView asks us to hide close button: " + optString);
                            if (!JSONObject.NULL.equals(optString) && optString.length() > 0) {
                                if (!Boolean.parseBoolean(optString)) {
                                    break Label_0148;
                                }
                                this.contentDisplayer.get().disableClosable();
                            }
                            final JSONObject jsonObject2 = new JSONObject();
                            if (this.contentDisplayer.get().isClosable()) {
                                final String s = "false";
                                jsonObject2.put("hidden", (Object)s);
                                this.sendResponseToWebview(this.bridge.getCurrentQueryVar("callback"), jsonObject2, null);
                                return;
                            }
                            break Label_0166;
                        }
                        catch (Exception ex) {
                            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - handleCloseButton", PHCrashReport.Urgency.critical);
                            return;
                        }
                    }
                    this.contentDisplayer.get().enableClosable();
                    continue Label_0109_Outer;
                }
                final String s = "true";
                continue;
            }
        }
    }
}
