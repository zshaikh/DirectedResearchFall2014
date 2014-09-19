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
    Label_0106_Outer:
        while (true) {
            while (true) {
            Label_0163:
                while (true) {
                    Label_0145: {
                        try {
                            final String optString = jsonObject.optString("hidden");
                            PHStringUtil.log("WebView asks us to hide close button: " + optString);
                            if (!JSONObject.NULL.equals(optString) && optString.length() > 0) {
                                if (!Boolean.parseBoolean(optString)) {
                                    break Label_0145;
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
                            break Label_0163;
                        }
                        catch (Exception ex) {
                            PHCrashReport.reportCrash(ex, "PHInterstitialActivity - handleCloseButton", PHCrashReport.Urgency.critical);
                            return;
                        }
                    }
                    this.contentDisplayer.get().enableClosable();
                    continue Label_0106_Outer;
                }
                final String s = "true";
                continue;
            }
        }
    }
}
