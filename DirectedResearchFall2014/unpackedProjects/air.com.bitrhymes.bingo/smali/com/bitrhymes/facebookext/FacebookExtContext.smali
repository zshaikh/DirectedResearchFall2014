.class public Lcom/bitrhymes/facebookext/FacebookExtContext;
.super Lcom/adobe/fre/FREContext;
.source "FacebookExtContext.java"


# static fields
.field public static facebook:Lcom/facebook/android/Facebook;

.field public static facebookLoginActivity:Lcom/bitrhymes/facebookext/LoginActivity;

.field public static session:Lcom/facebook/Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method

.method public static updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "accessTokenStr"
    .parameter "expiryTimeStr"
    .parameter "appID"

    .prologue
    const/4 v11, 0x0

    .line 67
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v7}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    .local v1, context:Landroid/content/Context;
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v7}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v7, Lcom/facebook/Session$Builder;

    invoke-direct {v7, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, p2}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v6

    .line 76
    .local v6, session:Lcom/facebook/Session;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 78
    const-string v7, "FBAuthorize, existing accesstoken"

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 81
    const-string v7, "facebook-session"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 83
    .local v5, sdk2SavedSession:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 84
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "access_token"

    invoke-interface {v2, v7, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    invoke-static {p0, v11, v11, v11, v11}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 94
    .local v0, accessToken:Lcom/facebook/AccessToken;
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-nez v7, :cond_1

    .line 96
    new-instance v7, Lcom/bitrhymes/facebookext/FacebookExtContext$1;

    invoke-direct {v7}, Lcom/bitrhymes/facebookext/FacebookExtContext$1;-><init>()V

    invoke-virtual {v6, v0, v7}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0           #accessToken:Lcom/facebook/AccessToken;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sdk2SavedSession:Landroid/content/SharedPreferences;
    :cond_1
    sput-object v6, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto :goto_0

    .line 120
    .restart local v0       #accessToken:Lcom/facebook/AccessToken;
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #sdk2SavedSession:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 122
    .local v4, exception:Ljava/lang/UnsupportedOperationException;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 123
    .local v3, error:Ljava/lang/String;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FBAuthorize, Session migration failed with error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 124
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v8, "EXTEND_ACCESS_TOKEN_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "failed,"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sput-object v11, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    goto :goto_0

    .line 122
    .end local v3           #error:Ljava/lang/String;
    :cond_2
    const-string v7, "null exception"

    move-object v3, v7

    goto :goto_1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 43
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v0, functions:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/adobe/fre/FREFunction;>;"
    const-string v1, "fbLogout"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBLogout;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBLogout;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "extendAccessToken"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "fbAuthorize"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "getSession"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/GetSession;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/GetSession;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "openRequestDialog"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBOpenRequestDialogFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBOpenRequestDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "openParticularFriendRequestDialog"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendRequestDialogFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendRequestDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "openFeedDialog"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBOpenFeedDialogFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBOpenFeedDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "openParticularFriendFeedDialog"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendFeedDialogFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendFeedDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "logPurchase"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBLogPurchaseFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBLogPurchaseFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "publishInstall"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBPublishInstallFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBPublishInstallFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "setClientToken"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBSetClientToken;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBSetClientToken;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "pixelConversionUpdate"

    new-instance v2, Lcom/bitrhymes/facebookext/functions/FBLogEventFunction;

    invoke-direct {v2}, Lcom/bitrhymes/facebookext/functions/FBLogEventFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method
