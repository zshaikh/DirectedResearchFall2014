.class public Lcom/facebook/dolphin/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# static fields
.field private static final ANALYTICS_EVENT:Ljava/lang/String; = "event"

.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

.field private static final ATTRIBUTION_KEY:Ljava/lang/String; = "attribution"

.field private static final ATTRIBUTION_PREFERENCES:Ljava/lang/String; = "com.facebook.sdk.attributionTracking"

.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final FACEBOOK_DOMAIN:[Ljava/lang/String;

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

.field public static final FORCE_DIALOG_AUTH:I = -0x1

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field private static final MOBILE_INSTALL_EVENT:Ljava/lang/String; = "MOBILE_APP_INSTALL"

.field private static final PUBLISH_ACTIVITY_PATH:Ljava/lang/String; = "%s/activities"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"

.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field public static final TOKEN:Ljava/lang/String; = "access_token"


# instance fields
.field private final REFRESH_TOKEN_BARRIER:J

.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mAuthActivity:Landroid/app/Activity;

.field private mAuthActivityCode:I

.field private mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

.field private mAuthPermissions:[Ljava/lang/String;

.field private mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

.field private mLastAccessUpdate:J

.field private mSpinner:Landroid/app/ProgressDialog;

.field private publishSuccess:Z

.field private shouldAutoPublishInstall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/dolphin/Facebook;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "https://facebook.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://.facebook.com"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/dolphin/Facebook;->FACEBOOK_DOMAIN:[Ljava/lang/String;

    .line 94
    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/facebook/dolphin/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    .line 96
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/facebook/dolphin/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 98
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/facebook/dolphin/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object v2, p0, Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;

    .line 102
    iput-wide v0, p0, Lcom/facebook/dolphin/Facebook;->mLastAccessUpdate:J

    .line 103
    iput-wide v0, p0, Lcom/facebook/dolphin/Facebook;->mAccessExpires:J

    .line 113
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/facebook/dolphin/Facebook;->REFRESH_TOKEN_BARRIER:J

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/dolphin/Facebook;->publishSuccess:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/dolphin/Facebook;->shouldAutoPublishInstall:Z

    .line 117
    iput-object v2, p0, Lcom/facebook/dolphin/Facebook;->mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/dolphin/Facebook;)Lcom/facebook/dolphin/Facebook$DialogListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/dolphin/Facebook;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/facebook/dolphin/Facebook;->publishInstall(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lcom/facebook/dolphin/Facebook;Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;)Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    return-object p1
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 966
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    .line 967
    sget-object v1, Lcom/facebook/dolphin/Facebook;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 968
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-object v3

    .line 971
    :cond_1
    const-string v1, "aid"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static publishInstall(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1015
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/Facebook;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 1016
    const-string v0, "com.facebook.sdk.attributionTracking"

    invoke-virtual {p2, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "ping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1018
    invoke-interface {v6, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1019
    cmp-long v0, v3, v10

    if-nez v0, :cond_1

    if-eqz v5, :cond_1

    .line 1020
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1021
    const-string v8, "fields"

    const-string v9, "supports_attribution"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0, p1, v0}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1023
    const-string v8, "supports_attribution"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1025
    instance-of v8, v0, Ljava/lang/Boolean;

    if-nez v8, :cond_0

    .line 1026
    new-instance v3, Lorg/json/JSONException;

    const-string v4, "%s contains %s instead of a Boolean"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "supports_attribution"

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1030
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1032
    const-string v3, "event"

    const-string v4, "MOBILE_APP_INSTALL"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v3, "attribution"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    const-string v3, "%s/activities"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1037
    const-string v4, "POST"

    invoke-virtual {p0, v3, v0, v4}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1040
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1042
    invoke-interface {v0, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1043
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1047
    :cond_1
    cmp-long v0, v3, v10

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/dolphin/Facebook;->publishSuccess:Z

    .line 1048
    return-void

    :cond_2
    move v0, v2

    .line 1047
    goto :goto_0
.end method

.method private startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    array-length v1, p2

    if-lez v1, :cond_0

    .line 381
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 384
    const-string v1, "oauth"

    new-instance v2, Lcom/facebook/dolphin/Facebook$1;

    invoke-direct {v2, p0}, Lcom/facebook/dolphin/Facebook$1;-><init>(Lcom/facebook/dolphin/Facebook;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/facebook/dolphin/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 417
    return-void
.end method

.method private startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    .line 259
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 261
    const-string v3, "com.facebook.katana"

    const-string v4, "com.facebook.katana.ProxyAuth"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v3, "client_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    array-length v3, p3

    if-lez v3, :cond_0

    .line 265
    const-string v3, "scope"

    const-string v4, ","

    invoke-static {v4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/facebook/dolphin/Facebook;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 293
    :goto_0
    return v1

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    .line 276
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    .line 277
    iget-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 278
    iget-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 279
    iget-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/facebook/dolphin/Util;->getLoadingText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    :cond_2
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAuthActivity:Landroid/app/Activity;

    .line 283
    iput-object p3, p0, Lcom/facebook/dolphin/Facebook;->mAuthPermissions:[Ljava/lang/String;

    .line 284
    iput p4, p0, Lcom/facebook/dolphin/Facebook;->mAuthActivityCode:I

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-static {v3}, Lcom/facebook/dolphin/Util;->showDialogSafe(Landroid/app/Dialog;)Z

    .line 287
    invoke-virtual {p1, v2, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 293
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->dismissDialogSafe(Landroid/content/DialogInterface;)Z

    move v0, v1

    goto :goto_1
.end method

.method private validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 312
    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/facebook/dolphin/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 352
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 358
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 359
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 360
    const/4 v0, 0x1

    .line 363
    :cond_0
    :goto_1
    return v0

    .line 358
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 330
    if-nez v1, :cond_0

    .line 334
    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/facebook/dolphin/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x7f99

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/dolphin/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 145
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 224
    .line 226
    iput-object p4, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    .line 229
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/dolphin/Facebook;->autoPublishAsync(Landroid/content/Context;Z)V

    .line 232
    if-ltz p3, :cond_0

    .line 233
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/dolphin/Facebook;->startSingleSignOn(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    .line 237
    :cond_0
    if-nez v0, :cond_1

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/facebook/dolphin/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x7f99

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/dolphin/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 155
    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 433
    iget v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthActivityCode:I

    if-ne p1, v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mSpinner:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/facebook/dolphin/Util;->dismissDialogSafe(Landroid/content/DialogInterface;)Z

    .line 438
    if-ne p2, v4, :cond_9

    .line 441
    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    if-nez v0, :cond_0

    .line 443
    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    :cond_0
    if-eqz v0, :cond_7

    .line 448
    const-string v1, "service_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AndroidAuthKillSwitchException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    :cond_1
    const-string v0, "Facebook-authorize"

    const-string v1, "Hosted auth currently disabled. Retrying dialog auth..."

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/dolphin/Facebook;->mAuthPermissions:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/facebook/dolphin/Facebook;->startDialogAuth(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 503
    :cond_2
    :goto_0
    return-void

    .line 453
    :cond_3
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 455
    :cond_4
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/facebook/dolphin/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 458
    :cond_5
    const-string v1, "error_description"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_6

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_6
    const-string v1, "Facebook-authorize"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Login failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    new-instance v2, Lcom/facebook/dolphin/FacebookError;

    invoke-direct {v2, v0}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/dolphin/Facebook$DialogListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    goto :goto_0

    .line 469
    :cond_7
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 470
    const-string v0, "expires_in"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/Facebook;->setAccessExpiresIn(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 472
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login Success! access_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expires="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 478
    :cond_8
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    new-instance v1, Lcom/facebook/dolphin/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/dolphin/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    goto/16 :goto_0

    .line 484
    :cond_9
    if-nez p2, :cond_2

    .line 487
    if-eqz p3, :cond_a

    .line 488
    const-string v0, "Facebook-authorize"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    new-instance v1, Lcom/facebook/dolphin/DialogError;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/dolphin/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onError(Lcom/facebook/dolphin/DialogError;)V

    goto/16 :goto_0

    .line 498
    :cond_a
    const-string v0, "Facebook-authorize"

    const-string v1, "Login canceled by user."

    invoke-static {v0, v1}, Lcom/facebook/dolphin/Util;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAuthDialogListener:Lcom/facebook/dolphin/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/facebook/dolphin/Facebook$DialogListener;->onCancel()V

    goto/16 :goto_0
.end method

.method autoPublishAsync(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    monitor-enter p0

    .line 1053
    :try_start_0
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook;->mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getShouldAutoPublishInstall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1055
    :cond_0
    iget-object v1, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    .line 1058
    if-eqz v1, :cond_1

    .line 1059
    new-instance v0, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;-><init>(Lcom/facebook/dolphin/Facebook;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAutoPublishAsyncTask:Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;

    .line 1062
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    if-eqz v0, :cond_2

    .line 1065
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/dolphin/Facebook$AutoPublishAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1067
    :cond_2
    return-void

    .line 1062
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 3

    .prologue
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/dolphin/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    const-string v1, "display"

    const-string v2, "touch"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v1, "redirect_uri"

    const-string v2, "fbconnect://success"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v1, "oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    const-string v1, "type"

    const-string v2, "user_agent"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v1, "client_id"

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/facebook/dolphin/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 854
    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/facebook/dolphin/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    :goto_1
    return-void

    .line 845
    :cond_1
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_2
    new-instance v1, Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-direct {v1, p1, v0, p4}, Lcom/facebook/dolphin/FacebookAuthDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/dolphin/Facebook$DialogListener;)V

    invoke-static {v1}, Lcom/facebook/dolphin/Util;->showDialogSafe(Landroid/app/Dialog;)Z

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/dolphin/Facebook$DialogListener;)V
    .locals 1

    .prologue
    .line 814
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/dolphin/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/dolphin/Facebook$DialogListener;)V

    .line 815
    return-void
.end method

.method public extendAccessToken(Landroid/content/Context;Lcom/facebook/dolphin/Facebook$ServiceListener;)Z
    .locals 3

    .prologue
    .line 525
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/facebook/dolphin/Facebook;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/dolphin/Facebook$TokenRefreshServiceConnection;-><init>(Lcom/facebook/dolphin/Facebook;Landroid/content/Context;Lcom/facebook/dolphin/Facebook$ServiceListener;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/facebook/dolphin/Facebook$ServiceListener;)Z
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0, p1, p2}, Lcom/facebook/dolphin/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/facebook/dolphin/Facebook$ServiceListener;)Z

    move-result v0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessExpires()J
    .locals 2

    .prologue
    .line 887
    iget-wide v0, p0, Lcom/facebook/dolphin/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessUpdate()J
    .locals 2

    .prologue
    .line 897
    iget-wide v0, p0, Lcom/facebook/dolphin/Facebook;->mLastAccessUpdate:J

    return-wide v0
.end method

.method public getShouldAutoPublishInstall()Z
    .locals 1

    .prologue
    .line 983
    iget-boolean v0, p0, Lcom/facebook/dolphin/Facebook;->shouldAutoPublishInstall:Z

    return v0
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 666
    sget-object v0, Lcom/facebook/dolphin/Facebook;->FACEBOOK_DOMAIN:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/dolphin/Util;->clearCookies(Landroid/content/Context;[Ljava/lang/String;)V

    .line 667
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 668
    const-string v1, "method"

    const-string v2, "auth.expireSession"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0, v0}, Lcom/facebook/dolphin/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 670
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/dolphin/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 671
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/facebook/dolphin/Facebook;->setAccessExpires(J)V

    .line 672
    return-object v0
.end method

.method public publishInstall(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/facebook/dolphin/Facebook;->autoPublishAsync(Landroid/content/Context;Z)V

    .line 1002
    iget-boolean v0, p0, Lcom/facebook/dolphin/Facebook;->publishSuccess:Z

    return v0
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 705
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 731
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/dolphin/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 788
    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/dolphin/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/facebook/dolphin/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 792
    :cond_1
    sget-object v0, Lcom/facebook/dolphin/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 0

    .prologue
    .line 932
    iput-wide p1, p0, Lcom/facebook/dolphin/Facebook;->mAccessExpires:J

    .line 933
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 943
    if-eqz p1, :cond_0

    .line 944
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    .line 947
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/facebook/dolphin/Facebook;->setAccessExpires(J)V

    .line 949
    :cond_0
    return-void

    .line 944
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 921
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/dolphin/Facebook;->mLastAccessUpdate:J

    .line 923
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAppId:Ljava/lang/String;

    .line 957
    return-void
.end method

.method public setShouldAutoPublishInstall(Z)V
    .locals 0

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/facebook/dolphin/Facebook;->shouldAutoPublishInstall:Z

    .line 992
    return-void
.end method

.method public setTokenFromCache(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/facebook/dolphin/Facebook;->mAccessToken:Ljava/lang/String;

    .line 911
    iput-wide p2, p0, Lcom/facebook/dolphin/Facebook;->mAccessExpires:J

    .line 912
    iput-wide p4, p0, Lcom/facebook/dolphin/Facebook;->mLastAccessUpdate:J

    .line 913
    return-void
.end method

.method public shouldExtendAccessToken()Z
    .locals 4

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/facebook/dolphin/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/dolphin/Facebook;->mLastAccessUpdate:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
