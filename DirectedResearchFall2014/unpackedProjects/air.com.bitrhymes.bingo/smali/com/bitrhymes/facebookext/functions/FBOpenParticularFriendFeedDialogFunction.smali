.class public Lcom/bitrhymes/facebookext/functions/FBOpenParticularFriendFeedDialogFunction;
.super Ljava/lang/Object;
.source "FBOpenParticularFriendFeedDialogFunction.java"

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
    .locals 20
    .parameter "context"
    .parameter "args"

    .prologue
    .line 22
    :try_start_0
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 23
    const/16 v18, 0x0

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 24
    .local v6, appAccessToken:Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 25
    .local v7, appId:Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 26
    .local v5, actionName:Ljava/lang/String;
    const/16 v18, 0x3

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, actionLink:Ljava/lang/String;
    const/16 v18, 0x4

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 28
    .local v8, appName:Ljava/lang/String;
    const/16 v18, 0x5

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 29
    .local v9, caption:Ljava/lang/String;
    const/16 v18, 0x6

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, description:Ljava/lang/String;
    const/16 v18, 0x7

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 31
    .local v12, fbLink:Ljava/lang/String;
    const/16 v18, 0x8

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v17

    .line 32
    .local v17, picUrl:Ljava/lang/String;
    const/16 v18, 0x9

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v13

    .line 35
    .local v13, friendId:Ljava/lang/String;
    const/16 v18, 0xa

    aget-object v18, p2, v18

    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v11

    .line 37
    .local v11, expiresTime:Ljava/lang/String;
    invoke-static {v6, v11, v7}, Lcom/bitrhymes/facebookext/FacebookExtContext;->updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v4, actionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "name"

    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v18, "link"

    move-object v0, v4

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v16, params:Landroid/os/Bundle;
    const-string v18, "to"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v18, "name"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v18, "caption"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v18, "description"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v18, "link"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v18, "picture"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v18, "actions"

    new-instance v19, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v18, "frictionless"

    const-string v19, "1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v15, "feed"

    .line 55
    .local v15, method:Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    const-class v19, Lcom/bitrhymes/facebookext/DialogActivity;

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v14, i:Landroid/content/Intent;
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".method"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".parameters"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".callback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v3           #actionLink:Ljava/lang/String;
    .end local v4           #actionMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #actionName:Ljava/lang/String;
    .end local v6           #appAccessToken:Ljava/lang/String;
    .end local v7           #appId:Ljava/lang/String;
    .end local v8           #appName:Ljava/lang/String;
    .end local v9           #caption:Ljava/lang/String;
    .end local v10           #description:Ljava/lang/String;
    .end local v11           #expiresTime:Ljava/lang/String;
    .end local v12           #fbLink:Ljava/lang/String;
    .end local v13           #friendId:Ljava/lang/String;
    .end local v14           #i:Landroid/content/Intent;
    .end local v15           #method:Ljava/lang/String;
    .end local v16           #params:Landroid/os/Bundle;
    .end local v17           #picUrl:Ljava/lang/String;
    :goto_0
    const/16 v18, 0x0

    return-object v18

    .line 61
    :catch_0
    move-exception v18

    goto :goto_0
.end method
