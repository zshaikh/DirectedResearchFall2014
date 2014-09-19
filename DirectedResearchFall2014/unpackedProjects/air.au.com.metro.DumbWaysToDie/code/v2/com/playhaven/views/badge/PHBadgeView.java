package v2.com.playhaven.views.badge;

import android.view.*;
import v2.com.playhaven.listeners.*;
import java.util.*;
import org.json.*;
import v2.com.playhaven.requests.badge.*;
import android.content.*;
import v2.com.playhaven.utils.*;
import v2.com.playhaven.requests.crashreport.*;
import v2.com.playhaven.model.*;
import android.graphics.*;

public class PHBadgeView extends View implements PHBadgeRequestListener
{
    private static HashMap<String, Class> renderMap;
    private JSONObject notificationData;
    private AbstractBadgeRenderer notificationRenderer;
    private String placement;
    public PHBadgeRequest request;
    
    static {
        PHBadgeView.renderMap = new HashMap<String, Class>();
    }
    
    public PHBadgeView(final Context context, final String placement) {
        super(context);
        this.placement = placement;
    }
    
    public static HashMap<String, Class> getRenderMap() {
        return PHBadgeView.renderMap;
    }
    
    public static void initRenderers() {
        PHBadgeView.renderMap.put("badge", PHBadgeRenderer.class);
    }
    
    public static void setBadgeRenderer(final Class value, final String s) {
        if (value.getSuperclass() != AbstractBadgeRenderer.class) {
            throw new IllegalArgumentException("Cannot create a new renderer of type " + s + " because it does not implement the PHNotificationRenderer interface");
        }
        PHBadgeView.renderMap.put(s, value);
    }
    
    public void clear() {
        this.request = null;
        this.notificationData = null;
    }
    
    public AbstractBadgeRenderer createBadgeRenderer(final JSONObject jsonObject) {
        if (PHBadgeView.renderMap.size() == 0) {
            initRenderers();
        }
        final String optString = jsonObject.optString("type", "badge");
        while (true) {
            try {
                final AbstractBadgeRenderer abstractBadgeRenderer = PHBadgeView.renderMap.get(optString).newInstance();
                abstractBadgeRenderer.loadResources(this.getContext(), this.getContext().getResources());
                PHStringUtil.log("Created subclass of PHNotificationRenderer of type: " + optString);
                return abstractBadgeRenderer;
            }
            catch (Exception ex) {
                PHCrashReport.reportCrash(ex, "PHBadgeView - createBadgeRenderer", PHCrashReport.Urgency.critical);
                final AbstractBadgeRenderer abstractBadgeRenderer = null;
                continue;
            }
            break;
        }
    }
    
    public JSONObject getNotificationData() {
        return this.notificationData;
    }
    
    public AbstractBadgeRenderer getNotificationRenderer() {
        return this.notificationRenderer;
    }
    
    public String getPlacement() {
        return this.placement;
    }
    
    public PHBadgeRequest getRequest() {
        return this.request;
    }
    
    public void onBadgeRequestFailed(final PHBadgeRequest phBadgeRequest, final PHError phError) {
        this.request = null;
        this.updateBadgeData(null);
    }
    
    public void onBadgeRequestSucceeded(final PHBadgeRequest phBadgeRequest, final JSONObject jsonObject) {
        this.request = null;
        final JSONObject optJSONObject = jsonObject.optJSONObject("notification");
        if (!JSONObject.NULL.equals(optJSONObject) && optJSONObject.length() > 0) {
            this.updateBadgeData(optJSONObject);
        }
    }
    
    protected void onDraw(final Canvas canvas) {
        try {
            if (this.notificationRenderer == null) {
                return;
            }
            this.notificationRenderer.draw(this.getContext(), canvas, this.notificationData);
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHBadgeView - onDraw", PHCrashReport.Urgency.critical);
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        try {
            Rect size = new Rect(0, 0, n, n2);
            if (this.notificationRenderer != null) {
                size = this.notificationRenderer.size(this.getContext(), this.notificationData);
            }
            this.setMeasuredDimension(size.width(), size.height());
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHBadgeView - onDraw", PHCrashReport.Urgency.critical);
        }
    }
    
    public void refresh() {
        (this.request = new PHBadgeRequest(this, this.placement)).send(this.getContext());
    }
    
    public void updateBadgeData(final JSONObject notificationData) {
        if (notificationData == null) {
            return;
        }
        try {
            this.notificationData = notificationData;
            this.notificationRenderer = this.createBadgeRenderer(notificationData);
            this.requestLayout();
            this.invalidate();
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHBadgeView - updateBadgeData", PHCrashReport.Urgency.critical);
        }
    }
}
