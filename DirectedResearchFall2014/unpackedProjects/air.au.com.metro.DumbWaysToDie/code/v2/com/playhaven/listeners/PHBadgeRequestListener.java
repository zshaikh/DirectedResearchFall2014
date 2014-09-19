package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.badge.*;
import v2.com.playhaven.model.*;
import org.json.*;

public interface PHBadgeRequestListener
{
    void onBadgeRequestFailed(PHBadgeRequest p0, PHError p1);
    
    void onBadgeRequestSucceeded(PHBadgeRequest p0, JSONObject p1);
}
