package v2.com.playhaven.interstitial.jsbridge;

import v2.com.playhaven.model.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.utils.*;
import android.os.*;

public interface ManipulatableContentDisplayer
{
    void disableClosable();
    
    void dismiss();
    
    void enableClosable();
    
    PHContent getContent();
    
    String getDeviceID();
    
    String getSecret();
    
    String getTag();
    
    boolean isClosable();
    
    void launchNestedContentDisplayer(PHContent p0);
    
    void launchSubRequest(PHSubContentRequest p0);
    
    void launchURL(String p0, PHURLOpener.Listener p1);
    
    void openURL(String p0, PHURLOpener.Listener p1);
    
    void sendEventToRequester(String p0, Bundle p1);
}
