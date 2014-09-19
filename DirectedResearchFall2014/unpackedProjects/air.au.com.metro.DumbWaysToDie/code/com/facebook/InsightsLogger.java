package com.facebook;

import android.content.*;
import android.os.*;
import org.json.*;
import com.facebook.internal.*;
import java.math.*;
import java.util.*;

public class InsightsLogger
{
    private static final String EVENT_NAME_LOG_CONVERSION_PIXEL = "fb_log_offsite_pixel";
    private static final String EVENT_NAME_LOG_MOBILE_PURCHASE = "fb_mobile_purchase";
    private static final String EVENT_PARAMETER_CURRENCY = "fb_currency";
    private static final String EVENT_PARAMETER_PIXEL_ID = "fb_offsite_pixel_id";
    private static final String EVENT_PARAMETER_PIXEL_VALUE = "fb_offsite_pixel_value";
    private static Session appAuthSession;
    private final String applicationId;
    private final String clientToken;
    private final Context context;
    private final Session specifiedSession;
    
    static {
        InsightsLogger.appAuthSession = null;
    }
    
    private InsightsLogger(final Context context, final String clientToken, final String s, final Session specifiedSession) {
        super();
        Validate.notNull(context, "context");
        Validate.notNullOrEmpty(clientToken, "clientToken");
        String metadataApplicationId;
        if (s == null) {
            metadataApplicationId = Utility.getMetadataApplicationId(context);
        }
        else {
            metadataApplicationId = s;
        }
        this.context = context;
        this.clientToken = clientToken;
        this.applicationId = metadataApplicationId;
        this.specifiedSession = specifiedSession;
    }
    
    private static String buildJSONForEvent(final String s, final double n, final Bundle bundle) {
        JSONObject jsonObject;
        try {
            jsonObject = new JSONObject();
            jsonObject.put("_eventName", (Object)s);
            if (n != 1.0) {
                jsonObject.put("_valueToSum", n);
            }
            if (bundle != null) {
                for (final String s2 : bundle.keySet()) {
                    final Object value = bundle.get(s2);
                    if (!(value instanceof String) && !(value instanceof Number)) {
                        notifyDeveloperError(String.format("Parameter '%s' must be a string or a numeric type.", s2));
                    }
                    jsonObject.put(s2, value);
                }
            }
        }
        catch (JSONException ex) {
            notifyDeveloperError(ex.toString());
            return null;
        }
        final JSONArray jsonArray = new JSONArray();
        jsonArray.put((Object)jsonObject);
        return jsonArray.toString();
    }
    
    private void logEventNow(final String s, final double n, final Bundle bundle) {
        Settings.getExecutor().execute(new InsightsLogger$1(this, s, n, bundle));
    }
    
    public static InsightsLogger newLogger(final Context context, final String s) {
        return new InsightsLogger(context, s, null, null);
    }
    
    public static InsightsLogger newLogger(final Context context, final String s, final String s2) {
        return new InsightsLogger(context, s, s2, null);
    }
    
    public static InsightsLogger newLogger(final Context context, final String s, final String s2, final Session session) {
        return new InsightsLogger(context, s, s2, session);
    }
    
    private static void notifyDeveloperError(final String s) {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "Insights", s);
    }
    
    private Session sessionToLogTo() {
        synchronized (this) {
            Session session = this.specifiedSession;
            if (session == null || !session.isOpened()) {
                session = Session.getActiveSession();
            }
            if (session == null || !session.isOpened() || session.getAccessToken() == null) {
                if (InsightsLogger.appAuthSession == null) {
                    (InsightsLogger.appAuthSession = new Session(null, this.applicationId, new NonCachingTokenCachingStrategy(), false)).open(AccessToken.createFromString(String.format("%s|%s", this.applicationId, this.clientToken), null, AccessTokenSource.CLIENT_TOKEN), null);
                }
                session = InsightsLogger.appAuthSession;
            }
            return session;
        }
    }
    
    public void logConversionPixel(final String s, final double n) {
        if (s == null) {
            notifyDeveloperError("pixelID cannot be null");
            return;
        }
        final Bundle bundle = new Bundle();
        bundle.putString("fb_offsite_pixel_id", s);
        bundle.putDouble("fb_offsite_pixel_value", n);
        this.logEventNow("fb_log_offsite_pixel", n, bundle);
    }
    
    public void logPurchase(final BigDecimal bigDecimal, final Currency currency) {
        this.logPurchase(bigDecimal, currency, null);
    }
    
    public void logPurchase(final BigDecimal bigDecimal, final Currency currency, final Bundle bundle) {
        if (bigDecimal == null) {
            notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null) {
            notifyDeveloperError("currency cannot be null");
            return;
        }
        Bundle bundle2;
        if (bundle == null) {
            bundle2 = new Bundle();
        }
        else {
            bundle2 = bundle;
        }
        bundle2.putString("fb_currency", currency.getCurrencyCode());
        this.logEventNow("fb_mobile_purchase", bigDecimal.doubleValue(), bundle2);
    }
}
