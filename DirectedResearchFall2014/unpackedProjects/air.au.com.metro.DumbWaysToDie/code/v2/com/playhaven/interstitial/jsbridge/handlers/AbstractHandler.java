package v2.com.playhaven.interstitial.jsbridge.handlers;

import java.lang.ref.*;
import v2.com.playhaven.interstitial.jsbridge.*;
import org.json.*;

public abstract class AbstractHandler
{
    protected PHJSBridge bridge;
    protected WeakReference<ManipulatableContentDisplayer> contentDisplayer;
    
    private JSONObject getRequestContext() {
        try {
            final String currentQueryVar = this.bridge.getCurrentQueryVar("context");
            JSONObject obj;
            if (currentQueryVar == null || currentQueryVar.equals("undefined") || currentQueryVar.equals("null")) {
                obj = new JSONObject();
            }
            else {
                obj = new JSONObject(currentQueryVar);
            }
            if (!JSONObject.NULL.equals(obj) && obj.length() > 0) {
                return obj;
            }
        }
        catch (JSONException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    public void attachBridge(final PHJSBridge bridge) {
        this.bridge = bridge;
    }
    
    public void attachContentDisplayer(final ManipulatableContentDisplayer referent) {
        this.contentDisplayer = new WeakReference<ManipulatableContentDisplayer>(referent);
    }
    
    protected boolean doesntHaveContentDisplayer() {
        return this.contentDisplayer == null || this.contentDisplayer.get() == null;
    }
    
    public final void handle() {
        if (this.doesntHaveContentDisplayer()) {
            return;
        }
        this.handle(this.getRequestContext());
    }
    
    protected abstract void handle(final JSONObject p0);
    
    protected void sendResponseToWebview(final String s, final JSONObject jsonObject, final JSONObject jsonObject2) {
        if (this.bridge == null) {
            return;
        }
        this.bridge.sendMessageToWebview(s, jsonObject, jsonObject2);
    }
}
