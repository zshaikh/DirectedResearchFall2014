package v2.com.playhaven.resources;

import java.util.*;
import v2.com.playhaven.resources.types.*;
import v2.com.playhaven.resources.data.*;
import v2.com.playhaven.requests.crashreport.*;

public class PHResourceManager
{
    private static PHResourceManager res_manager;
    private boolean hasLoaded;
    private Hashtable<String, PHResource> resources;
    
    static {
        PHResourceManager.res_manager = null;
    }
    
    private PHResourceManager() {
        super();
        this.resources = null;
        this.hasLoaded = false;
    }
    
    private void loadResources() {
        if (this.resources == null && !this.hasLoaded) {
            this.registerResources();
            this.hasLoaded = true;
        }
    }
    
    private void registerResources() {
        (this.resources = new Hashtable<String, PHResource>()).put("close_inactive", new PHCloseImageResource());
        this.resources.put("close_active", new PHCloseActiveImageResource());
        this.resources.put("badge_image", new PHBadgeImageResource());
    }
    
    public static PHResourceManager sharedResourceManager() {
        try {
            if (PHResourceManager.res_manager == null) {
                (PHResourceManager.res_manager = new PHResourceManager()).loadResources();
            }
            return PHResourceManager.res_manager;
        }
        catch (Exception ex) {
            PHCrashReport.reportCrash(ex, "PHResourceManager - sharedResourceManager", PHCrashReport.Urgency.critical);
            return PHResourceManager.res_manager;
        }
    }
    
    public PHResource getResource(final String key) {
        if (this.resources != null) {
            return this.resources.get(key);
        }
        return null;
    }
    
    public void registerResource(final String key, final PHResource value) {
        if (this.resources != null && value != null) {
            this.resources.put(key, value);
        }
    }
}
