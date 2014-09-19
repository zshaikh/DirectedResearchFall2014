package com.facebook.widget;

import com.facebook.internal.*;
import com.facebook.*;

class PlacePickerFragment$3 implements Runnable
{
    final /* synthetic */ PlacePickerFragment this$0;
    
    PlacePickerFragment$3(final PlacePickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void run() {
        try {
            this.this$0.loadData(true);
        }
        catch (FacebookException ex) {
            final PickerFragment$OnErrorListener onErrorListener = this.this$0.getOnErrorListener();
            if (onErrorListener != null) {
                onErrorListener.onError(this.this$0, ex);
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", ex);
        }
        catch (Exception ex3) {
            final FacebookException ex2 = new FacebookException(ex3);
            final PickerFragment$OnErrorListener onErrorListener2 = this.this$0.getOnErrorListener();
            if (onErrorListener2 != null) {
                onErrorListener2.onError(this.this$0, ex2);
                return;
            }
            Logger.log(LoggingBehavior.REQUESTS, "PlacePickerFragment", "Error loading data : %s", ex2);
        }
    }
}
