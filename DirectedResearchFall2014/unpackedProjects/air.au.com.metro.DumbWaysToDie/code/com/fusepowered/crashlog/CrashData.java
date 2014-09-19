package com.fusepowered.crashlog;

import com.fusepowered.logging.*;
import org.json.*;
import java.util.*;

public class CrashData
{
    private static final String JSON_CRASH_ID = "id";
    private static final String JSON_STACK_TRACE = "stackTrace";
    private static final String JSON_THREAD_NAME = "threadName";
    private static final String JSON_THREAD_STATE = "threadState";
    private static final String TAG = "CrashData";
    private final String mCrashId;
    private String mCrashedThreadName;
    private String mCrashedThreadState;
    private String mStackTrace;
    
    public CrashData() {
        this(UUID.randomUUID().toString());
    }
    
    private CrashData(final String mCrashId) {
        super();
        this.mCrashId = mCrashId;
    }
    
    public static CrashData fromJson(final String str) {
        try {
            final JSONObject jsonObject = new JSONObject(str);
            final String string = jsonObject.getString("id");
            final String string2 = jsonObject.getString("stackTrace");
            final String string3 = jsonObject.getString("threadName");
            final String string4 = jsonObject.getString("threadState");
            final CrashData crashData = new CrashData(string);
            crashData.setStackTrace(string2);
            crashData.setCrashedThreadName(string3);
            crashData.setCrashedThreadState(string4);
            return crashData;
        }
        catch (JSONException ex) {
            FuseLog.e("CrashData", "Could not parse crash json: " + str);
            return null;
        }
    }
    
    public String getCrashId() {
        return this.mCrashId;
    }
    
    public String getCrashedThreadName() {
        return this.mCrashedThreadName;
    }
    
    public String getCrashedThreadState() {
        return this.mCrashedThreadState;
    }
    
    public String getStackTrace() {
        return this.mStackTrace;
    }
    
    public void setCrashedThreadName(final String mCrashedThreadName) {
        this.mCrashedThreadName = mCrashedThreadName;
    }
    
    public void setCrashedThreadState(final String mCrashedThreadState) {
        this.mCrashedThreadState = mCrashedThreadState;
    }
    
    public void setStackTrace(final String mStackTrace) {
        this.mStackTrace = mStackTrace;
    }
    
    public String toJson() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("id", this.mCrashId);
        hashMap.put("stackTrace", this.mStackTrace);
        hashMap.put("threadName", this.mCrashedThreadName);
        hashMap.put("threadState", this.mCrashedThreadState);
        return new JSONObject((Map)hashMap).toString();
    }
}
