package v2.com.playhaven.interstitial.requestbridge.base;

import v2.com.playhaven.model.*;
import android.content.*;

public interface ContentDisplayer
{
    void dismiss();
    
    PHContent getContent();
    
    Context getContext();
    
    String getTag();
    
    void onTagChanged(String p0);
}