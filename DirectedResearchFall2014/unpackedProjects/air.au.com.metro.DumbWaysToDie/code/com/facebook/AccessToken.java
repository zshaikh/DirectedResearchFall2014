package com.facebook;

import android.text.*;
import android.os.*;
import java.util.*;
import android.content.*;
import com.facebook.internal.*;
import android.annotation.*;
import java.io.*;

public final class AccessToken implements Serializable
{
    static final String ACCESS_TOKEN_KEY = "access_token";
    private static final Date ALREADY_EXPIRED_EXPIRATION_TIME;
    private static final AccessTokenSource DEFAULT_ACCESS_TOKEN_SOURCE;
    private static final Date DEFAULT_EXPIRATION_TIME;
    private static final Date DEFAULT_LAST_REFRESH_TIME;
    static final String EXPIRES_IN_KEY = "expires_in";
    private static final Date MAX_DATE;
    private static final Date MIN_DATE;
    private static final long serialVersionUID = 1L;
    private final Date expires;
    private final Date lastRefresh;
    private final List permissions;
    private final AccessTokenSource source;
    private final String token;
    
    static {
        MIN_DATE = new Date(Long.MIN_VALUE);
        DEFAULT_EXPIRATION_TIME = (MAX_DATE = new Date(Long.MAX_VALUE));
        DEFAULT_LAST_REFRESH_TIME = new Date();
        DEFAULT_ACCESS_TOKEN_SOURCE = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        ALREADY_EXPIRED_EXPIRATION_TIME = AccessToken.MIN_DATE;
    }
    
    AccessToken(final String token, final Date expires, final List list, final AccessTokenSource source, final Date lastRefresh) {
        super();
        List<? extends T> emptyList;
        if (list == null) {
            emptyList = Collections.emptyList();
        }
        else {
            emptyList = (List<? extends T>)list;
        }
        this.expires = expires;
        this.permissions = Collections.unmodifiableList((List<?>)emptyList);
        this.token = token;
        this.source = source;
        this.lastRefresh = lastRefresh;
    }
    
    private void appendPermissions(final StringBuilder sb) {
        sb.append(" permissions:");
        if (this.permissions == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join((CharSequence)", ", (Iterable)this.permissions));
        sb.append("]");
    }
    
    static AccessToken createEmptyToken(final List list) {
        return new AccessToken("", AccessToken.ALREADY_EXPIRED_EXPIRATION_TIME, list, AccessTokenSource.NONE, AccessToken.DEFAULT_LAST_REFRESH_TIME);
    }
    
    private static AccessToken createFromBundle(final List list, final Bundle bundle, final AccessTokenSource accessTokenSource, final Date date) {
        final String string = bundle.getString("access_token");
        final Date bundleLongAsDate = getBundleLongAsDate(bundle, "expires_in", date);
        if (Utility.isNullOrEmpty(string) || bundleLongAsDate == null) {
            return null;
        }
        return new AccessToken(string, bundleLongAsDate, list, accessTokenSource, new Date());
    }
    
    static AccessToken createFromCache(final Bundle bundle) {
        final ArrayList stringArrayList = bundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
        List<Object> list;
        if (stringArrayList == null) {
            list = Collections.emptyList();
        }
        else {
            list = Collections.unmodifiableList((List<?>)new ArrayList<Object>(stringArrayList));
        }
        return new AccessToken(bundle.getString("com.facebook.TokenCachingStrategy.Token"), TokenCachingStrategy.getDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), list, TokenCachingStrategy.getSource(bundle), TokenCachingStrategy.getDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    }
    
    public static AccessToken createFromExistingAccessToken(final String s, final Date date, final Date date2, final AccessTokenSource accessTokenSource, final List list) {
        Date default_EXPIRATION_TIME;
        if (date == null) {
            default_EXPIRATION_TIME = AccessToken.DEFAULT_EXPIRATION_TIME;
        }
        else {
            default_EXPIRATION_TIME = date;
        }
        Date default_LAST_REFRESH_TIME;
        if (date2 == null) {
            default_LAST_REFRESH_TIME = AccessToken.DEFAULT_LAST_REFRESH_TIME;
        }
        else {
            default_LAST_REFRESH_TIME = date2;
        }
        AccessTokenSource default_ACCESS_TOKEN_SOURCE;
        if (accessTokenSource == null) {
            default_ACCESS_TOKEN_SOURCE = AccessToken.DEFAULT_ACCESS_TOKEN_SOURCE;
        }
        else {
            default_ACCESS_TOKEN_SOURCE = accessTokenSource;
        }
        return new AccessToken(s, default_EXPIRATION_TIME, list, default_ACCESS_TOKEN_SOURCE, default_LAST_REFRESH_TIME);
    }
    
