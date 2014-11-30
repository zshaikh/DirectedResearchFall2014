.class public Lcom/gamesys/android/tools/ane/notification/NotificationFunction;
.super Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;
.source "NotificationFunction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/gamesys/android/tools/ane/notification/AbstractNotificationFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public callIntern(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 23
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 38
    const-string v3, ""

    .local v3, "appIdentifer":Ljava/lang/String;
    const-string v5, "n/a"

    .local v5, "message":Ljava/lang/String;
    const-string v6, ""

    .local v6, "title":Ljava/lang/String;
    const-string v7, ""

    .local v7, "ticker":Ljava/lang/String;
    const-string v8, ""

    .local v8, "bgUrl":Ljava/lang/String;
    const-string v9, ""

    .local v9, "bigIconUrl":Ljava/lang/String;
    const-string v10, ""

    .local v10, "smallIconUrl":Ljava/lang/String;
    const-string v4, ""

    .line 39
    .local v4, "appVersion":Ljava/lang/String;
    const/4 v11, 0x0

    .line 40
    .local v11, "delays":[D
    const/16 v19, 0x0

    .line 42
    .local v19, "result":Z
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    const/16 v21, 0x9

    move/from16 v0, v21

    if-lt v2, v0, :cond_0

    .line 44
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 45
    :goto_0
    const/4 v2, 0x1

    aget-object v2, p2, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 46
    :goto_1
    const/4 v2, 0x2

    aget-object v2, p2, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 47
    :goto_2
    const/4 v2, 0x3

    aget-object v2, p2, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 48
    :goto_3
    const/4 v2, 0x4

    aget-object v2, p2, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 49
    :goto_4
    const/4 v2, 0x5

    aget-object v2, p2, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 50
    :goto_5
    const/4 v2, 0x6

    aget-object v2, p2, v2

    if-eqz v2, :cond_7

    const/4 v2, 0x6

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    .line 51
    :goto_6
    const/4 v2, 0x7

    aget-object v2, p2, v2

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 54
    :goto_7
    const/16 v2, 0x8

    aget-object v12, p2, v2

    check-cast v12, Lcom/adobe/fre/FREArray;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_5

    .line 55
    .local v12, "a":Lcom/adobe/fre/FREArray;
    const/4 v13, 0x0

    .line 57
    .local v13, "aSize":I
    :try_start_1
    invoke-virtual {v12}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v13, v0

    .line 58
    new-array v11, v13, [D
    :try_end_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_3

    .line 66
    :goto_8
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    move/from16 v0, v16

    if-lt v0, v13, :cond_9

    .line 71
    const/16 v19, 0x1

    .end local v12    # "a":Lcom/adobe/fre/FREArray;
    .end local v13    # "aSize":I
    .end local v16    # "i":I
    :cond_0
    :goto_a
    move-object/from16 v20, p1

    .line 83
    check-cast v20, Lcom/gamesys/android/tools/ane/ToolsContext;

    .line 84
    .local v20, "tCtxt":Lcom/gamesys/android/tools/ane/ToolsContext;
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/gamesys/android/tools/ane/ToolsContext;->setAppVersion(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {v20 .. v20}, Lcom/gamesys/android/tools/ane/ToolsContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static/range {v2 .. v11}, Lcom/gamesys/android/tools/ane/notification/alarm/AlertManager;->saveNotifInfoForAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[D)V

    .line 89
    const/16 v18, 0x0

    .line 91
    .local v18, "res":Lcom/adobe/fre/FREObject;
    :try_start_2
    invoke-static/range {v19 .. v19}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v18

    .line 96
    :goto_b
    return-object v18

    .line 44
    .end local v18    # "res":Lcom/adobe/fre/FREObject;
    .end local v20    # "tCtxt":Lcom/gamesys/android/tools/ane/ToolsContext;
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 45
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 46
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 47
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 48
    :cond_5
    const/4 v8, 0x0

    goto :goto_4

    .line 49
    :cond_6
    const/4 v9, 0x0

    goto :goto_5

    .line 50
    :cond_7
    const/4 v10, 0x0

    goto :goto_6

    .line 51
    :cond_8
    const/4 v4, 0x0

    goto :goto_7

    .line 59
    .restart local v12    # "a":Lcom/adobe/fre/FREArray;
    .restart local v13    # "aSize":I
    :catch_0
    move-exception v15

    .line 60
    .local v15, "e1":Lcom/adobe/fre/FREInvalidObjectException;
    const/16 v19, 0x0

    goto :goto_8

    .line 61
    .end local v15    # "e1":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_1
    move-exception v15

    .line 62
    .local v15, "e1":Lcom/adobe/fre/FREWrongThreadException;
    const/16 v19, 0x0

    goto :goto_8

    .line 67
    .end local v15    # "e1":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v16    # "i":I
    :cond_9
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v21, v0

    :try_start_3
    move-wide/from16 v0, v21

    invoke-virtual {v12, v0, v1}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v17

    .line 68
    .local v17, "o":Lcom/adobe/fre/FREObject;
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v21

    :goto_c
    aput-wide v21, v11, v16
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_3 .. :try_end_3} :catch_5

    .line 66
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 68
    :cond_a
    const-wide/16 v21, 0x0

    goto :goto_c

    .line 72
    .end local v12    # "a":Lcom/adobe/fre/FREArray;
    .end local v13    # "aSize":I
    .end local v16    # "i":I
    .end local v17    # "o":Lcom/adobe/fre/FREObject;
    :catch_2
    move-exception v14

    .line 73
    .local v14, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;->TAG:Ljava/lang/String;

    const-string v21, "Unable to retrieve action script parameter"

    move-object/from16 v0, v21

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 74
    .end local v14    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v14

    .line 75
    .local v14, "e":Lcom/adobe/fre/FRETypeMismatchException;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;->TAG:Ljava/lang/String;

    const-string v21, "Unable to retrieve action script parameter"

    move-object/from16 v0, v21

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 76
    .end local v14    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_4
    move-exception v14

    .line 77
    .local v14, "e":Lcom/adobe/fre/FREInvalidObjectException;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;->TAG:Ljava/lang/String;

    const-string v21, "Unable to retrieve action script parameter"

    move-object/from16 v0, v21

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 78
    .end local v14    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_5
    move-exception v14

    .line 79
    .local v14, "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;->TAG:Ljava/lang/String;

    const-string v21, "Unable to retrieve action script parameter"

    move-object/from16 v0, v21

    invoke-static {v2, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 92
    .end local v14    # "e":Lcom/adobe/fre/FREWrongThreadException;
    .restart local v18    # "res":Lcom/adobe/fre/FREObject;
    .restart local v20    # "tCtxt":Lcom/gamesys/android/tools/ane/ToolsContext;
    :catch_6
    move-exception v14

    .line 93
    .restart local v14    # "e":Lcom/adobe/fre/FREWrongThreadException;
    sget-object v2, Lcom/gamesys/android/tools/ane/notification/NotificationFunction;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Unable to convert the boolean "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " into a FREObject."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method
