package com.playhaven.src.publishersdk.open;

import v2.com.playhaven.requests.open.*;
import java.lang.ref.*;
import android.content.*;
import v2.com.playhaven.configuration.*;
import com.playhaven.src.common.*;
import v2.com.playhaven.listeners.*;

public class PHPublisherOpenRequest extends PHOpenRequest implements PHAPIRequest
{
    private WeakReference<Context> context;
    
    public PHPublisherOpenRequest(final Context referent) {
        super();
        this.context = new WeakReference<Context>(referent);
    }
    
    public PHPublisherOpenRequest(final Context context, final Delegate delegate) {
        this(context);
        this.setDelegate(delegate);
    }
    
    @Override
    public void send() {
        new PHConfiguration().setCredentials(this.context.get(), PHConfig.token, PHConfig.secret);
        super.send(this.context.get());
    }
    
    @Override
    public void setDelegate(final Delegate delegate) {
        this.setOpenRequestListener(new APIRequestDelegateAdapter(delegate));
    }
    
    public void setPrefetchListener(final PrefetchListener prefetchListener) {
        super.setPrefetchListener(new PrefetchDelegateAdapter(prefetchListener));
    }
    
    public interface PrefetchListener
    {
        void prefetchFinished(PHPublisherOpenRequest p0);
    }
}
