.class public Lcom/jesusla/facebook/FacebookLib;
.super Lcom/jesusla/ane/Context;
.source "FacebookLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;
    }
.end annotation


# static fields
.field static final DIALOG_CANCELED:I = 0x2

.field static final DIALOG_FAILED:I = 0x1

.field static final DIALOG_SUCCESS:I

.field private static currentInstance:Lcom/jesusla/facebook/FacebookLib;

.field public static statusCallback:Lcom/facebook/Session$StatusCallback;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/jesusla/ane/Closure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/jesusla/ane/Context;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    .line 48
    const-string v0, "applicationId"

    const-string v1, "getApplicationId"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "accessToken"

    const-string v1, "getAccessToken"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "expirationDate"

    const-string v1, "getExpirationDate"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "login"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 52
    const-string v0, "logout"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 53
    const-string v0, "isSessionValid"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 54
    const-string v0, "showDialog"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 55
    const-string v0, "graph"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 56
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 57
    const-string v0, "requestNewReadPermissions"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 58
    const-string v0, "requestNewPublishPermissions"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 59
    const-string v0, "attributionID"

    invoke-virtual {p0, v0}, Lcom/jesusla/facebook/FacebookLib;->registerFunction(Ljava/lang/String;)V

    .line 60
    sput-object p0, Lcom/jesusla/facebook/FacebookLib;->currentInstance:Lcom/jesusla/facebook/FacebookLib;

    .line 61
    return-void
.end method

.method private bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 7
    .param p1, "urlParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 264
    .local v4, "rv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .local v2, "key":Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 267
    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 268
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 269
    .local v3, "ki":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 270
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 274
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    .end local v3    # "ki":Ljava/lang/String;
    .end local v5    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 280
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "index":I
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public static getCurrentInstance()Lcom/jesusla/facebook/FacebookLib;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/jesusla/facebook/FacebookLib;->currentInstance:Lcom/jesusla/facebook/FacebookLib;

    return-object v0
.end method

