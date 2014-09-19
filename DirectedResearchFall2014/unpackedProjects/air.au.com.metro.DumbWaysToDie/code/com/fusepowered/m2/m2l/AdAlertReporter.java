package com.fusepowered.m2.m2l;

import android.net.*;
import android.content.*;
import android.view.*;
import java.text.*;
import android.graphics.*;
import android.util.*;
import java.io.*;
import com.fusepowered.m2.m2l.util.*;
import java.util.*;

public class AdAlertReporter
{
    private static final String BODY_SEPARATOR = "\n=================\n";
    private static final String DATE_FORMAT_PATTERN = "M/d/yy hh:mm:ss a z";
    private static final String EMAIL_RECIPIENT = "creative-review@mopub.com";
    private static final String EMAIL_SCHEME = "mailto:";
    private static final int IMAGE_QUALITY = 25;
    private static final String MARKUP_FILENAME = "mp_adalert_markup.html";
    private static final String PARAMETERS_FILENAME = "mp_adalert_parameters.txt";
    private static final String SCREEN_SHOT_FILENAME = "mp_adalert_screenshot.png";
    private final AdConfiguration mAdConfiguration;
    private final Context mContext;
    private final String mDateString;
    private ArrayList<Uri> mEmailAttachments;
    private Intent mEmailIntent;
    private String mParameters;
    private String mResponse;
    private final View mView;
    
    public AdAlertReporter(final Context mContext, final View mView, final AdConfiguration mAdConfiguration) {
        super();
        this.mView = mView;
        this.mContext = mContext;
        this.mAdConfiguration = mAdConfiguration;
        this.mEmailAttachments = new ArrayList<Uri>();
        this.mDateString = new SimpleDateFormat("M/d/yy hh:mm:ss a z").format(DateAndTime.now());
        this.initEmailIntent();
        final Bitmap takeScreenShot = this.takeScreenShot();
        final String convertBitmapInWEBPToBase64EncodedString = this.convertBitmapInWEBPToBase64EncodedString(takeScreenShot);
        this.mParameters = this.formParameters();
        this.mResponse = this.getResponseString();
        this.addEmailSubject();
        this.addEmailBody(this.mParameters, this.mResponse, convertBitmapInWEBPToBase64EncodedString);
        this.addTextAttachment("mp_adalert_parameters.txt", this.mParameters);
        this.addTextAttachment("mp_adalert_markup.html", this.mResponse);
        this.addImageAttachment("mp_adalert_screenshot.png", takeScreenShot);
    }
    
    private void addEmailBody(final String... array) {
        final StringBuilder sb = new StringBuilder();
        for (int i = 0; i < array.length; ++i) {
            sb.append(array[i]);
            if (i != array.length - 1) {
                sb.append("\n=================\n");
            }
        }
        this.mEmailIntent.putExtra("android.intent.extra.TEXT", sb.toString());
    }
    
    private void addEmailSubject() {
        this.mEmailIntent.putExtra("android.intent.extra.SUBJECT", "New creative violation report - " + this.mDateString);
    }
    
    private void addImageAttachment(final String s, final Bitmap bitmap) {
        OutputStream openFileOutput = null;
        if (s == null || bitmap == null) {
            return;
        }
        try {
            openFileOutput = this.mContext.openFileOutput(s, 1);
            bitmap.compress(Bitmap$CompressFormat.PNG, 25, openFileOutput);
            this.mEmailAttachments.add(Uri.fromFile(new File(this.mContext.getFilesDir() + File.separator + s)));
        }
        catch (Exception ex) {
            Log.d("MoPub", "Unable to write text attachment to file: " + s);
        }
        finally {
            Streams.closeStream(openFileOutput);
        }
    }
    
    private void addTextAttachment(final String s, final String s2) {
        FileOutputStream openFileOutput = null;
        if (s == null || s2 == null) {
            return;
        }
        try {
            openFileOutput = this.mContext.openFileOutput(s, 1);
            openFileOutput.write(s2.getBytes());
            this.mEmailAttachments.add(Uri.fromFile(new File(this.mContext.getFilesDir() + File.separator + s)));
        }
        catch (Exception ex) {
            Log.d("MoPub", "Unable to write text attachment to file: " + s);
        }
        finally {
            Streams.closeStream(openFileOutput);
        }
    }
    
