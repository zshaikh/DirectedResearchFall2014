.class public Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;
.super Ljava/lang/Object;
.source "FbAuthorizeFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# instance fields
.field public accessTokenStr:Ljava/lang/String;

.field public appID:Ljava/lang/String;

.field public expiresTime:Ljava/lang/String;

.field public permissions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authorize()V
    .locals 4

    .prologue
    .line 133
    const-string v1, "read"

    .line 134
    .local v1, "type":Ljava/lang/String;
    const-string v2, "FBAuthorization"

    iget-object v3, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->permissions:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bitrhymes/facebookext/LoginActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "permissions"

    iget-object v3, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->permissions:Ljava/lang/String;

    invoke-static {v3}, Lcom/bitrhymes/facebookext/Utilities;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "reauthorize"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    sget-object v2, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v2}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string v12, "FBAuthorize - cachedAccessToken="

    .line 28
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 31
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->appID:Ljava/lang/String;

    .line 32
    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->permissions:Ljava/lang/String;

    .line 33
    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->accessTokenStr:Ljava/lang/String;

    .line 34
    const/4 v8, 0x3

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->expiresTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize appID : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->appID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize permissions : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->permissions:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize accessTokenStr : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->accessTokenStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 44
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize expiresTime : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->expiresTime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 49
    .local v1, "context":Landroid/content/Context;
    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-nez v8, :cond_1

    .line 50
    new-instance v8, Lcom/facebook/Session$Builder;

    invoke-direct {v8, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->appID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v7

    .line 54
    .local v7, "session":Lcom/facebook/Session;
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize session : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize FacebookExtContext.session : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 57
    sput-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 58
    iget-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->accessTokenStr:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->accessTokenStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v7}, Lcom/facebook/Session;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    .line 60
    const-string v8, "FBAuthorize, existing accesstoken"

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 64
    const-string v8, "facebook-session"

    invoke-virtual {v1, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 66
    .local v6, "sdk2SavedSession":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 67
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "access_token"

    invoke-interface {v3, v8, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    iget-object v8, p0, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->accessTokenStr:Ljava/lang/String;

    invoke-static {v8, v10, v10, v10, v10}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 77
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    :try_start_1
    const-string v8, "FBAuthorize, try"

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 78
    new-instance v8, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction$1;

    invoke-direct {v8, p0}, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction$1;-><init>(Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;)V

    invoke-virtual {v7, v0, v8}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "sdk2SavedSession":Landroid/content/SharedPreferences;
    :cond_0
    :goto_2
    invoke-static {v7}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize - cachedAccessToken="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v9}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 124
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize - cachedAccessToken="

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 125
    sput-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 126
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize, session="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/bitrhymes/facebookext/functions/FbAuthorizeFunction;->authorize()V

    .line 128
    return-object v10

    .line 36
    .end local v1    # "context":Landroid/content/Context;
    .end local v7    # "session":Lcom/facebook/Session;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize ERROR - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .restart local v7    # "session":Lcom/facebook/Session;
    goto/16 :goto_1

    .line 115
    .restart local v0    # "accessToken":Lcom/facebook/AccessToken;
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "sdk2SavedSession":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v8

    move-object v5, v8

    .line 117
    .local v5, "exception":Ljava/lang/UnsupportedOperationException;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 118
    .local v4, "error":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize, Session migration failed with error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    .end local v4    # "error":Ljava/lang/String;
    :cond_2
    const-string v8, "null exception"

    move-object v4, v8

    goto :goto_3
.end method
