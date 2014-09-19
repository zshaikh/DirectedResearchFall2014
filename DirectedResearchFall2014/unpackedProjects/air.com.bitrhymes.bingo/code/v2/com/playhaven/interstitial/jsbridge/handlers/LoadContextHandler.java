package v2.com.playhaven.interstitial.jsbridge.handlers;

import org.json.*;
import v2.com.playhaven.configuration.*;
import v2.com.playhaven.interstitial.jsbridge.*;

public class LoadContextHandler extends AbstractHandler
{
    private static final String SET_PROTOCOL_JAVASCRIPT = "window.PlayHavenDispatchProtocolVersion = %d";
    
    public void handle(final JSONObject jsonObject) {
        this.bridge.runJavascript(String.format("window.PlayHavenDispatchProtocolVersion = %d", new PHConfiguration().getJSBridgeProtocolVersion()));
        this.sendResponseToWebview(this.bridge.getCurrentQueryVar("callback"), this.contentDisplayer.get().getContent().context, null);
    }
}
