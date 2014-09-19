package v2.com.playhaven.interstitial.requestbridge;

import java.util.*;
import v2.com.playhaven.interstitial.requestbridge.base.*;
import android.os.*;
import android.content.*;
import v2.com.playhaven.utils.*;

public class BridgeManager
{
    public static HashMap<String, RequestBridge> bridges;
    
    static {
        BridgeManager.bridges = new HashMap<String, RequestBridge>();
    }
    
    public static void attachDisplayer(final String key, final ContentDisplayer contentDisplayer) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        requestBridge.attachDisplayer(contentDisplayer);
    }
    
    public static void attachRequester(final String key, final ContentRequester contentRequester) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        requestBridge.attachRequester(contentRequester);
    }
    
    public static void closeBridge(final String s) {
        if (BridgeManager.bridges.get(s) == null) {
            return;
        }
        BridgeManager.bridges.remove(s);
    }
    
    public static void detachDisplayer(final String key) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        requestBridge.detachDisplayer();
    }
    
    public static void detachRequester(final String key) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        requestBridge.detachRequester();
    }
    
    public static RequestBridge getBridge(final String key) {
        return BridgeManager.bridges.get(key);
    }
    
    public static ContentDisplayer getDisplayer(final String key) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return null;
        }
        return requestBridge.getDisplayer();
    }
    
    public static ContentRequester getRequester(final String key) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return null;
        }
        return requestBridge.getRequester();
    }
    
    public static void openBridge(final String key, final RequestBridge value) {
        BridgeManager.bridges.put(key, value);
    }
    
    private static void sendBroadcast(final String s, final String s2, final String s3, final Bundle bundle, final Context context) {
        final Intent intent = new Intent(s);
        bundle.putString(RequestBridge.Message.Tag.getKey(), s2);
        bundle.putString(RequestBridge.Message.Event.getKey(), s3);
        intent.putExtra("v2.com.playhaven.notification", bundle);
        context.getApplicationContext().sendBroadcast(intent);
    }
    
    public static void sendMessageFromDisplayer(final String key, final String str, final Bundle bundle, final Context context) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        PHStringUtil.log("Sending message from displayer: " + str);
        sendBroadcast(requestBridge.getRequesterIntentFilter(), key, str, bundle, context);
    }
    
    public static void sendMessageFromRequester(final String key, final String s, final Bundle bundle, final Context context) {
        final RequestBridge requestBridge = BridgeManager.bridges.get(key);
        if (requestBridge == null) {
            return;
        }
        sendBroadcast(requestBridge.getDisplayerIntentFilter(), key, s, bundle, context);
    }
    
    public static void transferBridge(final String s, final String key) {
        final RequestBridge value = BridgeManager.bridges.get(s);
        if (value == null) {
            return;
        }
        BridgeManager.bridges.put(key, value);
        BridgeManager.bridges.remove(s);
        value.onTagChanged(key);
    }
}
