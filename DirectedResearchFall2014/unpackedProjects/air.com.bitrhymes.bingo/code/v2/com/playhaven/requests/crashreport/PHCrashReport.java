package v2.com.playhaven.requests.crashreport;

import java.io.*;
import java.text.*;
import v2.com.playhaven.configuration.*;
import android.content.*;
import java.util.*;
import v2.com.playhaven.requests.base.*;

public class PHCrashReport extends PHAPIRequest
{
    private final String CRASH_REPORT_TEMPLATE;
    private final String DATE_FORMAT;
    private final String POST_PAYLOAD_NAME;
    private Exception exception;
    private Urgency level;
    private Date reportTime;
    private String tag;
    
    public PHCrashReport() {
        super();
        this.level = Urgency.critical;
        this.reportTime = new Date();
        this.DATE_FORMAT = "MM/dd/yyyy HH:mm:ss";
        this.POST_PAYLOAD_NAME = "payload";
        this.CRASH_REPORT_TEMPLATE = "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s";
        this.reportTime = new Date();
        this.exception = null;
    }
    
    public PHCrashReport(final Exception exception, final String s, final Urgency urgency) {
        this();
        this.exception = exception;
        this.tag = null;
    }
    
    public PHCrashReport(final Exception exception, final Urgency urgency) {
        this();
        this.exception = exception;
        this.tag = null;
    }
    
    private String generateCrashReport() {
        if (this.exception == null) {
            return "(No Exception)";
        }
        this.exception.fillInStackTrace();
        final StringWriter out = new StringWriter();
        this.exception.printStackTrace(new PrintWriter(out));
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
        final PHConfiguration phConfiguration = new PHConfiguration();
        final Object[] args = new Object[8];
        String tag;
        if (this.tag != null) {
            tag = this.tag;
        }
        else {
            tag = "(No Tag)";
        }
        args[0] = tag;
        args[1] = "android";
        args[2] = phConfiguration.getSDKVersion();
        args[3] = simpleDateFormat.format(this.reportTime);
        args[4] = "(No Session)";
        args[5] = this.level.toString();
        args[6] = this.exception.getMessage();
        args[7] = out.toString();
        return String.format("Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s", args);
    }
    
    public static PHCrashReport reportCrash(final Exception ex, final String s, final Urgency urgency) {
        ex.printStackTrace();
        return null;
    }
    
    public static PHCrashReport reportCrash(final Exception ex, final Urgency urgency) {
        ex.printStackTrace();
        return null;
    }
    
    @Override
    public String baseURL(final Context context) {
        return super.createAPIURL(context, "/v3/publisher/crash/");
    }
    
    @Override
    public Hashtable<String, String> getAdditionalParams(final Context context) {
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        hashtable.put("ts", Long.toString(System.currentTimeMillis()));
        hashtable.put("urgency", this.level.toString());
        if (this.tag != null) {
            hashtable.put("tag", this.tag);
        }
        return hashtable;
    }
    
    @Override
    public Hashtable<String, String> getPostParams() {
        final Hashtable<String, String> hashtable = new Hashtable<String, String>();
        hashtable.put("payload", this.generateCrashReport());
        return hashtable;
    }
    
    @Override
    public PHAsyncRequest.RequestType getRequestType() {
        return PHAsyncRequest.RequestType.Post;
    }
    
    @Override
    public void send(final Context context) {
    }
    
    public enum Urgency
    {
        critical, 
        high, 
        low, 
        medium, 
        none;
    }
}
