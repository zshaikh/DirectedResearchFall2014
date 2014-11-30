.class public Lcom/facebook/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argumentBundle:Landroid/os/Bundle;

.field private arguments:Lorg/json/JSONObject;

.field private ref:Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/facebook/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 0

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/AppLinkData;
    .locals 2

    .prologue
    .line 209
    const-string v0, "activity"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 211
    if-nez v1, :cond_1

    .line 212
    const/4 v0, 0x0

    .line 225
    :cond_0
    :goto_0
    return-object v0

    .line 215
    :cond_1
    invoke-static {v1}, Lcom/facebook/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;

    move-result-object v0

    .line 216
    if-nez v0, :cond_2

    .line 217
    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v0

    .line 220
    :cond_2
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/AppLinkData;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 229
    const-string v1, "al_applink_data"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 230
    if-nez v2, :cond_0

    .line 249
    :goto_0
    return-object v0

    .line 234
    :cond_0
    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    .line 235
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 236
    iget-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 237
    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    if-eqz v3, :cond_1

    .line 239
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 242
    :cond_1
    iput-object v2, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 243
    iput-object v0, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 244
    const-string v0, "referer_data"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_2

    .line 246
    const-string v2, "fb_ref"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    :cond_2
    move-object v0, v1

    .line 249
    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 253
    if-nez p0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-object v0

    .line 259
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    const-string v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v3, "bridge_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 263
    const-string v4, "method"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v4, "applink"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    .line 268
    const-string v3, "method_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 270
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 271
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    .line 280
    :cond_2
    :goto_1
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 284
    :cond_3
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    move-object v0, v1

    .line 286
    goto :goto_0

    .line 272
    :cond_4
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "referer_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 275
    const-string v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    const-string v3, "fb_ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 288
    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 290
    :catch_1
    move-exception v1

    .line 291
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v3, "Unable to parse AppLink JSON"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;
    .locals 1

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 302
    :cond_0
    new-instance v0, Lcom/facebook/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/AppLinkData;-><init>()V

    .line 303
    iput-object p0, v0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    .line 92
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 113
    :cond_0
    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/AppLinkData$1;

    invoke-direct {v2, v0, p1, p2}, Lcom/facebook/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v0, 0x0

    .line 130
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 131
    const-string v2, "event"

    const-string v3, "DEFERRED_APP_LINK"

    invoke-interface {v1, v2, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 136
    const-string v2, "application_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v2, "%s/activities"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3, v2, v1, v4}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    :goto_0
    if-eqz v1, :cond_5

    .line 148
    const-string v2, "applink_args"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    const-string v3, "click_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 150
    const-string v5, "applink_class"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    const-string v6, "applink_url"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    if-eqz v2, :cond_5

    const-string v6, ""

    if-eq v2, v6, :cond_5

    .line 154
    invoke-static {v2}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 156
    cmp-long v2, v3, v7

    if-eqz v2, :cond_1

    .line 158
    :try_start_1
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 161
    :cond_0
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    .line 171
    :try_start_2
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :cond_2
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 182
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 184
    :try_start_3
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    if-eqz v2, :cond_4

    .line 185
    iget-object v2, v0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_4
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, v0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v3, "com.facebook.platform.APPLINK_NATIVE_URL"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 200
    :cond_5
    :goto_3
    invoke-interface {p2, v0}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    .line 201
    return-void

    :cond_6
    move-object v1, v0

    .line 146
    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    :try_start_4
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v3, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 196
    :catch_1
    move-exception v1

    .line 197
    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to fetch deferred applink from server"

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 177
    :catch_2
    move-exception v2

    .line 178
    :try_start_5
    sget-object v2, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v3, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 190
    :catch_3
    move-exception v1

    .line 191
    sget-object v1, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 308
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 310
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 311
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 312
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 316
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_0

    .line 317
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 318
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_6

    .line 319
    check-cast v1, Lorg/json/JSONArray;

    .line 320
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 321
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 324
    instance-of v6, v2, Lorg/json/JSONObject;

    if-eqz v6, :cond_3

    .line 325
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Landroid/os/Bundle;

    move v2, v3

    .line 326
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 327
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    aput-object v7, v6, v2

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_2
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 330
    :cond_3
    instance-of v2, v2, Lorg/json/JSONArray;

    if-eqz v2, :cond_4

    .line 332
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Nested arrays are not supported."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    move v2, v3

    .line 335
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 336
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 338
    :cond_5
    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 345
    :cond_7
    return-object v4
.end method


# virtual methods
.method public getArgumentBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getArguments()Lorg/json/JSONObject;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/facebook/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    const-string v1, "referer_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 395
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
