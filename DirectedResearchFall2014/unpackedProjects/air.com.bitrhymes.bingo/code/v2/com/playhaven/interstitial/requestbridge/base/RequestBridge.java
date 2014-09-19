package v2.com.playhaven.interstitial.requestbridge.base;

import v2.com.playhaven.utils.*;
import android.os.*;
import android.content.*;

public abstract class RequestBridge
{
    public static final String BROADCAST_METADATA_KEY = "v2.com.playhaven.notification";
    private ContentDisplayer displayer;
    private BroadcastReceiver displayerReceiver;
    private ContentRequester requester;
    private BroadcastReceiver requesterReceiver;
    private String tag;
    
    public RequestBridge(final String tag) {
        super();
        this.tag = tag;
    }
    
    private void registerDisplayerReceiver() {
        if (this.displayer.getContext() == null) {
            return;
        }
        this.displayerReceiver = new BroadcastReceiver() {
            public void onReceive(final Context context, final Intent intent) {
                final Bundle bundleExtra = intent.getBundleExtra("v2.com.playhaven.notification");
                final String string = bundleExtra.getString(Message.Event.getKey());
                final String string2 = bundleExtra.getString(Message.Tag.getKey());
                if (string2 == null || !string2.equals(RequestBridge.this.tag)) {
                    return;
                }
                PHStringUtil.log("Receiving message from requester: " + string);
                RequestBridge.this.onRequesterSentMessage(string, bundleExtra);
            }
        };
        this.displayer.getContext().registerReceiver(this.displayerReceiver, new IntentFilter(this.getDisplayerIntentFilter()));
    }
    
    private void registerRequesterReceiver() {
        if (this.requester.getContext() == null) {
            return;
        }
        this.requesterReceiver = new BroadcastReceiver() {
            public void onReceive(final Context context, final Intent intent) {
                final Bundle bundleExtra = intent.getBundleExtra("v2.com.playhaven.notification");
                final String string = bundleExtra.getString(Message.Event.getKey());
                final String string2 = bundleExtra.getString(Message.Tag.getKey());
                if (string2 == null || !string2.equals(RequestBridge.this.tag)) {
                    return;
                }
                PHStringUtil.log("Receiving message from displayer: " + string);
                RequestBridge.this.onDisplayerSentMessage(string, bundleExtra);
            }
        };
        this.requester.getContext().registerReceiver(this.requesterReceiver, new IntentFilter(this.getRequesterIntentFilter()));
    }
    
    public void attachDisplayer(final ContentDisplayer displayer) {
        this.displayer = displayer;
        this.registerDisplayerReceiver();
        this.onDisplayerAttached(displayer);
    }
    
    public void attachRequester(final ContentRequester requester) {
        this.requester = requester;
        this.registerRequesterReceiver();
        this.onRequesterAttached(requester);
    }
    
    public abstract void cleanup();
    
    public void close() {
        this.detachRequester();
        this.detachDisplayer();
        this.cleanup();
    }
    
    public void detachDisplayer() {
        if (this.displayer != null) {
            this.displayer.getContext().unregisterReceiver(this.displayerReceiver);
        }
        this.displayer = null;
    }
    
    public void detachRequester() {
        if (this.requester != null) {
            this.requester.getContext().unregisterReceiver(this.requesterReceiver);
        }
        this.requester = null;
    }
    
    public ContentDisplayer getDisplayer() {
        return this.displayer;
    }
    
    public abstract String getDisplayerIntentFilter();
    
    public ContentRequester getRequester() {
        return this.requester;
    }
    
    public abstract String getRequesterIntentFilter();
    
    public String getTag() {
        return this.tag;
    }
    
    public void onDisplayerAttached(final ContentDisplayer contentDisplayer) {
    }
    
    public abstract void onDisplayerSentMessage(final String p0, final Bundle p1);
    
    public void onRequesterAttached(final ContentRequester contentRequester) {
    }
    
    public abstract void onRequesterSentMessage(final String p0, final Bundle p1);
    
    public void onTagChanged(final String tag) {
        this.tag = tag;
        if (this.requester != null) {
            this.requester.onTagChanged(tag);
        }
        if (this.displayer != null) {
            this.displayer.onTagChanged(tag);
        }
    }
    
    public enum Message
    {
        Event("event_contentview"), 
        Tag("content_tag");
        
        private String key;
        
        private Message(final String key) {
            this.key = key;
        }
        
        public String getKey() {
            return this.key;
        }
    }
}
