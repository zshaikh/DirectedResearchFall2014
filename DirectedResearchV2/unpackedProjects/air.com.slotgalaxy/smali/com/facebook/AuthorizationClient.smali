.class Lcom/facebook/AuthorizationClient;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AuthorizationClient$AuthDialogBuilder;,
        Lcom/facebook/AuthorizationClient$AuthHandler;,
        Lcom/facebook/AuthorizationClient$AuthorizationRequest;,
        Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;,
        Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;,
        Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;,
        Lcom/facebook/AuthorizationClient$OnCompletedListener;,
        Lcom/facebook/AuthorizationClient$Result;,
        Lcom/facebook/AuthorizationClient$StartActivityDelegate;,
        Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
    }
.end annotation


# static fields
.field static final EVENT_EXTRAS_APP_CALL_ID:Ljava/lang/String; = "call_id"

.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_IS_LEGACY:Ljava/lang/String; = "is_legacy"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_SERVICE_DISABLED:Ljava/lang/String; = "service_disabled"

.field static final EVENT_EXTRAS_TRY_LEGACY:Ljava/lang/String; = "try_legacy"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_EXTRAS_WRITE_PRIVACY:Ljava/lang/String; = "write_privacy"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_COMPLETE:Ljava/lang/String; = "fb_mobile_login_method_complete"

.field private static final EVENT_NAME_LOGIN_METHOD_START:Ljava/lang/String; = "fb_mobile_login_method_start"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field private static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient appEventsLogger:Lcom/facebook/AppEventsLogger;

.field transient backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

.field transient checkedInternetPermission:Z

.field transient context:Landroid/content/Context;

.field currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

.field handlersToTry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field loggingExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field transient onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

.field pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

.field transient startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 990
    invoke-static {}, Lcom/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0, p1, p2}, Lcom/facebook/AuthorizationClient;->logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V

    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "accumulate"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method private completeWithFailure()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 250
    return-void
.end method

.method private getAppEventsLogger()Lcom/facebook/AppEventsLogger;
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->appEventsLogger:Lcom/facebook/AppEventsLogger;

    return-object v0
.end method

