package com.facebook.widget;

import android.content.*;
import c.m.x.a.gv.*;
import android.graphics.drawable.*;
import com.facebook.internal.*;
import android.os.*;
import com.milkmangames.extensions.android.goviral.*;
import com.facebook.model.*;
import android.view.animation.*;
import java.util.*;
import com.facebook.*;
import android.view.*;
import android.widget.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.*;

abstract class PickerFragment$LoadingStrategy
{
    protected static final int CACHED_RESULT_REFRESH_DELAY = 2000;
    protected GraphObjectAdapter adapter;
    protected GraphObjectPagingLoader loader;
    final /* synthetic */ PickerFragment this$0;
    
    PickerFragment$LoadingStrategy(final PickerFragment this$0) {
        this.this$0 = this$0;
        super();
    }
    
    public void attach(final GraphObjectAdapter adapter) {
        (this.loader = (GraphObjectPagingLoader)this.this$0.getLoaderManager().a(new PickerFragment$LoadingStrategy$1(this))).setOnErrorListener(new PickerFragment$LoadingStrategy$2(this));
        (this.adapter = adapter).changeCursor(this.loader.getCursor());
        this.adapter.setOnErrorListener(new PickerFragment$LoadingStrategy$3(this));
    }
    
    public void clearResults() {
        if (this.loader != null) {
            this.loader.clearResults();
        }
    }
    
    public void detach() {
        this.adapter.setDataNeededListener(null);
        this.adapter.setOnErrorListener(null);
        this.loader.setOnErrorListener(null);
        this.loader = null;
        this.adapter = null;
    }
    
    public boolean isDataPresentOrLoading() {
        return !this.adapter.isEmpty() || this.loader.isLoading();
    }
    
    protected GraphObjectPagingLoader onCreateLoader() {
        return new GraphObjectPagingLoader((Context)this.this$0.getActivity(), this.this$0.graphObjectClass);
    }
    
    protected void onLoadFinished(final GraphObjectPagingLoader graphObjectPagingLoader, final SimpleGraphObjectCursor simpleGraphObjectCursor) {
        this.this$0.updateAdapter(simpleGraphObjectCursor);
    }
    
    protected void onLoadReset(final GraphObjectPagingLoader graphObjectPagingLoader) {
        this.adapter.changeCursor(null);
    }
    
    protected void onStartLoading(final GraphObjectPagingLoader graphObjectPagingLoader, final Request request) {
        this.this$0.displayActivityCircle();
    }
    
    public void startLoading(final Request request) {
        if (this.loader != null) {
            this.loader.startLoading(request, true);
            this.onStartLoading(this.loader, request);
        }
    }
}
