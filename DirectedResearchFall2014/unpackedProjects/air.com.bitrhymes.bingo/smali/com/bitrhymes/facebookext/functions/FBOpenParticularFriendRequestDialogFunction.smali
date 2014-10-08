.class public Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendRequestDialogFunction;
.super Ljava/lang/Object;
.source "FBOpenParticularFriendRequestDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


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
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 20
    const-string v11, "FBOpenParticularFriendRequestDialogFunction : "

    invoke-static {v11}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 22
    :try_start_0
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Entered inside the try block"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 v11, 0x0

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "appAccessToken":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "appId":Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 27
    .local v6, "message":Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 28
    .local v8, "notificationText":Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "friendId":Ljava/lang/String;
    const/4 v11, 0x5

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "titleStr":Ljava/lang/String;
    const/4 v11, 0x6

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "dataStr":Ljava/lang/String;
    const/4 v11, 0x7

    aget-object v11, p2, v11

    invoke-virtual {v11}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "expiresTime":Ljava/lang/String;
    invoke-static {v0, v3, v1}, Lcom/bitrhymes/facebookext/FacebookExtContext;->updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v9, "params":Landroid/os/Bundle;
    const-string v11, "to"

    invoke-virtual {v9, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v11, "title"

    invoke-virtual {v9, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v11, "message"

    invoke-virtual {v9, v11, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v11, "notification_text"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v11, "data"

    invoke-virtual {v9, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v11, "frictionless"

    const-string v12, "1"

    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Will call facebook.dialog in the bingo native extension"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v7, "apprequests"

    .line 46
    .local v7, "method":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/bitrhymes/facebookext/DialogActivity;

    invoke-direct {v5, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v5, "i":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".parameters"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ".callback"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "appAccessToken":Ljava/lang/String;
    .end local v1    # "appId":Ljava/lang/String;
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "expiresTime":Ljava/lang/String;
    .end local v4    # "friendId":Ljava/lang/String;
    .end local v5    # "i":Landroid/content/Intent;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "method":Ljava/lang/String;
    .end local v8    # "notificationText":Ljava/lang/String;
    .end local v9    # "params":Landroid/os/Bundle;
    .end local v10    # "titleStr":Ljava/lang/String;
    :goto_0
    const/4 v11, 0x0

    return-object v11

    .line 52
    :catch_0
    move-exception v11

    goto :goto_0
.end method
