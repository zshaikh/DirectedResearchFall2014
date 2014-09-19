package v2.com.playhaven.interstitial.webview;

import android.webkit.*;
import android.net.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.requests.crashreport.*;

public class PHWebViewChrome extends WebChromeClient
{
    public boolean onConsoleMessage(final ConsoleMessage consoleMessage) {
        String lastPathSegment = "(no file)";
        try {
            if (consoleMessage.sourceId() != null) {
                lastPathSegment = Uri.parse(consoleMessage.sourceId()).getLastPathSegment();
            }
            PHStringUtil.log("Javascript: " + consoleMessage.message() + " at line (" + lastPathSegment + ") :" + consoleMessage.lineNumber());
            return true;
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHWebViewChrome - onConsoleMessage", PHCrashReport.Urgency.low);
            return true;
        }
    }
}
