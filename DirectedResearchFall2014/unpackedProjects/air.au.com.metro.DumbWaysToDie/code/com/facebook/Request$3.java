package com.facebook;

import android.net.*;
import com.facebook.internal.*;
import java.net.*;
import android.location.*;
import android.graphics.*;
import android.os.*;
import java.text.*;
import org.json.*;
import java.util.*;
import android.util.*;
import android.text.*;
import java.io.*;
import com.facebook.model.*;

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
            this.val$callback.onCompleted(typedListFromResponse(response, GraphPlace.class), response);
        }
    }
}
