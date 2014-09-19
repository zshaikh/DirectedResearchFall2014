package com.facebook.widget;

class PlacePickerFragment$AsNeededLoadingStrategy extends PickerFragment$LoadingStrategy
{
    final /* synthetic */ PlacePickerFragment this$0;
    
    private PlacePickerFragment$AsNeededLoadingStrategy(final PlacePickerFragment this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    @Override
    public void attach(final GraphObjectAdapter graphObjectAdapter) {
        super.attach(graphObjectAdapter);
        this.adapter.setDataNeededListener(new PlacePickerFragment$AsNeededLoadingStrategy$1(this));
    }
    
    @Override
    protected void onLoadFinished(final GraphObjectPagingLoader graphObjectPagingLoader, final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        super.onLoadFinished(graphObjectPagingLoader, simpleGraphObjectCursor);
        if (simpleGraphObjectCursor != null && !graphObjectPagingLoader.isLoading()) {
            this.this$0.hideActivityCircle();
            if (simpleGraphObjectCursor.isFromCache()) {
                long n;
                if (simpleGraphObjectCursor.areMoreObjectsAvailable()) {
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
