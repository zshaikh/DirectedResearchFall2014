package com.facebook.widget;

import java.util.concurrent.*;
import com.facebook.*;

class WorkQueue$1 implements Runnable
{
    final /* synthetic */ WorkQueue this$0;
    final /* synthetic */ WorkQueue$WorkNode val$node;
    
    WorkQueue$1(final WorkQueue this$0, final WorkQueue$WorkNode val$node) {
        this.this$0 = this$0;
        this.val$node = val$node;
        super();
    }
    
    @Override
    public void run() {
        try {
            this.val$node.getCallback().run();
        }
        finally {
            this.this$0.finishItemAndStartNew(this.val$node);
        }
    }
}
