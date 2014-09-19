package v2.com.playhaven.requests.content;

import v2.com.playhaven.requests.base.*;
import v2.com.playhaven.listeners.*;
import android.content.*;
import v2.com.playhaven.model.*;
import org.json.*;
import v2.com.playhaven.utils.*;

public class PHSubContentRequest extends PHAPIRequest
{
    private PHSubContentRequestListener listener;
    private String webviewCallback;
    
    public PHSubContentRequest(final PHSubContentRequestListener listener) {
        super();
        this.listener = listener;
    }
    
    public PHSubContentRequestListener getSubContentListener() {
        return this.listener;
    }
    
    @Override
    public String getURL(final Context context) {
        if (this.fullUrl == null) {
            this.fullUrl = this.baseURL(context);
        }
        return this.fullUrl;
    }
    
    public String getWebviewCallback() {
        return this.webviewCallback;
    }
    
    @Override
    public void handleRequestFailure(final PHError phError) {
        if (this.listener != null) {
            this.listener.onSubContentRequestFailed(this, phError);
        }
    }
    
    @Override
    public void handleRequestSuccess(final JSONObject jsonObject) {
        if (this.listener != null) {
            this.listener.onSubContentRequestSucceeded(this, jsonObject);
        }
    }
    
    @Override
    public void send(final Context context) {
        if (!JSONObject.NULL.equals(this.baseURL(context)) && this.baseURL(context).length() > 0) {
            super.send(context);
            return;
        }
        PHStringUtil.log("No URL set for PHSubContentRequest");
    }
    
    public void setSubContentReuqestListener(final PHSubContentRequestListener listener) {
        this.listener = listener;
    }
    
    public void setWebviewCallback(final String webviewCallback) {
        this.webviewCallback = webviewCallback;
    }
}
