package com.facebook.internal;

import android.net.*;
import android.content.*;
import android.os.*;
import android.text.*;
import com.facebook.*;
import java.util.*;
import android.database.*;
import android.content.pm.*;

public final class NativeProtocol
{
    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_FEED_DIALOG_REPLY = "com.facebook.platform.action.reply.FEED_DIALOG";
    public static final String ACTION_LOGIN_DIALOG = "com.facebook.platform.action.request.LOGIN_DIALOG";
    static final String ACTION_LOGIN_DIALOG_REPLY = "com.facebook.platform.action.reply.LOGIN_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG_REPLY = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG";
    public static final String AUDIENCE_EVERYONE = "EVERYONE";
    public static final String AUDIENCE_FRIENDS = "ALL_FRIENDS";
    public static final String AUDIENCE_ME = "SELF";
    private static final String BASIC_INFO = "basic_info";
    private static final String CONTENT_SCHEME = "content://";
    public static final int DIALOG_REQUEST_CODE = 64207;
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_ACTION = "com.facebook.platform.extra.ACTION";
    public static final String EXTRA_ACTION_TYPE = "com.facebook.platform.extra.ACTION_TYPE";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DATA_FAILURES_FATAL = "com.facebook.platform.extra.DATA_FAILURES_FATAL";
    public static final String EXTRA_DESCRIPTION = "com.facebook.platform.extra.DESCRIPTION";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_FRIEND_TAGS = "com.facebook.platform.extra.FRIENDS";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_IMAGE = "com.facebook.platform.extra.IMAGE";
    public static final String EXTRA_LINK = "com.facebook.platform.extra.LINK";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PLACE_TAG = "com.facebook.platform.extra.PLACE";
    public static final String EXTRA_PREVIEW_PROPERTY_NAME = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_REF = "com.facebook.platform.extra.REF";
    public static final String EXTRA_SUBTITLE = "com.facebook.platform.extra.SUBTITLE";
    public static final String EXTRA_TITLE = "com.facebook.platform.extra.TITLE";
    public static final String EXTRA_WRITE_PRIVACY = "com.facebook.platform.extra.WRITE_PRIVACY";
    private static final NativeProtocol$NativeAppInfo FACEBOOK_APP_INFO;
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    private static final List<Integer> KNOWN_PROTOCOL_VERSIONS;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final int PROTOCOL_VERSION_20131107 = 20131107;
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    private static Map<String, List<NativeProtocol$NativeAppInfo>> actionToAppInfoMap;
    private static List<NativeProtocol$NativeAppInfo> facebookAppInfoList;
    
    static {
        FACEBOOK_APP_INFO = new NativeProtocol$KatanaAppInfo(null);
        NativeProtocol.facebookAppInfoList = buildFacebookAppList();
        NativeProtocol.actionToAppInfoMap = buildActionToAppInfoMap();
        KNOWN_PROTOCOL_VERSIONS = Arrays.asList(20131107, 20130618, 20130502, 20121101);
    }
    