    public static AccessToken createFromNativeLinkingIntent(final Intent intent) {
        Validate.notNull(intent, "intent");
        if (intent.getExtras() == null) {
            return null;
        }
        return createFromBundle(null, intent.getExtras(), AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date());
    }
    
    static AccessToken createFromNativeLogin(final Bundle bundle, final AccessTokenSource accessTokenSource) {
        return createNew(bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS"), bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), getBundleLongAsDate(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L)), accessTokenSource);
    }
    
    @SuppressLint({ "FieldGetter" })
    static AccessToken createFromRefresh(final AccessToken accessToken, final Bundle bundle) {
        assert accessToken.source == AccessTokenSource.FACEBOOK_APPLICATION_SERVICE;
        return createNew(accessToken.getPermissions(), bundle.getString("access_token"), getBundleLongAsDate(bundle, "expires_in", new Date(0L)), accessToken.source);
    }
    
    static AccessToken createFromString(final String s, final List list, final AccessTokenSource accessTokenSource) {
        return new AccessToken(s, AccessToken.DEFAULT_EXPIRATION_TIME, list, accessTokenSource, AccessToken.DEFAULT_LAST_REFRESH_TIME);
    }
    
    static AccessToken createFromTokenWithRefreshedPermissions(final AccessToken accessToken, final List list) {
        return new AccessToken(accessToken.token, accessToken.expires, list, accessToken.source, accessToken.lastRefresh);
    }
    
    static AccessToken createFromWebBundle(final List list, final Bundle bundle, final AccessTokenSource accessTokenSource) {
        return createNew(list, bundle.getString("access_token"), getBundleLongAsDate(bundle, "expires_in", new Date()), accessTokenSource);
    }
    
    private static AccessToken createNew(final List list, final String s, final Date date, final AccessTokenSource accessTokenSource) {
        if (Utility.isNullOrEmpty(s) || date == null) {
            return createEmptyToken(list);
        }
        return new AccessToken(s, date, list, accessTokenSource, new Date());
    }
    
    private static Date getBundleLongAsDate(final Bundle bundle, final String s, final Date date) {
        if (bundle == null) {
            return null;
        }
        final Object value = bundle.get(s);
        long n = 0L;
        Label_0028: {
            if (!(value instanceof Long)) {
                if (value instanceof String) {
                    try {
                        n = Long.parseLong((String)value);
                        break Label_0028;
                    }
                    catch (NumberFormatException ex) {
                        return null;
                    }
                }
                return null;
            }
            n = (long)value;
        }
        if (n == 0L) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date(date.getTime() + n * 1000L);
    }
    
    private void readObject(final ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Cannot readObject, serialization proxy required");
    }
    
    private String tokenToString() {
        if (this.token == null) {
            return "null";
        }
        if (Settings.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
            return this.token;
        }
        return "ACCESS_TOKEN_REMOVED";
    }
    
    private Object writeReplace() {
        return new AccessToken$SerializationProxyV1(this.token, this.expires, this.permissions, this.source, this.lastRefresh, null);
    }
    
    public final Date getExpires() {
        return this.expires;
    }
    
    public final Date getLastRefresh() {
        return this.lastRefresh;
    }
    
    public final List getPermissions() {
        return this.permissions;
    }
    
    public final AccessTokenSource getSource() {
        return this.source;
    }
    
    public final String getToken() {
        return this.token;
    }
    
    final boolean isInvalid() {
        return Utility.isNullOrEmpty(this.token) || new Date().after(this.expires);
    }
    
    final Bundle toCacheBundle() {
        final Bundle bundle = new Bundle();
        bundle.putString("com.facebook.TokenCachingStrategy.Token", this.token);
        TokenCachingStrategy.putDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate", this.expires);
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList(this.permissions));
        bundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", (Serializable)this.source);
        TokenCachingStrategy.putDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", this.lastRefresh);
        return bundle;
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(this.tokenToString());
        this.appendPermissions(sb);
        sb.append("}");
        return sb.toString();
    }
}
