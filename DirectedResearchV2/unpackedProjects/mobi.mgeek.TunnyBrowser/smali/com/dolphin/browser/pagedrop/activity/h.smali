.class Lcom/dolphin/browser/pagedrop/activity/h;
.super Lcom/dolphin/browser/util/f;
.source "PageDropChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V
    .locals 1

    .prologue
    .line 473
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 474
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->a:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/h;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    .prologue
    .line 525
    const/4 v2, 0x0

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 526
    new-instance v8, Lcom/dolphin/browser/pagedrop/activity/g;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    const/4 v4, 0x0

    invoke-direct {v8, v3, v4}, Lcom/dolphin/browser/pagedrop/activity/g;-><init>(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;Lcom/dolphin/browser/pagedrop/activity/a;)V

    .line 528
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d()[Ljava/lang/Integer;

    move-result-object v11

    monitor-enter v11

    .line 529
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/pagedrop/e;->a(Landroid/content/Context;)V

    .line 531
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v3

    const-string v4, "tabmessage_table"

    const/4 v5, 0x0

    const/16 v6, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v3

    .line 532
    if-nez v3, :cond_0

    .line 533
    monitor-exit v11

    move-object v2, v8

    .line 629
    :goto_0
    return-object v2

    .line 535
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 536
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 537
    const/4 v2, 0x0

    iput v2, v8, Lcom/dolphin/browser/pagedrop/activity/g;->b:I

    .line 538
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Z)V

    .line 540
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 541
    monitor-exit v11

    move-object v2, v8

    goto :goto_0

    .line 544
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 545
    if-nez v4, :cond_3

    .line 546
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 547
    const/4 v2, 0x0

    monitor-exit v11

    goto :goto_0

    .line 619
    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 550
    :cond_3
    :try_start_1
    iput v4, v8, Lcom/dolphin/browser/pagedrop/activity/g;->a:I

    .line 551
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 552
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v3

    const-string v4, "tabmessage_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Lcom/dolphin/browser/pagedrop/b/a;->a(Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v12

    .line 553
    if-nez v12, :cond_4

    .line 554
    const/4 v2, 0x0

    monitor-exit v11

    goto :goto_0

    .line 556
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_5

    .line 557
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 558
    const/4 v2, 0x0

    monitor-exit v11

    goto :goto_0

    .line 560
    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v8, Lcom/dolphin/browser/pagedrop/activity/g;->b:I

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(I)V

    .line 562
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 564
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 566
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->c()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 567
    const-string v2, "userID"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 568
    const-string v3, "title"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 569
    const-string v4, "url"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 570
    const-string v7, "imageName"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 571
    const-string v9, "time"

    invoke-interface {v12, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 572
    const-string v14, "time"

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 573
    if-ltz v2, :cond_6

    if-ltz v3, :cond_6

    if-ltz v4, :cond_6

    if-ltz v7, :cond_6

    if-gez v9, :cond_7

    .line 566
    :cond_6
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 576
    :cond_7
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 577
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 578
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 579
    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 580
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 581
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 582
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/dolphin/browser/pagedrop/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 583
    const-string v2, ""

    .line 585
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    const-string v3, "pagedrop_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 590
    const-string v3, "user_name"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 596
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v7, ""

    invoke-static/range {v2 .. v7}, Lcom/dolphin/browser/pagedrop/e/c;->a(Landroid/content/Context;JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dolphin/browser/pagedrop/activity/h;->a:Ljava/lang/String;

    .line 598
    new-instance v2, Lcom/dolphin/browser/pagedrop/a/c;

    invoke-direct {v2}, Lcom/dolphin/browser/pagedrop/a/c;-><init>()V

    .line 599
    iput-object v15, v2, Lcom/dolphin/browser/pagedrop/a/c;->a:Ljava/lang/String;

    .line 600
    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/dolphin/browser/pagedrop/a/c;->g:Ljava/lang/String;

    .line 601
    iput-object v9, v2, Lcom/dolphin/browser/pagedrop/a/c;->b:Ljava/lang/String;

    .line 602
    iput-object v14, v2, Lcom/dolphin/browser/pagedrop/a/c;->c:Ljava/lang/String;

    .line 603
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/dolphin/browser/pagedrop/a/c;->d:Ljava/lang/String;

    .line 604
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/dolphin/browser/pagedrop/a/c;->e:Ljava/lang/String;

    .line 605
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/dolphin/browser/pagedrop/a/c;->f:Ljava/lang/String;

    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/pagedrop/activity/h;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/dolphin/browser/pagedrop/a/c;->h:Ljava/lang/String;

    .line 607
    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/dolphin/browser/pagedrop/a/c;->i:J

    .line 609
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 615
    :cond_8
    invoke-static {v13}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 617
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 619
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/dolphin/browser/pagedrop/activity/g;->c:Z

    .line 622
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 623
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->a(Z)V

    .line 624
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dolphin/browser/pagedrop/a/c;

    iget-object v2, v2, Lcom/dolphin/browser/pagedrop/a/c;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v3}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 626
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/dolphin/browser/pagedrop/activity/g;->c:Z

    :cond_9
    move-object v2, v8

    .line 629
    goto/16 :goto_0

    .line 593
    :cond_a
    :try_start_2
    invoke-static {}, Lcom/dolphin/browser/pagedrop/b/a;->a()Lcom/dolphin/browser/pagedrop/b/a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/dolphin/browser/pagedrop/b/a;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 480
    :cond_0
    check-cast p1, Lcom/dolphin/browser/pagedrop/activity/g;

    .line 481
    if-nez p1, :cond_1

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->d()[Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 487
    :try_start_0
    iget v0, p1, Lcom/dolphin/browser/pagedrop/activity/g;->b:I

    if-nez v0, :cond_4

    .line 488
    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 490
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 515
    :cond_2
    :goto_1
    iget-boolean v0, p1, Lcom/dolphin/browser/pagedrop/activity/g;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 516
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelected(Z)V

    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->g(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)V

    .line 520
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 494
    :cond_4
    :try_start_1
    iget v0, p1, Lcom/dolphin/browser/pagedrop/activity/g;->b:I

    iget v2, p1, Lcom/dolphin/browser/pagedrop/activity/g;->a:I

    if-lt v0, v2, :cond_5

    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 496
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/a/a;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/a/a;->a(Ljava/util/ArrayList;)V

    .line 500
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/a/a;->notifyDataSetChanged()V

    goto :goto_1

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->h(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->l(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->m(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->n(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->j(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->i(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/a/a;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/pagedrop/a/a;->a(Ljava/util/ArrayList;)V

    .line 512
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/h;->b:Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;->k(Lcom/dolphin/browser/pagedrop/activity/PageDropChatActivity;)Lcom/dolphin/browser/pagedrop/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/a/a;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method
