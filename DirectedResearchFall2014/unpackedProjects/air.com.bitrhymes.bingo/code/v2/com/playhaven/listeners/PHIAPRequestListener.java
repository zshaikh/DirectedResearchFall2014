package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.purchases.*;
import v2.com.playhaven.model.*;

public interface PHIAPRequestListener
{
    void onIAPRequestFailed(PHIAPTrackingRequest p0, PHError p1);
    
    void onIAPRequestSucceeded(PHIAPTrackingRequest p0);
}