.method private static getE2E()Ljava/lang/String;
    .locals 4

    .prologue
    .line 991
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 993
    .local v0, "e2e":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 994
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
    .locals 3
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AuthorizationClient$AuthorizationRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/AuthorizationClient$AuthHandler;>;"
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getLoginBehavior()Lcom/facebook/SessionLoginBehavior;

    move-result-object v0

    .line 193
    .local v0, "behavior":Lcom/facebook/SessionLoginBehavior;
    invoke-virtual {v0}, Lcom/facebook/SessionLoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    new-instance v2, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v2, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    new-instance v2, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/SessionLoginBehavior;->allowsWebViewAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    new-instance v2, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;

    invoke-direct {v2, p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    return-object v1
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/facebook/AuthorizationClient$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/AuthorizationClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    .local p3, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p2, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v4, p2, Lcom/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 493
    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "loggingExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "5_error_message"

    const-string v3, "2_result"

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-nez v2, :cond_1

    .line 500
    const-string v2, ""

    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 501
    const-string v2, "2_result"

    sget-object v2, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v2, "5_error_message"

    .line 503
    const-string v2, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."

    .line 502
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_0
    :goto_0
    const-string v2, "3_method"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v2, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 523
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v2

    const-string v3, "fb_mobile_login_method_complete"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 524
    return-void

    .line 505
    :cond_1
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 506
    if-eqz p2, :cond_2

    .line 507
    const-string v2, "2_result"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_2
    if-eqz p3, :cond_3

    .line 510
    const-string v2, "5_error_message"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_3
    if-eqz p4, :cond_4

    .line 513
    const-string v2, "4_error_code"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_4
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 517
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logAuthorizationMethodStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 484
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 485
    const-string v1, "3_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->getAppEventsLogger()Lcom/facebook/AppEventsLogger;

    move-result-object v1

    const-string v2, "fb_mobile_login_method_start"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 488
    return-void
.end method

.method private logWebLoginCompleted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "e2e"    # Ljava/lang/String;

    .prologue
    .line 1000
    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 1002
    .local v0, "appEventsLogger":Lcom/facebook/AppEventsLogger;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "fb_web_login_e2e"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v2, "fb_web_login_switchback_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1005
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v2, "fb_dialogs_web_login_dialog_complete"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1008
    return-void
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p0, "authLoggerId"    # Ljava/lang/String;

    .prologue
    const-string v4, ""

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 529
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    const-string v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v1, "3_method"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v1, "2_result"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const-string v1, "5_error_message"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v1, "4_error_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "6_extras"

    const-string v2, ""

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-object v0
.end method

.method private notifyBackgroundProcessingStart()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    .line 474
    :cond_0
    return-void
.end method

.method private notifyBackgroundProcessingStop()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    .line 480
    :cond_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    .line 468
    :cond_0
    return-void
.end method


# virtual methods
.method authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 149
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    :cond_3
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 157
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->getHandlerTypes(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 158
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0
.end method

.method cancelCurrentHandler()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 180
    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 209
    iget-boolean v3, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    if-eqz v3, :cond_0

    move v3, v4

    .line 223
    :goto_0
    return v3

    .line 213
    :cond_0
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->checkPermission(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "permissionCheck":I
    if-eqz v2, :cond_1

    .line 215
    iget-object v3, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    const-string v4, "string.com_facebook_internet_permission_error_title"

    invoke-static {v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->getResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "errorType":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    const-string v4, "string.com_facebook_internet_permission_error_message"

    invoke-static {v4}, Lcom/stuv/ane/facebook/FacebookWrapper;->getResourceId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "errorDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v3, v1, v0}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    .line 219
    const/4 v3, 0x0

    goto :goto_0

    .line 222
    .end local v0    # "errorDescription":Ljava/lang/String;
    .end local v1    # "errorType":Ljava/lang/String;
    :cond_1
    iput-boolean v4, p0, Lcom/facebook/AuthorizationClient;->checkedInternetPermission:Z

    move v3, v4

    .line 223
    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 3
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    .line 294
    invoke-direct {p0, v0, p1, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/facebook/AuthorizationClient$Result;Ljava/util/Map;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    iput-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    .line 303
    :cond_1
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    .line 304
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 305
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 306
    iput-object v2, p0, Lcom/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    .line 308
    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/facebook/AuthorizationClient$Result;)V

    .line 309
    return-void
.end method

.method completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 1
    .param p1, "outcome"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 282
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->complete(Lcom/facebook/AuthorizationClient$Result;)V

    goto :goto_0
.end method

.method continueAuth()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-nez v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->cancel()V

    .line 168
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    .line 170
    :cond_2
    return-void
.end method

.method createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 444
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;
    .locals 6
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 451
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 452
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;
    .locals 11
    .param p1, "pendingResult"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 368
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, "fbids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v7, "tokenPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, "newToken":Ljava/lang/String;
    new-instance v2, Lcom/facebook/AuthorizationClient$3;

    invoke-direct {v2, p0, v1}, Lcom/facebook/AuthorizationClient$3;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    .line 385
    .local v2, "meCallback":Lcom/facebook/Request$Callback;
    iget-object v9, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "validateSameFbidAsToken":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v4

    .line 387
    .local v4, "requestCurrentTokenMe":Lcom/facebook/Request;
    invoke-virtual {v4, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 389
    invoke-virtual {p0, v3}, Lcom/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v6

    .line 390
    .local v6, "requestNewTokenMe":Lcom/facebook/Request;
    invoke-virtual {v6, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 392
    invoke-virtual {p0, v8}, Lcom/facebook/AuthorizationClient;->createGetPermissionsRequest(Ljava/lang/String;)Lcom/facebook/Request;

    move-result-object v5

    .line 393
    .local v5, "requestCurrentTokenPermissions":Lcom/facebook/Request;
    new-instance v9, Lcom/facebook/AuthorizationClient$4;

    invoke-direct {v9, p0, v7}, Lcom/facebook/AuthorizationClient$4;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v9}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 412
    new-instance v0, Lcom/facebook/RequestBatch;

    const/4 v9, 0x3

    new-array v9, v9, [Lcom/facebook/Request;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    aput-object v5, v9, v10

    invoke-direct {v0, v9}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    .line 414
    .local v0, "batch":Lcom/facebook/RequestBatch;
    iget-object v9, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v9}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/facebook/RequestBatch;->setBatchApplicationId(Ljava/lang/String;)V

    .line 415
    new-instance v9, Lcom/facebook/AuthorizationClient$5;

    invoke-direct {v9, p0, v1, p1, v7}, Lcom/facebook/AuthorizationClient$5;-><init>(Lcom/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lcom/facebook/RequestBatch;->addCallback(Lcom/facebook/RequestBatch$Callback;)V

    .line 440
    return-object v0
.end method

.method getBackgroundProcessingListener()Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getInProgress()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOnCompletedListener()Lcom/facebook/AuthorizationClient$OnCompletedListener;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    return-object v0
.end method

.method getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 344
    :goto_0
    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    .line 332
    new-instance v0, Lcom/facebook/AuthorizationClient$2;

    invoke-direct {v0, p0}, Lcom/facebook/AuthorizationClient$2;-><init>(Lcom/facebook/AuthorizationClient;)V

    goto :goto_0

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V
    .locals 0
    .param p1, "backgroundProcessingListener"    # Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;

    .line 325
    return-void
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/facebook/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$1;-><init>(Lcom/facebook/AuthorizationClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 133
    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->startActivityDelegate:Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    .line 115
    return-void
.end method

.method setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V
    .locals 0
    .param p1, "onCompletedListener"    # Lcom/facebook/AuthorizationClient$OnCompletedListener;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/facebook/AuthorizationClient;->onCompletedListener:Lcom/facebook/AuthorizationClient$OnCompletedListener;

    .line 317
    return-void
.end method

.method startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->continueAuth()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->authorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    goto :goto_0
.end method

.method tryCurrentHandler()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    move v1, v3

    .line 277
    :goto_0
    return v1

    .line 269
    :cond_0
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v1, v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z

    move-result v0

    .line 270
    .local v0, "tried":Z
    if-eqz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodStart(Ljava/lang/String;)V

    :goto_1
    move v1, v0

    .line 277
    goto :goto_0

    .line 274
    :cond_1
    const-string v1, "not_tried"

    iget-object v2, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method tryNextHandler()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    .line 229
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    iget-object v5, v0, Lcom/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    .line 228
    invoke-direct/range {v0 .. v5}, Lcom/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->completeWithFailure()V

    .line 246
    :cond_2
    :goto_0
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AuthorizationClient$AuthHandler;

    iput-object v0, p0, Lcom/facebook/AuthorizationClient;->currentHandler:Lcom/facebook/AuthorizationClient$AuthHandler;

    .line 235
    invoke-virtual {p0}, Lcom/facebook/AuthorizationClient;->tryCurrentHandler()Z

    move-result v6

    .line 237
    .local v6, "started":Z
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method validateSameFbidAndFinish(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 3
    .param p1, "pendingResult"    # Lcom/facebook/AuthorizationClient$Result;

    .prologue
    .line 352
    iget-object v1, p1, Lcom/facebook/AuthorizationClient$Result;->token:Lcom/facebook/AccessToken;

    if-nez v1, :cond_0

    .line 353
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t validate without a token"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/facebook/AuthorizationClient$Result;)Lcom/facebook/RequestBatch;

    move-result-object v0

    .line 358
    .local v0, "batch":Lcom/facebook/RequestBatch;
    invoke-direct {p0}, Lcom/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    .line 360
    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 361
    return-void
.end method
