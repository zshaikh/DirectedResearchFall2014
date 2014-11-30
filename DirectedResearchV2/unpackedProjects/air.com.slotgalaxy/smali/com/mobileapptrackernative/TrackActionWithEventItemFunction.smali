.class public Lcom/mobileapptrackernative/TrackActionWithEventItemFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final NAME:Ljava/lang/String; = "trackActionWithEventItem"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 28

    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_2

    :try_start_0
    const-string v5, ""

    const-wide/16 v17, 0x0

    const-string v19, ""

    const-string v20, ""

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v6, 0x0

    aget-object v6, p2, v6

    if-eqz v6, :cond_8

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    :goto_0
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-object p0, p2, v5

    check-cast p0, Lcom/adobe/fre/FREArray;

    const/4 v5, 0x0

    move/from16 v25, v5

    :goto_1
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/adobe/fre/FREArray;->getLength()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v25, 0x1

    int-to-long v7, v5

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v8

    add-int/lit8 v5, v25, 0x2

    int-to-long v10, v5

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v7

    add-int/lit8 v5, v25, 0x3

    int-to-long v10, v5

    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v10

    add-int/lit8 v5, v25, 0x4

    int-to-long v12, v5

    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v5, v25, 0x5

    int-to-long v13, v5

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v5, v25, 0x6

    int-to-long v14, v5

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v5, v25, 0x7

    int-to-long v15, v5

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v5, v25, 0x8

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREArray;->getObjectAt(J)Lcom/adobe/fre/FREObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v16

    new-instance v5, Lcom/mobileapptracker/MATEventItem;

    invoke-direct/range {v5 .. v16}, Lcom/mobileapptracker/MATEventItem;-><init>(Ljava/lang/String;IDDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v25, 0x9

    move/from16 v25, v5

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x2

    aget-object v5, p2, v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v5

    :goto_2
    const/4 v7, 0x3

    aget-object v7, p2, v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    aget-object v7, p2, v7

    invoke-virtual {v7}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const/4 v8, 0x4

    aget-object v8, p2, v8

    if-eqz v8, :cond_5

    const/4 v8, 0x4

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    const/4 v9, 0x7

    aget-object v9, p2, v9

    if-eqz v9, :cond_4

    const/4 v9, 0x7

    aget-object v9, p2, v9

    invoke-virtual {v9}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v9

    :goto_5
    const/16 v10, 0x8

    aget-object v10, p2, v10

    if-eqz v10, :cond_3

    const/16 v10, 0x8

    aget-object v10, p2, v10

    invoke-virtual {v10}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v10

    :goto_6
    const-string v11, "MobileAppTrackerANE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Call trackActionWithEventItem on event: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Lcom/mobileapptrackernative/MATExtensionContext;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    move-object v11, v0

    invoke-virtual {v11, v8}, Lcom/mobileapptracker/MobileAppTracker;->setRefId(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    move-object v8, v0

    invoke-virtual {v8, v5, v6}, Lcom/mobileapptracker/MobileAppTracker;->setRevenue(D)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lcom/mobileapptracker/MobileAppTracker;->setCurrencyCode(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mobileapptrackernative/MATExtensionContext;->mat:Lcom/mobileapptracker/MobileAppTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobileapptracker/MobileAppTracker;->trackAction(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_7
    return-object v5

    :catch_0
    move-exception v5

    const-string v6, "MobileAppTrackerANE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v5, 0x0

    goto :goto_7

    :cond_3
    move-object/from16 v10, v23

    goto :goto_6

    :cond_4
    move-object/from16 v9, v22

    goto/16 :goto_5

    :cond_5
    move-object/from16 v8, v20

    goto/16 :goto_4

    :cond_6
    move-object/from16 v7, v19

    goto/16 :goto_3

    :cond_7
    move-wide/from16 v5, v17

    goto/16 :goto_2

    :cond_8
    move-object/from16 v24, v5

    goto/16 :goto_0
.end method
