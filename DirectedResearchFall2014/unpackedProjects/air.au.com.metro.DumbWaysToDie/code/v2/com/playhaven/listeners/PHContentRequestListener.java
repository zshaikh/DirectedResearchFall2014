package v2.com.playhaven.listeners;

import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public interface PHContentRequestListener
{
    void onDismissedContent(PHContentRequest p0, PHContentRequest.PHDismissType p1);
    
    void onDisplayedContent(PHContentRequest p0, PHContent p1);
    
    void onFailedToDisplayContent(PHContentRequest p0, PHError p1);
    
    void onNoContent(PHContentRequest p0);
    
    void onReceivedContent(PHContentRequest p0, PHContent p1);
    
    void onSentContentRequest(PHContentRequest p0);
    
    void onWillDisplayContent(PHContentRequest p0, PHContent p1);
}
