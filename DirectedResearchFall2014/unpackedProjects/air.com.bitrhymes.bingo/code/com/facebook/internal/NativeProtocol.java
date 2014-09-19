package com.facebook.internal;

import android.net.*;
import android.content.*;
import android.text.*;
import com.facebook.*;
import java.util.*;
import android.database.*;
import android.os.*;
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
    public static final String CONTENT_SCHEME = "content://";
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
    static final String FACEBOOK_PACKAGE = "com.facebook.katana";
    static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    static final String KATANA_SIGNATURE = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2";
    private static final List<Integer> KNOWN_PROTOCOL_VERSIONS;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 65537;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 65536;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 65541;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 65540;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 65539;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 65538;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    public static final String PLATFORM_PROVIDER = "com.facebook.katana.provider.PlatformProvider";
    public static final Uri PLATFORM_PROVIDER_VERSIONS_URI;
    public static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 20121101;
    public static final int PROTOCOL_VERSION_20130502 = 20130502;
    public static final int PROTOCOL_VERSION_20130618 = 20130618;
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    
    static {
        PLATFORM_PROVIDER_VERSIONS_URI = Uri.parse("content://com.facebook.katana.provider.PlatformProvider/versions");
        KNOWN_PROTOCOL_VERSIONS = Arrays.asList(20130618, 20130502, 20121101);
    }
    
    public static Intent createLoginDialog20121101Intent(final Context context, final String s, final ArrayList<String> list, final String s2) {
        return validateKatanaActivityIntent(context, new Intent().setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage("com.facebook.katana").addCategory("android.intent.category.DEFAULT").putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 20121101).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", "com.facebook.platform.action.request.LOGIN_DIALOG").putExtra("com.facebook.platform.extra.APPLICATION_ID", s).putStringArrayListExtra("com.facebook.platform.extra.PERMISSIONS", (ArrayList)ensureDefaultPermissions(list)).putExtra("com.facebook.platform.protocol.CALL_ID", generateCallId()).putExtra("com.facebook.platform.extra.WRITE_PRIVACY", ensureDefaultAudience(s2)));
    }
    
    public static Intent createPlatformActivityIntent(final Context context, final String s, final int n, final Bundle bundle) {
        return validateKatanaActivityIntent(context, new Intent().setAction("com.facebook.platform.PLATFORM_ACTIVITY").setPackage("com.facebook.katana").addCategory("android.intent.category.DEFAULT").putExtras(bundle).putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", n).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", s));
    }
    
    public static Intent createPlatformServiceIntent(final Context context) {
        return validateKatanaServiceIntent(context, new Intent("com.facebook.platform.PLATFORM_SERVICE").setPackage("com.facebook.katana").addCategory("android.intent.category.DEFAULT"));
    }
    
    public static Intent createProxyAuthIntent(final Context context, final String s, final List<String> list, final String s2) {
        final Intent putExtra = new Intent().setClassName("com.facebook.katana", "com.facebook.katana.ProxyAuth").putExtra("client_id", s);
        if (!Utility.isNullOrEmpty((Collection<Object>)list)) {
            putExtra.putExtra("scope", TextUtils.join((CharSequence)",", (Iterable)list));
        }
        if (!Utility.isNullOrEmpty(s2)) {
            putExtra.putExtra("e2e", s2);
        }
        return validateKatanaActivityIntent(context, putExtra);
    }
    
    public static Intent createTokenRefreshIntent(final Context context) {
        return validateKatanaServiceIntent(context, new Intent().setClassName("com.facebook.katana", "com.facebook.katana.platform.TokenRefreshService"));
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
    
    public static int getLatestAvailableProtocolVersion(final Context context, final int n) {
        final Cursor query = context.getContentResolver().query(NativeProtocol.PLATFORM_PROVIDER_VERSIONS_URI, new String[] { "version" }, (String)null, (String[])null, (String)null);
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
    
    public static boolean isErrorResult(final Intent intent) {
        return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }
    
    public static boolean isServiceDisabledResult20121101(final Intent intent) {
        final int intExtra = intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0);
        final String stringExtra = intent.getStringExtra("com.facebook.platform.status.ERROR_TYPE");
        return 20121101 == intExtra && "ServiceDisabled".equals(stringExtra);
    }
    
    static Intent validateKatanaActivityIntent(final Context context, final Intent intent) {
        if (intent == null) {
            return null;
        }
        final ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveActivity == null) {
            return null;
        }
        if (!validateSignature(context, resolveActivity.activityInfo.packageName)) {
            return null;
        }
        return intent;
    }
    
    static Intent validateKatanaServiceIntent(final Context context, final Intent intent) {
        if (intent == null) {
            return null;
        }
        final ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService == null) {
            return null;
        }
        if (!validateSignature(context, resolveService.serviceInfo.packageName)) {
            return null;
        }
        return intent;
    }
    
    static final boolean validateSignature(final Context context, final String s) {
        final String brand = Build.BRAND;
        final int flags = context.getApplicationInfo().flags;
        if (brand.startsWith("generic") && (flags & 0x2) != 0x0) {
            return true;
        }
        while (true) {
            while (true) {
                Signature[] signatures;
                int n;
                try {
                    signatures = context.getPackageManager().getPackageInfo(s, 64).signatures;
                    final int length = signatures.length;
                    n = 0;
                    if (n >= length) {
                        return false;
                    }
                }
                catch (PackageManager$NameNotFoundException ex) {
                    return false;
                }
                if (signatures[n].toCharsString().equals("30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2")) {
                    break;
                }
                ++n;
                continue;
            }
        }
        return true;
    }
}
