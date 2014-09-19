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

final class Request$2 implements Request$Callback
{
    final /* synthetic */ Request$GraphUserListCallback val$callback;
    
    Request$2(final Request$GraphUserListCallback val$callback) {
        this.val$callback = val$callback;
        super();
    }
    
    @Override
    public final void onCompleted(final Response response) {
        if (this.val$callback != null) {
            this.val$callback.onCompleted(typedListFromResponse(response, GraphUser.class), response);
        }
    }
}
