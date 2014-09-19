package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;
import org.json.*;

public interface PHSubContentRequestListener
{
    void onSubContentRequestFailed(PHSubContentRequest p0, PHError p1);
    
    void onSubContentRequestSucceeded(PHSubContentRequest p0, JSONObject p1);
}
