package com.facebook;

import android.util.*;
import java.util.*;

final class Request$4 implements Runnable
{
    final /* synthetic */ ArrayList val$callbacks;
    final /* synthetic */ RequestBatch val$requests;
    
    Request$4(final ArrayList val$callbacks, final RequestBatch val$requests) {
        this.val$callbacks = val$callbacks;
        this.val$requests = val$requests;
        super();
    }
    
    @Override
    public final void run() {
        for (final Pair pair : this.val$callbacks) {
            ((Request$Callback)pair.first).onCompleted((Response)pair.second);
        }
        final Iterator<RequestBatch$Callback> iterator2 = this.val$requests.getCallbacks().iterator();
        while (iterator2.hasNext()) {
            iterator2.next().onBatchCompleted(this.val$requests);
        }
    }
}
