package com.bitrhymes.facebookext;

import com.adobe.fre.*;
import android.os.*;
import com.facebook.model.*;
import com.facebook.*;

public class RequestThread extends Thread
{
    private String callback;
    private FREContext context;
    private String graphPath;
    private String httpMethod;
    private Bundle parameters;
    
    public RequestThread(final FREContext context, final String graphPath, final Bundle parameters, final String httpMethod, final String callback) {
        super();
        this.context = context;
        this.graphPath = graphPath;
        this.parameters = parameters;
        this.httpMethod = httpMethod;
        this.callback = callback;
    }
    
    @Override
    public void run() {
        String s = null;
        FacebookExt.log("INFO - RequestThread.run");
        while (true) {
            try {
                final Bundle parameters = this.parameters;
                s = null;
                Request request;
                if (parameters != null) {
                    request = new Request(FacebookExtContext.session, this.graphPath, this.parameters, HttpMethod.valueOf(this.httpMethod));
                }
                else {
                    request = new Request(FacebookExtContext.session, this.graphPath);
                }
                final Response executeAndWait = request.executeAndWait();
                final GraphObject graphObject = executeAndWait.getGraphObject();
                s = null;
                if (graphObject != null) {
                    s = executeAndWait.getGraphObject().getInnerJSONObject().toString();
                }
                else {
                    final GraphObjectList<GraphObject> graphObjectList = executeAndWait.getGraphObjectList();
                    s = null;
                    if (graphObjectList != null) {
                        s = executeAndWait.getGraphObjectList().getInnerJSONArray().toString();
                    }
                    else {
                        final FacebookRequestError error = executeAndWait.getError();
                        s = null;
                        if (error != null) {
                            s = executeAndWait.getError().getRequestResult().toString();
                        }
                    }
                }
                FacebookExt.log("INFO - RequestThread.run, data = " + s);
                if (s != null && this.callback != null) {
                    FacebookExt.log("INFO - RequestThread.run, calling callback with data " + s);
                    this.context.dispatchStatusEventAsync(this.callback, s);
                }
            }
            catch (Exception ex) {
                FacebookExt.log("ERROR - RequestThread.run, " + ex.getMessage());
                String message;
                if (ex.getMessage() != null) {
                    message = ex.getMessage();
                }
                else {
                    message = "";
                }
                this.context.dispatchStatusEventAsync(this.callback, message);
                continue;
            }
            break;
        }
    }
}
