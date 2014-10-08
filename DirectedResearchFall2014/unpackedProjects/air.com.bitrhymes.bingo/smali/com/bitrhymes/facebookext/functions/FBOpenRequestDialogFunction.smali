.class public Lcom/bitrhymes/facebookext/functions/FBOpenRequestDialogFunction;
.super Ljava/lang/Object;
.source "FBOpenRequestDialogFunction.java"

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

.method private checkFriendsList(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "suggestionIds"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-string v5, ","

    .line 68
    const/4 v1, 0x0

    .line 69
    .local v1, "finalListLength":I
    const/16 v2, 0x32

    .line 70
    .local v2, "limit":I
    const-string v4, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "suggestedFriends":[Ljava/lang/String;
    const-string v4, ","

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "finalList":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "length : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 75
    :goto_0
    const/16 v4, 0x5dc

    if-le v1, v4, :cond_0

    const/16 v4, 0x14

    if-ge v2, v4, :cond_1

    .line 80
    :cond_0
    return-object v0

    .line 76
    :cond_1
    invoke-direct {p0, v3, v2}, Lcom/bitrhymes/facebookext/functions/FBOpenRequestDialogFunction;->makeFinal([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 78
    add-int/lit8 v2, v2, -0xa

    goto :goto_0
.end method

.method private makeFinal([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "suggestedFriends"    # [Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "limit : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 85
    const/4 v2, 0x0

    invoke-static {p1, v2, p2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 86
    .local v0, "arr2":[Ljava/lang/String;
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "finalList":Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 19
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 21
    const-string v16, "FBOpenRequestDialogFunction : "

    invoke-static/range {v16 .. v16}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 23
    :try_start_0
    sput-object p1, Lcom/bitrhymes/facebookext/FacebookExt;->context:Lcom/adobe/fre/FREContext;

    .line 24
    const/16 v16, 0x0

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "appAccessToken":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "appId":Ljava/lang/String;
    const/16 v16, 0x2

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 27
    .local v10, "message":Ljava/lang/String;
    const/16 v16, 0x3

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v12

    .line 28
    .local v12, "notificationText":Ljava/lang/String;
    const/16 v16, 0x4

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v14

    .line 29
    .local v14, "suggestionIds":Ljava/lang/String;
    const/16 v16, 0x5

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 30
    .local v6, "excludeIds":Ljava/lang/String;
    const/16 v16, 0x6

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v15

    .line 31
    .local v15, "title":Ljava/lang/String;
    const/16 v16, 0x7

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "data":Ljava/lang/String;
    const/16 v16, 0x8

    aget-object v16, p2, v16

    invoke-virtual/range {v16 .. v16}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 35
    .local v7, "expiresTime":Ljava/lang/String;
    invoke-static {v3, v7, v4}, Lcom/bitrhymes/facebookext/FacebookExtContext;->updateFBSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/bitrhymes/facebookext/functions/FBOpenRequestDialogFunction;->checkFriendsList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 38
    .local v8, "finalList":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "suggestedFriends : "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bitrhymes/facebookext/FacebookExt;->log(Ljava/lang/String;)V

    .line 40
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v13, "params":Landroid/os/Bundle;
    const-string v16, "title"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v16, "message"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v16, "notification_text"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v16, "suggestions"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v16, "data"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v16, "exclude_ids"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "["

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v16, "frictionless"

    const-string v17, "1"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v11, "apprequests"

    .line 53
    .local v11, "method":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const-class v17, Lcom/bitrhymes/facebookext/DialogActivity;

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v9, "i":Landroid/content/Intent;
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".method"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".parameters"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    new-instance v16, Ljava/lang/StringBuilder;

    sget-object v17, Lcom/bitrhymes/facebookext/DialogActivity;->extraPrefix:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, ".callback"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v3    # "appAccessToken":Ljava/lang/String;
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "excludeIds":Ljava/lang/String;
    .end local v7    # "expiresTime":Ljava/lang/String;
    .end local v8    # "finalList":Ljava/lang/String;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v10    # "message":Ljava/lang/String;
    .end local v11    # "method":Ljava/lang/String;
    .end local v12    # "notificationText":Ljava/lang/String;
    .end local v13    # "params":Landroid/os/Bundle;
    .end local v14    # "suggestionIds":Ljava/lang/String;
    .end local v15    # "title":Ljava/lang/String;
    :goto_0
    const/16 v16, 0x0

    return-object v16

    .line 59
    :catch_0
    move-exception v16

    goto :goto_0
.end method
