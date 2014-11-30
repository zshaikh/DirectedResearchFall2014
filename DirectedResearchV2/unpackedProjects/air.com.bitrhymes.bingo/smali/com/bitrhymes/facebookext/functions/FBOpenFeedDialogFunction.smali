.class public Lcom/bitrhymes/facebookext/functions/FBOpenFeedDialogFunction;
.super Ljava/lang/Object;
.source "FBOpenFeedDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;
.implements Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 16
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 26
    :try_start_0
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 27
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "appAccessToken":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "appId":Ljava/lang/String;
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "actionName":Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "actionLink":Ljava/lang/String;
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 32
    .local v5, "appName":Ljava/lang/String;
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 33
    .local v6, "caption":Ljava/lang/String;
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 34
    .local v7, "description":Ljava/lang/String;
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 35
    .local v9, "fbLink":Ljava/lang/String;
    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 36
    .local v13, "picUrl":Ljava/lang/String;
    const/16 v14, 0x9

    aget-object v14, p2, v14

    invoke-virtual {v14}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 39
    .local v8, "expiresTime":Ljava/lang/String;
    invoke-static {v3, v8, v4}, Lcom/bitrhymes/facebookext/FacebookExtContext;->updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, "actionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "name"

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v14, "link"

    invoke-virtual {v1, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v12, "params":Landroid/os/Bundle;
    const-string v14, "name"

    invoke-virtual {v12, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v14, "caption"

    invoke-virtual {v12, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v14, "description"

    invoke-virtual {v12, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v14, "link"

    invoke-virtual {v12, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v14, "picture"

    invoke-virtual {v12, v14, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v14, "actions"

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v14, "frictionless"

    const-string v15, "1"

    invoke-virtual {v12, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v11, "feed"

    .line 56
    .local v11, "method":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-class v15, Lcom/bitrhymes/facebookext/DialogActivity;

    invoke-direct {v10, v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v10, "i":Landroid/content/Intent;
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".method"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".parameters"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, ".callback"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "actionLink":Ljava/lang/String;
    .end local v1    # "actionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "actionName":Ljava/lang/String;
    .end local v3    # "appAccessToken":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v6    # "caption":Ljava/lang/String;
    .end local v7    # "description":Ljava/lang/String;
    .end local v8    # "expiresTime":Ljava/lang/String;
    .end local v9    # "fbLink":Ljava/lang/String;
    .end local v10    # "i":Landroid/content/Intent;
    .end local v11    # "method":Ljava/lang/String;
    .end local v12    # "params":Landroid/os/Bundle;
    .end local v13    # "picUrl":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x0

    return-object v14

    .line 62
    :catch_0
    move-exception v14

    goto :goto_0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 81
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 76
    return-void
.end method
