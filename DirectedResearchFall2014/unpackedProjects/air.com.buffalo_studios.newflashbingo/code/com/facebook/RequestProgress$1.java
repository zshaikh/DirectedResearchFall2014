package com.facebook;

class RequestProgress$1 implements Runnable
{
    final /* synthetic */ RequestProgress this$0;
    final /* synthetic */ Request$OnProgressCallback val$callbackCopy;
    final /* synthetic */ long val$currentCopy;
    final /* synthetic */ long val$maxProgressCopy;
    
    RequestProgress$1(final RequestProgress this$0, final Request$OnProgressCallback val$callbackCopy, final long val$currentCopy, final long val$maxProgressCopy) {
        this.this$0 = this$0;
        this.val$callbackCopy = val$callbackCopy;
        this.val$currentCopy = val$currentCopy;
        this.val$maxProgressCopy = val$maxProgressCopy;
        super();
    }
    
    @Override
    public void run() {
        this.val$callbackCopy.onProgress(this.val$currentCopy, this.val$maxProgressCopy);
    }
}
