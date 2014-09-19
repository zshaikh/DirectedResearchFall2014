package com.facebook;

final class AppLinkData$2 implements Runnable
{
    final /* synthetic */ AppLinkData$CompletionHandler val$completionHandler;
    
    AppLinkData$2(final AppLinkData$CompletionHandler val$completionHandler) {
        this.val$completionHandler = val$completionHandler;
        super();
    }
    
    @Override
    public final void run() {
        this.val$completionHandler.onDeferredAppLinkDataFetched(null);
    }
}
