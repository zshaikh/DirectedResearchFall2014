.class public Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;
.super Ljava/lang/Object;
.source "GetGoogleAccountID.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v12, ","

    .line 23
    const-string v3, ""

    .line 24
    .local v3, accountJsonStr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 26
    .local v5, blankObj:Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v5

    .line 27
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v4

    .line 29
    .local v4, accounts:[Landroid/accounts/Account;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 31
    .local v2, accountJsonArray:Lorg/json/JSONArray;
    array-length v8, v4

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v8, :cond_0

    .line 41
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 42
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    :goto_1
    sget-object v8, Lcom/bitrhymes/nativeutils/functions/GetGoogleAccountID;->TAG:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v6, 0x0

    .line 48
    .local v6, deviceInfoObject:Lcom/adobe/fre/FREObject;
    invoke-static {v3}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v6

    move-object v8, v6

    .line 55
    .end local v2           #accountJsonArray:Lorg/json/JSONArray;
    .end local v4           #accounts:[Landroid/accounts/Account;
    .end local v6           #deviceInfoObject:Lcom/adobe/fre/FREObject;
    :goto_2
    return-object v8

    .line 31
    .restart local v2       #accountJsonArray:Lorg/json/JSONArray;
    .restart local v4       #accounts:[Landroid/accounts/Account;
    :cond_0
    aget-object v0, v4, v9

    .line 32
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v11, "google"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v11, "facebook"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 33
    iget-object v10, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v11, "twitter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 35
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v1, accountJSONObj:Lorg/json/JSONObject;
    const-string v10, "type"

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v10, "name"

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 31
    .end local v1           #accountJSONObj:Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 44
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    .end local v2           #accountJsonArray:Lorg/json/JSONArray;
    .end local v4           #accounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 53
    .local v7, e:Ljava/lang/Exception;
    const-string v8, "ERROR_EVENT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/bitrhymes/nativeutils/utils/Utils;->getExceptionStackTraceAsString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v5

    .line 55
    goto :goto_2
.end method
