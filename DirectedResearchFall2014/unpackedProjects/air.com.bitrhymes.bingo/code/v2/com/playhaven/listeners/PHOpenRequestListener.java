package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.open.*;
import v2.com.playhaven.model.*;

public interface PHOpenRequestListener
{
    void onOpenFailed(PHOpenRequest p0, PHError p1);
    
    void onOpenSuccessful(PHOpenRequest p0);
}
