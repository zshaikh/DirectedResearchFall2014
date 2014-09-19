.class public Lcom/bitrhymes/facebookext/functions/GetSession;
.super Ljava/lang/Object;
.source "GetSession.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static accessToken:Ljava/lang/String;

.field public static appId:Ljava/lang/String;

.field public static expiresTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6
    .parameter "freContext"
    .parameter "args"

    .prologue
    .line 22
    const-string v1, ""

    .line 25
    .local v1, returnVal:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v3, sessionJson:Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 28
    .local v2, session:Lcom/facebook/Session;
    if-eqz v2, :cond_0

    .line 30
    const-string v4, "access_token"

    invoke-virtual {v2}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "expiry_time"

    invoke-virtual {v2}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v4, "GetSession"

    const-string v5, "session is not null, got access token and expiry time"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 43
    .end local v2           #session:Lcom/facebook/Session;
    .end local v3           #sessionJson:Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 39
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 40
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v4, 0x0

    goto :goto_0
.end method
