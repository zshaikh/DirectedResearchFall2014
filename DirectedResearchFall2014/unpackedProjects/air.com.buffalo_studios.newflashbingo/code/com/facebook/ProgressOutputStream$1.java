package com.facebook;

import java.io.*;
import java.util.*;
import android.os.*;

class ProgressOutputStream$1 implements Runnable
{
    final /* synthetic */ ProgressOutputStream this$0;
    final /* synthetic */ RequestBatch$OnProgressCallback val$progressCallback;
    
    ProgressOutputStream$1(final ProgressOutputStream this$0, final RequestBatch$OnProgressCallback val$progressCallback) {
        this.this$0 = this$0;
        this.val$progressCallback = val$progressCallback;
        super();
    }
    
    @Override
    public void run() {
        this.val$progressCallback.onBatchProgress(this.this$0.requests, this.this$0.batchProgress, this.this$0.maxProgress);
    }
}
