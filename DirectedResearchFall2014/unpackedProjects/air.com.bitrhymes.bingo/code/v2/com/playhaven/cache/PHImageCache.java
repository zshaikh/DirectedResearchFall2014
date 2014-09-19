package v2.com.playhaven.cache;

import v2.com.playhaven.utils.*;
import v2.com.playhaven.requests.open.*;
import org.json.*;
import java.util.*;
import v2.com.playhaven.model.*;

public class PHImageCache
{
    private static String IMAGE_KEY;
    private static String LANDSCAPE_KEY;
    private static String NO_NAME;
    private static String PORTRAIT_KEY;
    private static String URL_KEY;
    private static PHImageCache sharedImageCache;
    
    static {
        PHImageCache.NO_NAME = "<no name>";
        PHImageCache.IMAGE_KEY = "image";
        PHImageCache.URL_KEY = "url";
        PHImageCache.PORTRAIT_KEY = "PH_PORTRAIT";
        PHImageCache.LANDSCAPE_KEY = "PH_LANDSCAPE";
    }
    
    private void cacheAllImagesInContent(final JSONObject jsonObject) {
        if (jsonObject != null && jsonObject.length() != 0) {
            final LinkedList<JSONNode> list = new LinkedList<JSONNode>();
            list.addFirst(new JSONNode(jsonObject, PHImageCache.NO_NAME));
            while (list.size() > 0) {
                final JSONNode jsonNode = list.removeLast();
                this.convertNodeToCached(jsonNode);
                this.enqueueNodeChildren(jsonNode, list);
            }
        }
    }
    
    private void cacheImageEntry(final JSONObject jsonObject) {
        final JSONObject optJSONObject = jsonObject.optJSONObject(PHImageCache.PORTRAIT_KEY);
        final JSONObject optJSONObject2 = jsonObject.optJSONObject(PHImageCache.LANDSCAPE_KEY);
        Label_0040: {
            if (optJSONObject == null) {
                break Label_0040;
            }
            try {
                optJSONObject.putOpt(PHImageCache.URL_KEY, (Object)this.cacheResource(optJSONObject.optString(PHImageCache.URL_KEY, (String)null)));
                if (optJSONObject2 != null) {
                    optJSONObject2.putOpt(PHImageCache.URL_KEY, (Object)this.cacheResource(optJSONObject2.optString(PHImageCache.URL_KEY, (String)null)));
                }
            }
            catch (JSONException ex) {}
        }
    }
    
    private String cacheResource(final String url) {
        if (url == null || PHCache.hasNotBeenInstalled()) {
            return url;
        }
        final String cachedFile = PHCache.getSharedCache().getCachedFile(url);
        PHStringUtil.log("Checking for image url in cache: " + url + " and finding local URL: " + cachedFile);
        if (cachedFile != null) {
            return cachedFile;
        }
        PHStringUtil.log("Starting new cache request for image: " + url);
        final PHPrefetchTask phPrefetchTask = new PHPrefetchTask();
        phPrefetchTask.setURL(url);
        phPrefetchTask.execute((Object[])new Integer[0]);
        return url;
    }
    
    private void convertNodeToCached(final JSONNode jsonNode) {
        if (jsonNode.isObject() && jsonNode.nameIs("image")) {
            this.cacheImageEntry(jsonNode.object);
        }
    }
    
    private void enqueueNodeChildren(final JSONNode jsonNode, final LinkedList<JSONNode> list) {
        if (jsonNode != null && jsonNode.children() != 0) {
            if (jsonNode.isArray()) {
                final JSONArray array = jsonNode.array;
                for (int i = 0; i < array.length(); ++i) {
                    final JSONObject optJSONObject = array.optJSONObject(i);
                    if (optJSONObject != null) {
                        list.addFirst(new JSONNode(optJSONObject, PHImageCache.NO_NAME));
                    }
                    else {
                        final JSONArray optJSONArray = array.optJSONArray(i);
                        if (optJSONArray != null) {
                            list.addFirst(new JSONNode(optJSONArray, PHImageCache.NO_NAME));
                        }
                    }
                }
            }
            else if (jsonNode.isObject()) {
                final JSONObject object = jsonNode.object;
                final Iterator keys = object.keys();
                while (keys.hasNext()) {
                    final String s = keys.next();
                    final JSONObject optJSONObject2 = object.optJSONObject(s);
                    if (optJSONObject2 != null) {
                        list.addFirst(new JSONNode(optJSONObject2, s));
                    }
                    else {
                        final JSONArray optJSONArray2 = object.optJSONArray(s);
                        if (optJSONArray2 == null) {
                            continue;
                        }
                        list.addFirst(new JSONNode(optJSONArray2, s));
                    }
                }
            }
        }
    }
    
    public static PHImageCache getSharedCache() {
        if (PHCache.hasBeenInstalled() && PHImageCache.sharedImageCache == null) {
            PHImageCache.sharedImageCache = new PHImageCache();
        }
        return PHImageCache.sharedImageCache;
    }
    
    public static boolean hasBeenInstalled() {
        return PHCache.hasBeenInstalled();
    }
    
    public PHContent cacheImages(final PHContent phContent) {
        PHStringUtil.log("Caching images");
        this.cacheAllImagesInContent(phContent.context);
        return phContent;
    }
    
    private static class JSONNode
    {
        public JSONArray array;
        public String name;
        public JSONObject object;
        
        public JSONNode(final JSONArray array) {
            super();
            this.array = array;
        }
        
        public JSONNode(final JSONArray array, final String name) {
            super();
            this.array = array;
            this.name = name;
        }
        
        public JSONNode(final JSONObject object) {
            super();
            this.object = object;
        }
        
        public JSONNode(final JSONObject object, final String name) {
            super();
            this.object = object;
            this.name = name;
        }
        
        public int children() {
            if (this.isObject()) {
                return this.object.length();
            }
            if (this.isArray()) {
                return this.array.length();
            }
            return -1;
        }
        
        public boolean hasName() {
            return this.name != null;
        }
        
        public boolean isArray() {
            return this.array != null;
        }
        
        public boolean isObject() {
            return this.object != null;
        }
        
        public boolean nameIs(final String anObject) {
            return this.hasName() && anObject.equals(anObject);
        }
    }
}