    private void appendKeyValue(final StringBuilder sb, final String str, final String str2) {
        sb.append(str);
        sb.append(" : ");
        sb.append(str2);
        sb.append("\n");
    }
    
    private String convertBitmapInWEBPToBase64EncodedString(final Bitmap bitmap) {
        String encodeToString = null;
        if (bitmap == null) {
            return encodeToString;
        }
        try {
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap$CompressFormat.JPEG, 25, (OutputStream)byteArrayOutputStream);
            encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            return encodeToString;
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private String formParameters() {
        final StringBuilder sb = new StringBuilder();
        if (this.mAdConfiguration != null) {
            this.appendKeyValue(sb, "sdk_version", this.mAdConfiguration.getSdkVersion());
            this.appendKeyValue(sb, "creative_id", this.mAdConfiguration.getDspCreativeId());
            this.appendKeyValue(sb, "platform_version", Integer.toString(this.mAdConfiguration.getPlatformVersion()));
            this.appendKeyValue(sb, "device_model", this.mAdConfiguration.getDeviceModel());
            this.appendKeyValue(sb, "ad_unit_id", this.mAdConfiguration.getAdUnitId());
            this.appendKeyValue(sb, "device_locale", this.mAdConfiguration.getDeviceLocale());
            this.appendKeyValue(sb, "device_id", this.mAdConfiguration.getHashedUdid());
            this.appendKeyValue(sb, "network_type", this.mAdConfiguration.getNetworkType());
            this.appendKeyValue(sb, "platform", this.mAdConfiguration.getPlatform());
            this.appendKeyValue(sb, "timestamp", this.getFormattedTimeStamp(this.mAdConfiguration.getTimeStamp()));
            this.appendKeyValue(sb, "ad_type", this.mAdConfiguration.getAdType());
            this.appendKeyValue(sb, "ad_size", "{" + this.mAdConfiguration.getWidth() + ", " + this.mAdConfiguration.getHeight() + "}");
        }
        return sb.toString();
    }
    
    private String getFormattedTimeStamp(final long date) {
        if (date != -1L) {
            return new SimpleDateFormat("M/d/yy hh:mm:ss a z").format(new Date(date));
        }
        return null;
    }
    
    private String getResponseString() {
        if (this.mAdConfiguration != null) {
            return this.mAdConfiguration.getResponseString();
        }
        return "";
    }
    
    private void initEmailIntent() {
        (this.mEmailIntent = new Intent("android.intent.action.SEND_MULTIPLE", Uri.parse("mailto:"))).setType("plain/text");
        this.mEmailIntent.putExtra("android.intent.extra.EMAIL", new String[] { "creative-review@mopub.com" });
    }
    
    private Bitmap takeScreenShot() {
        if (this.mView == null || this.mView.getRootView() == null) {
            return null;
        }
        final View rootView = this.mView.getRootView();
        final boolean drawingCacheEnabled = rootView.isDrawingCacheEnabled();
        rootView.setDrawingCacheEnabled(true);
        final Bitmap drawingCache = rootView.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        final Bitmap bitmap = Bitmap.createBitmap(drawingCache);
        rootView.setDrawingCacheEnabled(drawingCacheEnabled);
        return bitmap;
    }
    
    @Deprecated
    ArrayList<Uri> getEmailAttachments() {
        return this.mEmailAttachments;
    }
    
    @Deprecated
    Intent getEmailIntent() {
        return this.mEmailIntent;
    }
    
    @Deprecated
    String getParameters() {
        return this.mParameters;
    }
    
    @Deprecated
    String getResponse() {
        return this.mResponse;
    }
    
    public void send() {
        this.mEmailIntent.putParcelableArrayListExtra("android.intent.extra.STREAM", (ArrayList)this.mEmailAttachments);
        final Intent chooser = Intent.createChooser(this.mEmailIntent, (CharSequence)"Send Email...");
        chooser.addFlags(268435456);
        this.mContext.startActivity(chooser);
    }
}
