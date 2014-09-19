package com.fusepowered.m1.android;

import org.json.*;

class MMJSResponse
{
    static final int ERROR = 0;
    static final int SUCCESS = 1;
    String className;
    byte[] dataResponse;
    String methodName;
    Object response;
    int result;
    
    static MMJSResponse responseWithError() {
        return responseWithError("An unknown error occured.");
    }
    
    static MMJSResponse responseWithError(final String response) {
        final MMJSResponse mmjsResponse = new MMJSResponse();
        mmjsResponse.result = 0;
        mmjsResponse.response = response;
        return mmjsResponse;
    }
    
    static MMJSResponse responseWithSuccess() {
        return responseWithSuccess("Success.");
    }
    
    static MMJSResponse responseWithSuccess(final String response) {
        final MMJSResponse mmjsResponse = new MMJSResponse();
        mmjsResponse.result = 1;
        mmjsResponse.response = response;
        return mmjsResponse;
    }
    
    String toJSONString() {
        try {
            final JSONObject jsonObject = new JSONObject();
            if (this.className != null) {
                jsonObject.put("class", (Object)this.className);
            }
            if (this.methodName != null) {
                jsonObject.put("call", (Object)this.methodName);
            }
            jsonObject.put("result", this.result);
            if (this.response != null) {
                jsonObject.put("response", this.response);
            }
            else {
                if (this.dataResponse == null) {
                    return "";
                }
                jsonObject.put("response", (Object)Base64.encodeToString(this.dataResponse, false));
            }
            return jsonObject.toString();
        }
        catch (JSONException ex) {
            MMSDK.Log.e(ex.getMessage());
            return "";
        }
        return "";
    }
}
