package com.facebook.widget;

class FriendPickerFragment$ImmediateLoadingStrategy extends PickerFragment$LoadingStrategy
{
    final /* synthetic */ FriendPickerFragment this$0;
    
    private FriendPickerFragment$ImmediateLoadingStrategy(final FriendPickerFragment this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    private void followNextLink() {
        this.this$0.displayActivityCircle();
        this.loader.followNextLink();
    }
    
    @Override
    protected void onLoadFinished(final GraphObjectPagingLoader graphObjectPagingLoader, final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        super.onLoadFinished(graphObjectPagingLoader, simpleGraphObjectCursor);
        if (simpleGraphObjectCursor != null && !graphObjectPagingLoader.isLoading()) {
            if (simpleGraphObjectCursor.areMoreObjectsAvailable()) {
                this.followNextLink();
                return;
            }
            this.this$0.hideActivityCircle();
            if (simpleGraphObjectCursor.isFromCache()) {
                long n;
                if (simpleGraphObjectCursor.getCount() == 0) {
                    n = 2000L;
                }
                else {
                    n = 0L;
                }
                graphObjectPagingLoader.refreshOriginalRequest(n);
            }
        }
    }
}
