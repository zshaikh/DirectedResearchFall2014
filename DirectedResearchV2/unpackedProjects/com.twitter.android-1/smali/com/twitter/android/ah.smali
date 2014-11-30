.class public final Lcom/twitter/android/ah;
.super Lcom/twitter/android/provider/an;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/provider/an;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/ah;->d:Landroid/database/Cursor;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    :goto_0
    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v4, v7, v2

    if-eqz v4, :cond_3

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/twitter/android/api/x;

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/api/x;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/ArrayList;)V

    move-object/from16 v27, v1

    move-wide/from16 v28, v7

    :goto_1
    new-instance v1, Lcom/twitter/android/api/c;

    const/4 v2, 0x4

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x5

    move-object/from16 v0, v30

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    move-object/from16 v0, v30

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v1 .. v26}, Lcom/twitter/android/api/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/b;JILcom/twitter/android/api/PromotedContent;)V

    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/twitter/android/api/x;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    :goto_2
    return-void

    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    goto :goto_2

    :cond_3
    move-object/from16 v27, v1

    move-wide/from16 v28, v2

    goto :goto_1

    :cond_4
    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    goto/16 :goto_0
.end method

.method public final getLong(I)J
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/ah;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/x;

    iget-wide v0, v0, Lcom/twitter/android/api/x;->g:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/provider/an;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/ah;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/x;

    iget-object v0, v0, Lcom/twitter/android/api/x;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ah;->b:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/ah;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/x;

    iget-object v0, v0, Lcom/twitter/android/api/x;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/provider/an;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
