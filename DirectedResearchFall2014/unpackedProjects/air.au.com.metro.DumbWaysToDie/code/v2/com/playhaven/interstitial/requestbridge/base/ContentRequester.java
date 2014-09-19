package v2.com.playhaven.interstitial.requestbridge.base;

import v2.com.playhaven.model.*;
import android.content.*;

public interface ContentRequester
{
    PHContent getContent();
    
    Context getContext();
    
    String getTag();
    
    void onTagChanged(String p0);
}
