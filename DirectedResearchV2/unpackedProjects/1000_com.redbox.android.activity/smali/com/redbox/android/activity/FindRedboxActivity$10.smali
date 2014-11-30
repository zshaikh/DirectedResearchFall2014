.class Lcom/redbox/android/activity/FindRedboxActivity$10;
.super Ljava/lang/Object;
.source "FindRedboxActivity.java"

# interfaces
.implements Lcom/redbox/android/http/ServerCommunicationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/activity/FindRedboxActivity;->loadNearbyKiosks(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aborted:Z

.field final synthetic this$0:Lcom/redbox/android/activity/FindRedboxActivity;


# direct methods
.method constructor <init>(Lcom/redbox/android/activity/FindRedboxActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->aborted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/activity/FindRedboxActivity$10;)Lcom/redbox/android/activity/FindRedboxActivity;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    return-object v0
.end method


# virtual methods
.method public connectionAborted()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->aborted:Z

    .line 525
    return-void
.end method

.method public connectionError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 529
    const-string v0, "connection error in get kiosks call."

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-boolean v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->aborted:Z

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    invoke-virtual {v0, p1}, Lcom/redbox/android/activity/FindRedboxActivity;->showConnectionError(I)V

    goto :goto_0
.end method

.method public dataReceived([B)V
    .locals 22
    .param p1, "data"    # [B

    .prologue
    .line 540
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v19, "UTF-8"

    move-object v0, v4

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 542
    .local v4, "detail":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Get kiosks call returned <String>: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 542
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 545
    .local v10, "json":Lorg/json/JSONObject;
    const-string v19, "d"

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 547
    .local v15, "output":Lorg/json/JSONObject;
    const-string v19, "profiles"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 549
    .local v11, "jsonKiosks":Lorg/json/JSONArray;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "# of Kiosks = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    invoke-static {}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getInstance()Lcom/redbox/android/adapter/FavKioskDBAdapter;

    move-result-object v20

    .line 554
    invoke-virtual/range {v20 .. v20}, Lcom/redbox/android/adapter/FavKioskDBAdapter;->getAllFavKiosks()Ljava/util/List;

    move-result-object v20

    .line 553
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/redbox/android/activity/FindRedboxActivity$10$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity$10$1;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$10;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 568
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/redbox/android/activity/FindRedboxActivity;->noOfFavs:I

    .line 569
    const/16 v17, 0x0

    .line 570
    .local v17, "tenDist":Z
    const/16 v18, -0x1

    .line 572
    .local v18, "tenPos":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v7

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->movie:Lcom/redbox/android/model/MovieDetail;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 591
    const-string v19, "states"

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 592
    .local v8, "inv":Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 593
    .local v6, "favs":I
    const/4 v7, 0x0

    :goto_1
    if-lt v7, v6, :cond_4

    .line 623
    .end local v6    # "favs":I
    .end local v8    # "inv":Lorg/json/JSONArray;
    :cond_1
    move/from16 v16, v18

    .line 627
    .local v16, "posTen":I
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Nearby Kiosk = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    move-object/from16 v20, v0

    .line 629
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    .line 628
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 627
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/redbox/android/activity/FindRedboxActivity$10$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/redbox/android/activity/FindRedboxActivity$10$2;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$10;Lorg/json/JSONArray;I)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 697
    .end local v4    # "detail":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "jsonKiosks":Lorg/json/JSONArray;
    .end local v15    # "output":Lorg/json/JSONObject;
    .end local v16    # "posTen":I
    .end local v17    # "tenDist":Z
    .end local v18    # "tenPos":I
    :goto_2
    return-void

    .line 573
    .restart local v4    # "detail":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "json":Lorg/json/JSONObject;
    .restart local v11    # "jsonKiosks":Lorg/json/JSONArray;
    .restart local v15    # "output":Lorg/json/JSONObject;
    .restart local v17    # "tenDist":Z
    .restart local v18    # "tenPos":I
    :cond_2
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 574
    .local v12, "kiosk":Lorg/json/JSONObject;
    new-instance v14, Lcom/redbox/android/model/Kiosk;

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/redbox/android/model/Kiosk;-><init>(Ljava/lang/String;)V

    .line 575
    .local v14, "nearby":Lcom/redbox/android/model/Kiosk;
    if-nez v17, :cond_3

    .line 576
    invoke-virtual {v14}, Lcom/redbox/android/model/Kiosk;->getDist()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    const/high16 v20, 0x40a00000

    cmpl-float v19, v19, v20

    if-lez v19, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 578
    const/16 v17, 0x1

    .line 581
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Found Kiosk : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 582
    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/redbox/android/model/Kiosk;->getZip()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 583
    invoke-virtual {v14}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 581
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 580
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/redbox/android/model/Kiosk;->getId()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 585
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 584
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->k:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->nearbyKiosks:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    const-string v19, "Added Kiosk"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 595
    .end local v12    # "kiosk":Lorg/json/JSONObject;
    .end local v14    # "nearby":Lcom/redbox/android/model/Kiosk;
    .restart local v6    # "favs":I
    .restart local v8    # "inv":Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 596
    const-string v20, "Inv"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 603
    .local v13, "moviesInv":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 593
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 604
    :cond_5
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 605
    const-string v20, "ID"

    .line 604
    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->movieId:I

    move/from16 v20, v0

    .line 604
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 606
    invoke-virtual {v13, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 607
    const-string v20, "Qty"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    if-lez v19, :cond_6

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->inventory:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 609
    const-string v21, "KioskID"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 608
    invoke-virtual/range {v19 .. v21}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Kiosk : "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 616
    const-string v21, "KioskID"

    .line 615
    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 613
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 617
    const-string v20, " has movie"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 612
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 610
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 603
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 673
    .end local v4    # "detail":Ljava/lang/String;
    .end local v6    # "favs":I
    .end local v7    # "i":I
    .end local v8    # "inv":Lorg/json/JSONArray;
    .end local v9    # "j":I
    .end local v10    # "json":Lorg/json/JSONObject;
    .end local v11    # "jsonKiosks":Lorg/json/JSONArray;
    .end local v13    # "moviesInv":Lorg/json/JSONArray;
    .end local v15    # "output":Lorg/json/JSONObject;
    .end local v17    # "tenDist":Z
    .end local v18    # "tenPos":I
    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .line 674
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    const-string v19, "Error encoding"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/redbox/android/activity/FindRedboxActivity$10$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity$10$3;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$10;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 685
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v19

    move-object/from16 v5, v19

    .line 686
    .local v5, "e":Lorg/json/JSONException;
    const-string v19, "Error parsing JSON"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity$10;->this$0:Lcom/redbox/android/activity/FindRedboxActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/redbox/android/activity/FindRedboxActivity;->handler:Landroid/os/Handler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/redbox/android/activity/FindRedboxActivity$10$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/redbox/android/activity/FindRedboxActivity$10$4;-><init>(Lcom/redbox/android/activity/FindRedboxActivity$10;)V

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public status(II)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "percent"    # I

    .prologue
    .line 701
    return-void
.end method
