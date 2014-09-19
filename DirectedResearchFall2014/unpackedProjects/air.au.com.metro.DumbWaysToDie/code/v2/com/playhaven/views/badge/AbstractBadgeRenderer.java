package v2.com.playhaven.views.badge;

import android.content.*;
import org.json.*;
import android.content.res.*;
import android.graphics.*;

public abstract class AbstractBadgeRenderer
{
    public abstract void draw(final Context p0, final Canvas p1, final JSONObject p2);
    
    public abstract void loadResources(final Context p0, final Resources p1);
    
    public abstract Rect size(final Context p0, final JSONObject p1);
}
