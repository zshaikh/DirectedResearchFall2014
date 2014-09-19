package com.facebook;

import android.content.*;
import java.util.concurrent.*;
import com.facebook.model.*;
import android.os.*;
import com.facebook.internal.*;
import org.json.*;
import java.math.*;
import java.util.*;

final class AppEventsLogger$5 implements Request$Callback
{
    final /* synthetic */ AppEventsLogger$AccessTokenAppIdPair val$accessTokenAppId;
    final /* synthetic */ AppEventsLogger$FlushStatistics val$flushState;
    final /* synthetic */ Request val$postRequest;
    final /* synthetic */ AppEventsLogger$SessionEventsState val$sessionEventsState;
    
    AppEventsLogger$5(final AppEventsLogger$AccessTokenAppIdPair val$accessTokenAppId, final Request val$postRequest, final AppEventsLogger$SessionEventsState val$sessionEventsState, final AppEventsLogger$FlushStatistics val$flushState) {
        this.val$accessTokenAppId = val$accessTokenAppId;
        this.val$postRequest = val$postRequest;
        this.val$sessionEventsState = val$sessionEventsState;
        this.val$flushState = val$flushState;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        handleResponse(this.val$accessTokenAppId, this.val$postRequest, response, this.val$sessionEventsState, this.val$flushState);
    }
}
