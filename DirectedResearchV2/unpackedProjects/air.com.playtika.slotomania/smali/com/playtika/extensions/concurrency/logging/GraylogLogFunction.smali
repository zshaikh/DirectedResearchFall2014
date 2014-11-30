.class public Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;
.super Ljava/lang/Object;
.source "GraylogLogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static synthetic $SWITCH_TABLE$com$playtika$extensions$concurrency$logging$GraylogLogger$Property:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$playtika$extensions$concurrency$logging$GraylogLogger$Property()[I
    .locals 3

    .prologue
    .line 11
    sget-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;->$SWITCH_TABLE$com$playtika$extensions$concurrency$logging$GraylogLogger$Property:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->values()[Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ACTION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->CODE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->DEVICE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FACILITY:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FILE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->FULL_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LEVEL:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->LINE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_TYPE:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->OS_VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SHORT_MSG:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->SN_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->UDID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->USER_ID:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->VERSION:Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    invoke-virtual {v1}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;->$SWITCH_TABLE$com$playtika$extensions$concurrency$logging$GraylogLogger$Property:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 23
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    const/16 v18, 0x0

    .line 16
    .local v18, "properties":Lcom/adobe/fre/FREArray;
    const/4 v13, 0x0

    .line 18
    .local v13, "dictionary":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    :try_start_0
    aget-object v19, p2, v3

    move-object/from16 v0, v19

    check-cast v0, Lcom/adobe/fre/FREArray;

    move-object/from16 v18, v0

    .line 19
    const/4 v3, 0x1

    aget-object v13, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const/4 v5, 0x0

    .line 25
    .local v5, "shortMsg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 26
    .local v6, "fullMsg":Ljava/lang/String;
    sget-object v7, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->DEBUG:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .line 27
    .local v7, "level":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    const/4 v8, 0x0

    .line 28
    .local v8, "file":Ljava/lang/String;
    const/4 v10, 0x0

    .line 29
    .local v10, "action":Ljava/lang/String;
    const-string v4, "vs-android"

    .line 30
    .local v4, "facility":Ljava/lang/String;
    const/4 v9, -0x1

    .line 32
    .local v9, "line":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v11, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-wide/16 v15, 0x0

    .local v15, "i":J
    :goto_1
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/adobe/fre/FREArray;->getLength()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v21

    cmp-long v3, v15, v21

    if-ltz v3, :cond_0

    .line 76
    :goto_2
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->getInstance()Lcom/playtika/extensions/concurrency/logging/GraylogLogger;

    move-result-object v3

    const/4 v12, 0x1

    invoke-virtual/range {v3 .. v12}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger;->logFull(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Z)V

    .line 78
    const/4 v3, 0x0

    return-object v3

    .line 20
    .end local v4    # "facility":Ljava/lang/String;
    .end local v5    # "shortMsg":Ljava/lang/String;
    .end local v6    # "fullMsg":Ljava/lang/String;
    .end local v7    # "level":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .end local v8    # "file":Ljava/lang/String;
    .end local v9    # "line":I
    .end local v10    # "action":Ljava/lang/String;
    .end local v11    # "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "i":J
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 21
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v4    # "facility":Ljava/lang/String;
    .restart local v5    # "shortMsg":Ljava/lang/String;
    .restart local v6    # "fullMsg":Ljava/lang/String;
    .restart local v7    # "level":Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .restart local v8    # "file":Ljava/lang/String;
    .restart local v9    # "line":I
    .restart local v10    # "action":Ljava/lang/String;
    .restart local v11    # "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "i":J
    :cond_0
    :try_start_2
    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 36
    .local v19, "property":Ljava/lang/String;
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v20

    .line 37
    .local v20, "value":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->valueBy(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;

    move-result-object v17

    .line 38
    .local v17, "neededProperty":Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    if-eqz v17, :cond_1

    .line 39
    invoke-static {}, Lcom/playtika/extensions/concurrency/logging/GraylogLogFunction;->$SWITCH_TABLE$com$playtika$extensions$concurrency$logging$GraylogLogger$Property()[I

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;->ordinal()I

    move-result v12

    aget v3, v3, v12

    packed-switch v3, :pswitch_data_0

    .line 65
    :goto_3
    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :goto_4
    const-wide/16 v21, 0x1

    add-long v15, v15, v21

    goto :goto_1

    .line 41
    :pswitch_0
    move-object/from16 v5, v20

    .line 42
    goto :goto_4

    .line 44
    :pswitch_1
    move-object/from16 v6, v20

    .line 45
    goto :goto_4

    .line 47
    :pswitch_2
    invoke-static/range {v20 .. v20}, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;->valueBy(Ljava/lang/String;)Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 48
    goto :goto_4

    .line 50
    :pswitch_3
    move-object/from16 v8, v20

    .line 51
    goto :goto_4

    .line 53
    :pswitch_4
    move-object/from16 v4, v20

    .line 54
    goto :goto_4

    .line 57
    :pswitch_5
    :try_start_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    goto :goto_4

    .line 58
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 59
    .local v14, "e":Ljava/lang/Throwable;
    const/4 v9, -0x1

    .line 61
    goto :goto_4

    .line 63
    .end local v14    # "e":Ljava/lang/Throwable;
    :pswitch_6
    move-object/from16 v10, v20

    goto :goto_3

    .line 69
    :cond_1
    :try_start_4
    move-object v0, v11

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 72
    .end local v17    # "neededProperty":Lcom/playtika/extensions/concurrency/logging/GraylogLogger$Property;
    .end local v19    # "property":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :catch_2
    move-exception v3

    move-object v14, v3

    .line 73
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