    private static Map<String, List<NativeProtocol$NativeAppInfo>> buildActionToAppInfoMap() {
        final HashMap<String, List<NativeProtocol$NativeAppInfo>> hashMap = new HashMap<String, List<NativeProtocol$NativeAppInfo>>();
        hashMap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", NativeProtocol.facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.FEED_DIALOG", NativeProtocol.facebookAppInfoList);
        hashMap.put("com.facebook.platform.action.request.LOGIN_DIALOG", NativeProtocol.facebookAppInfoList);
        return hashMap;
    }
    
    private static List<NativeProtocol$NativeAppInfo> buildFacebookAppList() {
        final ArrayList<NativeProtocol$NativeAppInfo> list = new ArrayList<NativeProtocol$NativeAppInfo>();
        list.add(NativeProtocol.FACEBOOK_APP_INFO);
        return list;
    }
    
    private static Uri buildPlatformProviderVersionURI(final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo) {
        return Uri.parse("content://" + nativeProtocol$NativeAppInfo.getPackage() + ".provider.PlatformProvider/versions");
    }
    
    public static Intent createLoginDialog20121101Intent(final Context context, final String s, final ArrayList<String> list, final String s2) {
        final Intent activityIntent = findActivityIntent(context, "com.facebook.platform.PLATFORM_ACTIVITY", "com.facebook.platform.action.request.LOGIN_DIALOG");
        if (activityIntent == null) {
            return null;
        }
        activityIntent.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 20121101).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", "com.facebook.platform.action.request.LOGIN_DIALOG").putExtra("com.facebook.platform.extra.APPLICATION_ID", s).putStringArrayListExtra("com.facebook.platform.extra.PERMISSIONS", (ArrayList)ensureDefaultPermissions(list)).putExtra("com.facebook.platform.protocol.CALL_ID", generateCallId()).putExtra("com.facebook.platform.extra.WRITE_PRIVACY", ensureDefaultAudience(s2));
        return activityIntent;
    }
    
    public static Intent createPlatformActivityIntent(final Context context, final String s, final int n, final Bundle bundle) {
        final Intent activityIntent = findActivityIntent(context, "com.facebook.platform.PLATFORM_ACTIVITY", s);
        if (activityIntent == null) {
            return null;
        }
        activityIntent.putExtras(bundle).putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", n).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", s);
        return activityIntent;
    }
    
    public static Intent createPlatformServiceIntent(final Context context) {
        for (final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo : NativeProtocol.facebookAppInfoList) {
            final Intent validateServiceIntent = validateServiceIntent(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage(nativeProtocol$NativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeProtocol$NativeAppInfo);
            if (validateServiceIntent != null) {
                return validateServiceIntent;
            }
        }
        return null;
    }
    
    public static Intent createProxyAuthIntent(final Context context, final String s, final List<String> list, final String s2) {
        final Intent putExtra = new Intent().setClassName(NativeProtocol.FACEBOOK_APP_INFO.getPackage(), "com.facebook.katana.ProxyAuth").putExtra("client_id", s);
        if (!Utility.isNullOrEmpty((Collection<Object>)list)) {
            putExtra.putExtra("scope", TextUtils.join((CharSequence)",", (Iterable)list));
        }
        if (!Utility.isNullOrEmpty(s2)) {
            putExtra.putExtra("e2e", s2);
        }
        return validateActivityIntent(context, putExtra, NativeProtocol.FACEBOOK_APP_INFO);
    }
    
    public static Intent createTokenRefreshIntent(final Context context) {
        return validateServiceIntent(context, new Intent().setClassName(NativeProtocol.FACEBOOK_APP_INFO.getPackage(), "com.facebook.katana.platform.TokenRefreshService"), NativeProtocol.FACEBOOK_APP_INFO);
    }
    
    private static String ensureDefaultAudience(final String s) {
        if (Utility.isNullOrEmpty(s)) {
            return "SELF";
        }
        return s;
    }
    
    private static ArrayList<String> ensureDefaultPermissions(final ArrayList<String> c) {
        ArrayList<String> list;
        if (Utility.isNullOrEmpty((Collection<Object>)c)) {
            list = new ArrayList<String>();
        }
        else {
            for (final String anObject : c) {
                if (Session.isPublishPermission(anObject) || "basic_info".equals(anObject)) {
                    return c;
                }
            }
            list = new ArrayList<String>(c);
        }
        list.add("basic_info");
        return list;
    }
    
    private static Intent findActivityIntent(final Context context, final String action, final String s) {
        final List<NativeProtocol$NativeAppInfo> list = NativeProtocol.actionToAppInfoMap.get(s);
        Intent validateActivityIntent;
        if (list == null) {
            validateActivityIntent = null;
        }
        else {
            final Iterator<NativeProtocol$NativeAppInfo> iterator = list.iterator();
            validateActivityIntent = null;
            while (iterator.hasNext()) {
                final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo = iterator.next();
                validateActivityIntent = validateActivityIntent(context, new Intent().setAction(action).setPackage(nativeProtocol$NativeAppInfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeProtocol$NativeAppInfo);
                if (validateActivityIntent != null) {
                    return validateActivityIntent;
                }
            }
        }
        return validateActivityIntent;
    }
    
    private static String generateCallId() {
        return UUID.randomUUID().toString();
    }
    
    public static Exception getErrorFromResult(final Intent intent) {
        if (!isErrorResult(intent)) {
            return null;
        }
        final String stringExtra = intent.getStringExtra("com.facebook.platform.status.ERROR_TYPE");
        final String stringExtra2 = intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION");
        if (stringExtra.equalsIgnoreCase("UserCanceled")) {
            return new FacebookOperationCanceledException(stringExtra2);
        }
        return new FacebookException(stringExtra2);
    }
    
    public static int getLatestAvailableProtocolVersionForAction(final Context context, final String s, final int n) {
        return getLatestAvailableProtocolVersionForAppInfoList(context, NativeProtocol.actionToAppInfoMap.get(s), n);
    }
    
    private static int getLatestAvailableProtocolVersionForAppInfo(final Context context, final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo, final int n) {
        final Cursor query = context.getContentResolver().query(buildPlatformProviderVersionURI(nativeProtocol$NativeAppInfo), new String[] { "version" }, (String)null, (String[])null, (String)null);
        if (query == null) {
            return -1;
        }
        final HashSet<Integer> set = new HashSet<Integer>();
        while (query.moveToNext()) {
            set.add(query.getInt(query.getColumnIndex("version")));
        }
        for (final Integer n2 : NativeProtocol.KNOWN_PROTOCOL_VERSIONS) {
            if (n2 < n) {
                return -1;
            }
            if (set.contains(n2)) {
                return n2;
            }
        }
        return -1;
    }
    
    private static int getLatestAvailableProtocolVersionForAppInfoList(final Context context, final List<NativeProtocol$NativeAppInfo> list, final int n) {
        if (list == null) {
            return -1;
        }
        final Iterator<NativeProtocol$NativeAppInfo> iterator = list.iterator();
        while (iterator.hasNext()) {
            final int latestAvailableProtocolVersionForAppInfo = getLatestAvailableProtocolVersionForAppInfo(context, iterator.next(), n);
            if (latestAvailableProtocolVersionForAppInfo != -1) {
                return latestAvailableProtocolVersionForAppInfo;
            }
        }
        return -1;
    }
    
    public static int getLatestAvailableProtocolVersionForService(final Context context, final int n) {
        return getLatestAvailableProtocolVersionForAppInfoList(context, NativeProtocol.facebookAppInfoList, n);
    }
    
    public static boolean isErrorResult(final Intent intent) {
        return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }
    
    public static boolean isServiceDisabledResult20121101(final Intent intent) {
        final int intExtra = intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        final String stringExtra = intent.getStringExtra("com.facebook.platform.status.ERROR_TYPE");
        return 20121101 == intExtra && "ServiceDisabled".equals(stringExtra);
    }
    
    static Intent validateActivityIntent(final Context context, final Intent intent, final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo) {
        if (intent == null) {
            return null;
        }
        final ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveActivity == null) {
            return null;
        }
        if (!nativeProtocol$NativeAppInfo.validateSignature(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }
    
    static Intent validateServiceIntent(final Context context, final Intent intent, final NativeProtocol$NativeAppInfo nativeProtocol$NativeAppInfo) {
        if (intent == null) {
            return null;
        }
        final ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService == null) {
            return null;
        }
        if (!nativeProtocol$NativeAppInfo.validateSignature(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }
}
