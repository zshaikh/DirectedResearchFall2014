package com.facebook;

import android.os.*;
import com.facebook.internal.*;
import java.util.*;
import java.io.*;

public abstract class TokenCachingStrategy
{
    public static final String EXPIRATION_DATE_KEY = "com.facebook.TokenCachingStrategy.ExpirationDate";
    private static final long INVALID_BUNDLE_MILLISECONDS = Long.MIN_VALUE;
    private static final String IS_SSO_KEY = "com.facebook.TokenCachingStrategy.IsSSO";
    public static final String LAST_REFRESH_DATE_KEY = "com.facebook.TokenCachingStrategy.LastRefreshDate";
    public static final String PERMISSIONS_KEY = "com.facebook.TokenCachingStrategy.Permissions";
    public static final String TOKEN_KEY = "com.facebook.TokenCachingStrategy.Token";
    public static final String TOKEN_SOURCE_KEY = "com.facebook.TokenCachingStrategy.AccessTokenSource";
    public static final String USER_FBID_KEY = "com.facebook.TokenCachingStrategy.UserFBID";
    
    static Date getDate(final Bundle bundle, final String s) {
        if (bundle == null) {
            return null;
        }
        final long long1 = bundle.getLong(s, Long.MIN_VALUE);
        if (long1 == Long.MIN_VALUE) {
            return null;
        }
        return new Date(long1);
    }
    
    public static Date getExpirationDate(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return getDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
    }
    
    public static long getExpirationMilliseconds(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate");
    }
    
    public static Date getLastRefreshDate(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return getDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate");
    }
    
    public static long getLastRefreshMilliseconds(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getLong("com.facebook.TokenCachingStrategy.LastRefreshDate");
    }
    
    public static List getPermissions(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
    }
    
    public static AccessTokenSource getSource(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        if (bundle.containsKey("com.facebook.TokenCachingStrategy.AccessTokenSource")) {
            return (AccessTokenSource)bundle.getSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource");
        }
        if (bundle.getBoolean("com.facebook.TokenCachingStrategy.IsSSO")) {
            return AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        }
        return AccessTokenSource.WEB_VIEW;
    }
    
    public static String getToken(final Bundle bundle) {
        Validate.notNull(bundle, "bundle");
        return bundle.getString("com.facebook.TokenCachingStrategy.Token");
    }
    
    public static boolean hasTokenInformation(final Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        final String string = bundle.getString("com.facebook.TokenCachingStrategy.Token");
        return string != null && string.length() != 0 && bundle.getLong("com.facebook.TokenCachingStrategy.ExpirationDate", 0L) != 0L;
    }
    
    static void putDate(final Bundle bundle, final String s, final Date date) {
        bundle.putLong(s, date.getTime());
    }
    
    public static void putExpirationDate(final Bundle bundle, final Date date) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(date, "value");
        putDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate", date);
    }
    
    public static void putExpirationMilliseconds(final Bundle bundle, final long n) {
        Validate.notNull(bundle, "bundle");
        bundle.putLong("com.facebook.TokenCachingStrategy.ExpirationDate", n);
    }
    
    public static void putLastRefreshDate(final Bundle bundle, final Date date) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(date, "value");
        putDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", date);
    }
    
    public static void putLastRefreshMilliseconds(final Bundle bundle, final long n) {
        Validate.notNull(bundle, "bundle");
        bundle.putLong("com.facebook.TokenCachingStrategy.LastRefreshDate", n);
    }
    
    public static void putPermissions(final Bundle bundle, final List c) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(c, "value");
        ArrayList<?> list;
        if (c instanceof ArrayList) {
            list = (ArrayList<?>)c;
        }
        else {
            list = new ArrayList<Object>(c);
        }
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", (ArrayList)list);
    }
    
    public static void putSource(final Bundle bundle, final AccessTokenSource accessTokenSource) {
        Validate.notNull(bundle, "bundle");
        bundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", (Serializable)accessTokenSource);
    }
    
    public static void putToken(final Bundle bundle, final String s) {
        Validate.notNull(bundle, "bundle");
        Validate.notNull(s, "value");
        bundle.putString("com.facebook.TokenCachingStrategy.Token", s);
    }
    
    public abstract void clear();
    
    public abstract Bundle load();
    
    public abstract void save(final Bundle p0);
}
