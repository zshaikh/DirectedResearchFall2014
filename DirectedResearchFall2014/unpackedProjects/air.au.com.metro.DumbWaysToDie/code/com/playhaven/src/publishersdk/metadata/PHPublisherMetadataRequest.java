package com.playhaven.src.publishersdk.metadata;

import v2.com.playhaven.requests.badge.*;
import java.lang.ref.*;
import android.content.*;
import v2.com.playhaven.listeners.*;
import v2.com.playhaven.configuration.*;
import com.playhaven.src.common.*;

public class PHPublisherMetadataRequest extends PHBadgeRequest implements PHAPIRequest
{
    private WeakReference<Context> context;
    
    public PHPublisherMetadataRequest(final Context context, final Delegate delegate, final String s) {
        this(context, s);
        super.setMetadataListener(new MetadataDelegateAdapter(delegate));
    }
    
    public PHPublisherMetadataRequest(final Context referent, final String s) {
        super(s);
        this.context = new WeakReference<Context>(referent);
    }
    
    @Override
    public void send() {
        new PHConfiguration().setCredentials(this.context.get(), PHConfig.token, PHConfig.secret);
        super.send(this.context.get());
    }
    
    @Override
    public void setDelegate(final Delegate delegate) {
        super.setMetadataListener(new MetadataDelegateAdapter(delegate));
    }
}
