package com.facebook;

import android.net.*;
import java.net.*;
import android.location.*;
import android.graphics.*;
import android.content.*;
import android.text.*;
import android.os.*;
import java.text.*;
import org.json.*;
import java.io.*;
import java.util.*;
import android.util.*;
import com.facebook.model.*;
import com.facebook.internal.*;

final class Request$3 implements Request$Callback
{
    final /* synthetic */ Request$GraphPlaceListCallback val$callback;
    
    Request$3(final Request$GraphPlaceListCallback val$callback) {
        this.val$callback = val$callback;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        if (this.val$callback != null) {
            this.val$callback.onCompleted(typedListFromResponse(response, (Class<GraphObject>)GraphPlace.class), response);
        }
    }
}
