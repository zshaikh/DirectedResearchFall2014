.class public Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;
.super Ljava/lang/Object;
.source "FBExtendAccessTokenFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static accessTokenStr:Ljava/lang/String;

.field public static appID:Ljava/lang/String;

.field public static expiresTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .parameter "freContext"
    .parameter "args"

    .prologue
    .line 27
    :try_start_0
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 30
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->appID:Ljava/lang/String;

    .line 31
    const/4 v8, 0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->accessTokenStr:Ljava/lang/String;

    .line 32
    const/4 v8, 0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->expiresTime:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    .local v1, context:Landroid/content/Context;
    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    if-nez v8, :cond_1

    .line 42
    new-instance v8, Lcom/facebook/Session$Builder;

    invoke-direct {v8, v1}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    sget-object v9, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->appID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v7

    .line 46
    .local v7, session:Lcom/facebook/Session;
    :goto_1
    sput-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;

    .line 47
    sget-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->accessTokenStr:Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->accessTokenStr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 49
    const-string v8, "FBAuthorize, existing accesstoken"

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 53
    const-string v8, "facebook-session"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 55
    .local v6, sdk2SavedSession:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 56
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "access_token"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    sget-object v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;->accessTokenStr:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 66
    .local v0, accessToken:Lcom/facebook/AccessToken;
    :try_start_3
    invoke-virtual {v7}, Lcom/facebook/Session;->isOpened()Z

    move-result v8

    if-nez v8, :cond_2

    .line 68
    new-instance v8, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction$1;

    invoke-direct {v8, p0}, Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction$1;-><init>(Lcom/bitrhymes/facebookext/functions/FBExtendAccessTokenFunction;)V

    invoke-virtual {v7, v0, v8}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 114
    .end local v0           #accessToken:Lcom/facebook/AccessToken;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #sdk2SavedSession:Landroid/content/SharedPreferences;
    .end local v7           #session:Lcom/facebook/Session;
    :cond_0
    :goto_2
    const/4 v8, 0x0

    return-object v8

    .line 34
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 36
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ERROR - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 107
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 108
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 44
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    :try_start_5
    sget-object v7, Lcom/bitrhymes/facebookext/FacebookExtContext;->session:Lcom/facebook/Session;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .restart local v7       #session:Lcom/facebook/Session;
    goto :goto_1

    .line 96
    .restart local v0       #accessToken:Lcom/facebook/AccessToken;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #sdk2SavedSession:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_6
    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v9, "EXTEND_ACCESS_TOKEN_EVENT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "success,"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 99
    :catch_2
    move-exception v8

    move-object v5, v8

    .line 101
    .local v5, exception:Ljava/lang/UnsupportedOperationException;
    if-eqz v5, :cond_3

    :try_start_7
    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 102
    .local v4, error:Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "FBAuthorize, Session migration failed with error: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 103
    sget-object v8, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    const-string v9, "EXTEND_ACCESS_TOKEN_EVENT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "failed,"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_2

    .line 110
    .end local v0           #accessToken:Lcom/facebook/AccessToken;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #error:Ljava/lang/String;
    .end local v5           #exception:Ljava/lang/UnsupportedOperationException;
    .end local v6           #sdk2SavedSession:Landroid/content/SharedPreferences;
    .end local v7           #session:Lcom/facebook/Session;
    :catch_3
    move-exception v8

    move-object v2, v8

    .line 111
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 101
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #accessToken:Lcom/facebook/AccessToken;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #exception:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #sdk2SavedSession:Landroid/content/SharedPreferences;
    .restart local v7       #session:Lcom/facebook/Session;
    :cond_3
    :try_start_8
    const-string v8, "null exception"
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v4, v8

    goto :goto_3
.end method