.method public static isSessionValid()Z
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 162
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    .line 165
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attributionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public extendedPermissionsComplete(Ljava/lang/String;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "callbackHash"    # Ljava/lang/String;
    .param p2, "session"    # Lcom/facebook/Session;
    .param p3, "state"    # Lcom/facebook/SessionState;
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 284
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jesusla/ane/Closure;

    .line 285
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    if-eqz v0, :cond_1

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p4, :cond_0

    .line 288
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 289
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "error"

    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 293
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jesusla/facebook/FacebookLib;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    .local v0, "expires":Ljava/util/Date;
    move-object v1, v0

    .line 134
    .end local v0    # "expires":Ljava/util/Date;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public graph(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/jesusla/ane/Closure;)Ljava/lang/String;
    .locals 9
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "httpMethodString"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/jesusla/ane/Closure;

    .prologue
    const/4 v8, 0x0

    .line 183
    const/4 v6, 0x0

    .line 185
    .local v6, "response":Ljava/lang/String;
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 187
    .local v1, "session":Lcom/facebook/Session;
    new-instance v5, Lcom/jesusla/facebook/FacebookLib$1;

    invoke-direct {v5, p0, p4}, Lcom/jesusla/facebook/FacebookLib$1;-><init>(Lcom/jesusla/facebook/FacebookLib;Lcom/jesusla/ane/Closure;)V

    .line 202
    .local v5, "reqCallback":Lcom/facebook/Request$Callback;
    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 203
    .local v4, "httpMethod":Lcom/facebook/HttpMethod;
    const-string v2, "delete"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    .line 206
    :cond_0
    const-string v2, "post"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 210
    :cond_1
    new-instance v0, Lcom/facebook/Request;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 211
    .local v0, "request":Lcom/facebook/Request;
    new-instance v7, Lcom/facebook/RequestAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/Request;

    aput-object v0, v2, v8

    invoke-direct {v7, v2}, Lcom/facebook/RequestAsyncTask;-><init>([Lcom/facebook/Request;)V

    .line 212
    .local v7, "task":Lcom/facebook/RequestAsyncTask;
    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v2}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    .end local v0    # "request":Lcom/facebook/Request;
    .end local v1    # "session":Lcom/facebook/Session;
    .end local v4    # "httpMethod":Lcom/facebook/HttpMethod;
    .end local v5    # "reqCallback":Lcom/facebook/Request$Callback;
    .end local v7    # "task":Lcom/facebook/RequestAsyncTask;
    :cond_2
    return-object v6
.end method

.method protected initContext()V
    .locals 14

    .prologue
    .line 65
    new-instance v10, Lcom/jesusla/facebook/RemapResourceIds;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jesusla/facebook/RemapResourceIds;-><init>(Landroid/content/Context;)V

    .line 67
    sget-object v10, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    if-nez v10, :cond_0

    .line 68
    new-instance v10, Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;

    invoke-direct {v10, p0}, Lcom/jesusla/facebook/FacebookLib$SessionStatusCallback;-><init>(Lcom/jesusla/facebook/FacebookLib;)V

    sput-object v10, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jesusla/facebook/FacebookLib;->applicationId:Ljava/lang/String;

    .line 72
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FacebookAppID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/jesusla/facebook/FacebookLib;->applicationId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/jesusla/ane/Extension;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getProperties()Landroid/os/Bundle;

    move-result-object v8

    .line 76
    .local v8, "properties":Landroid/os/Bundle;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v9

    .line 79
    .local v9, "session":Lcom/facebook/Session;
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 80
    .local v7, "preferences":Landroid/content/SharedPreferences;
    const-string v10, "FBAccessTokenKey"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "accessToken":Ljava/lang/String;
    const-string v10, "FBExpirationDateKey"

    const-wide/16 v11, 0x0

    invoke-interface {v7, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    .local v0, "accessExpires":J
    const-string v10, "FBLastAccessUpdate"

    const-wide/16 v11, 0x0

    invoke-interface {v7, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 83
    .local v4, "lastAccessUpdate":J
    if-eqz v2, :cond_1

    .line 84
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v2, v10, v11, v12, v13}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v6

    .line 86
    .local v6, "oldAccessToken":Lcom/facebook/AccessToken;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 88
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "FBAccessTokenKey"

    invoke-interface {v3, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string v10, "FBExpirationDateKey"

    invoke-interface {v3, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string v10, "FBLastAccessUpdate"

    invoke-interface {v3, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v10, v6, v11}, Lcom/facebook/Session;->openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    move-result-object v9

    .line 96
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "oldAccessToken":Lcom/facebook/AccessToken;
    :cond_1
    if-nez v9, :cond_4

    .line 97
    if-eqz v8, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v12, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {v10, v11, v12, v8}, Lcom/facebook/Session;->restoreSession(Landroid/content/Context;Lcom/facebook/TokenCachingStrategy;Lcom/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/facebook/Session;

    move-result-object v9

    .line 102
    :cond_2
    if-nez v9, :cond_3

    .line 104
    new-instance v10, Lcom/facebook/Session$Builder;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Lcom/jesusla/facebook/FacebookLib;->applicationId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v9

    .line 107
    :cond_3
    invoke-static {v9}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 109
    invoke-virtual {v9}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v10

    sget-object v11, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v10, v11}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 110
    new-instance v10, Lcom/facebook/Session$OpenRequest;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    sget-object v11, Lcom/jesusla/facebook/FacebookLib;->statusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v10, v11}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 115
    :cond_4
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public login()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "LOGIN"

    const-string v2, "SESSION"

    invoke-virtual {p0, v1, v2}, Lcom/jesusla/facebook/FacebookLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/jesusla/facebook/FacebookLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 157
    :cond_0
    const-string v0, "LOGOUT"

    const-string v1, "SESSION"

    invoke-virtual {p0, v0, v1}, Lcom/jesusla/facebook/FacebookLib;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public permissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public requestNewPublishPermissions([Ljava/lang/String;ILcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "defaultAudience"    # I
    .param p3, "callback"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 237
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "publish"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v2, "permissions"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "defaultAudience"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "callbackHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v2, "callback_hash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 249
    .end local v0    # "callbackHash":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public requestNewReadPermissions([Ljava/lang/String;Lcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 223
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jesusla/facebook/FacebookExtendedPermissionsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "read"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "permissions"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "callbackHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v2, "callback_hash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    .end local v0    # "callbackHash":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;Landroid/os/Bundle;Lcom/jesusla/ane/Closure;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lcom/jesusla/ane/Closure;

    .prologue
    .line 169
    invoke-static {}, Lcom/jesusla/facebook/FacebookLib;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/jesusla/facebook/FacebookGraphActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "method"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "params"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "callbackHash":Ljava/lang/String;
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "callback_hash"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/jesusla/facebook/FacebookLib;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    .end local v0    # "callbackHash":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public webDialogComplete(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 7
    .param p1, "callbackHash"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/os/Bundle;
    .param p3, "error"    # Lcom/facebook/FacebookException;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 296
    iget-object v2, p0, Lcom/jesusla/facebook/FacebookLib;->callbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jesusla/ane/Closure;

    .line 297
    .local v0, "callback":Lcom/jesusla/ane/Closure;
    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0, p2}, Lcom/jesusla/facebook/FacebookLib;->bundleToMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v1

    .line 300
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_2

    .line 301
    if-nez v1, :cond_0

    .line 302
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 303
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const-string v2, "error"

    invoke-virtual {p3}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    .line 313
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 306
    .restart local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 307
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    :cond_3
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Lcom/jesusla/ane/Closure;->asyncInvoke([Ljava/lang/Object;)V

    goto :goto_0
.end method
