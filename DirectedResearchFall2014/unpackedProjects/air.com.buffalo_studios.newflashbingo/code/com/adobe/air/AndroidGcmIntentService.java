package com.adobe.air;

import java.net.*;
import android.graphics.*;
import org.json.*;
import android.content.*;
import android.support.v4.app.*;
import android.app.*;
import com.google.android.gms.gcm.*;
import android.os.*;

public class AndroidGcmIntentService extends IntentService
{
    private static final String CLOUDFRONT = "cloudfront";
    private static final String GAMESPACE = "gamespace";
    private static final String GAME_URL = "gameUrl";
    private static final String PROPERTY_NOTIFICATION_TIMESTAMP = "notficationTimestamp";
    private static final String TAG = "AndroidGcmIntentService";
    private static int sUniqueId;
    private String mGameDesc;
    private String mGameIconUrl;
    private String mGameTitle;
    private String mGameUrl;
    private String mGameUrlPrefix;
    private String mHost;
    
    static {
        AndroidGcmIntentService.sUniqueId = 0;
    }
    
    public AndroidGcmIntentService() {
        super("AndroidGcmIntentService");
        this.mGameTitle = null;
        this.mGameDesc = null;
        this.mGameIconUrl = null;
        this.mGameUrl = null;
        this.mGameUrlPrefix = null;
        this.mHost = null;
    }
    
    private Bitmap getBitmapFromURL(final String spec) {
        try {
            final HttpURLConnection httpURLConnection = (HttpURLConnection)new URL(spec).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.connect();
            return BitmapFactory.decodeStream(httpURLConnection.getInputStream());
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    private void handleNotification(final String s) {
        if (this.isNotificationValid()) {
            try {
                final JSONObject jsonObject = new JSONObject(s);
                this.mGameTitle = jsonObject.getString("gameTitle");
                this.mGameDesc = jsonObject.getString("gameDesc");
                this.mGameIconUrl = jsonObject.getString("gameIconUrl");
                this.mGameUrl = jsonObject.getString("gameUrl");
                this.mGameUrlPrefix = jsonObject.getString("gameUrlPrefix");
                if (this.mGameTitle != null && this.mGameDesc != null && this.mGameIconUrl != null && this.mGameUrl != null && this.mGameUrlPrefix != null) {
                    if (this.mGameUrlPrefix.equals("gamespace")) {
                        this.mHost = "gamespace.adobe.com";
                    }
                    else if (this.mGameUrlPrefix.equals("cloudfront")) {
                        this.mHost = "dh8vjmvwgc27o.cloudfront.net";
                    }
                    this.mGameUrl = "http://" + this.mHost + "/" + this.mGameUrl;
                    this.mGameIconUrl = "http://" + this.mHost + "/" + this.mGameIconUrl;
                    this.sendNotification();
                }
            }
            catch (Exception ex) {}
        }
    }
    
    private boolean isNotificationValid() {
        final SharedPreferences sharedPreferences = this.getSharedPreferences(AdobeAIR.class.getSimpleName(), 0);
        final long long1 = sharedPreferences.getLong("notficationTimestamp", Long.MIN_VALUE);
        final long currentTimeMillis = System.currentTimeMillis();
        if (long1 == Long.MIN_VALUE || currentTimeMillis - long1 > AdobeAIR.RATE_LIMIT) {
            final SharedPreferences$Editor edit = sharedPreferences.edit();
            edit.putLong("notficationTimestamp", currentTimeMillis);
            edit.commit();
            return true;
        }
        return false;
    }
    
    private void sendNotification() {
        final Intent intent = new Intent((Context)this, (Class)AdobeAIR.class);
        intent.putExtra("gameUrl", this.mGameUrl);
        intent.setFlags(603979776);
        final PendingIntent activity = PendingIntent.getActivity((Context)this, ++AndroidGcmIntentService.sUniqueId, intent, 1073741824);
        final NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder((Context)this);
        notificationCompat$Builder.setSmallIcon(2130837533);
        notificationCompat$Builder.setContentTitle((CharSequence)this.mGameTitle);
        notificationCompat$Builder.setContentText((CharSequence)this.mGameDesc);
        notificationCompat$Builder.setContentIntent(activity);
        notificationCompat$Builder.setAutoCancel(true);
        final Bitmap bitmapFromURL = this.getBitmapFromURL(this.mGameIconUrl);
        if (bitmapFromURL != null) {
            notificationCompat$Builder.setLargeIcon(bitmapFromURL);
        }
        ((NotificationManager)this.getSystemService("notification")).notify(AndroidGcmIntentService.sUniqueId, notificationCompat$Builder.build());
    }
    
    protected void onHandleIntent(final Intent intent) {
        String string = "";
        final Bundle extras = intent.getExtras();
        if (extras != null && extras.containsKey("message")) {
            string = extras.getString("message");
        }
        if (!string.isEmpty() && "gcm".equals(GoogleCloudMessaging.getInstance((Context)this).getMessageType(intent))) {
            this.handleNotification(string);
        }
        AndroidGcmBroadcastReceiver.completeWakefulIntent(intent);
    }
}
