package v2.com.playhaven.requests.badge;

import v2.com.playhaven.requests.base.*;
import v2.com.playhaven.listeners.*;
import android.content.*;
import java.util.*;
import v2.com.playhaven.model.*;
import org.json.*;
import v2.com.playhaven.interstitial.*;

public class PHBadgeRequest extends PHAPIRequest
{
    private PHBadgeRequestListener listener;
    public String placement;
    
    public PHBadgeRequest(final String placement) {
        super();
        this.placement = "";
        this.placement = placement;
    }
    
    public PHBadgeRequest(final PHBadgeRequestListener metadataListener, final String s) {
        this(s);
        this.setMetadataListener(metadataListener);
    }
    
    @Override
    public String baseURL(final Context context) {
        return super.createAPIURL(context, "/v3/publisher/content/");
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        if (this.placement != null) {
            hashtable.put("placement_id", this.placement);
        }
        hashtable.put("metadata", "1");
        return hashtable;
    }
    
    public PHBadgeRequestListener getListener() {
        return this.listener;
    }
    
    public PHBadgeRequestListener getMetadataListener() {
        return this.listener;
    }
    
    @Override
    public void handleRequestFailure(final PHError phError) {
        if (this.listener != null) {
            this.listener.onBadgeRequestFailed(this, phError);
        }
    }
    
    @Override
    public void handleRequestSuccess(final JSONObject obj) {
        if (obj == null || JSONObject.NULL.equals(obj)) {
            if (this.listener != null) {
                this.listener.onBadgeRequestFailed(this, new PHError(PHContentEnums.Error.NoResponseField.getMessage()));
            }
        }
        else if (this.listener != null) {
            this.listener.onBadgeRequestSucceeded(this, obj);
        }
    }
    
    public void setMetadataListener(final PHBadgeRequestListener listener) {
        this.listener = listener;
    }
}
