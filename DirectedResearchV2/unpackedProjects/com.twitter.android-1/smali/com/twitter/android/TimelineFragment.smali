.class public Lcom/twitter/android/TimelineFragment;
.super Lcom/twitter/android/TweetListFragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TweetListFragment;-><init>()V

    return-void
.end method

.method private a(IJ)V
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v7, 0x28

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/twitter/android/TimelineFragment;->e:I

    packed-switch v3, :pswitch_data_1

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v3

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Lcom/twitter/android/client/e;->a(JJI)Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_2

    :goto_2
    :pswitch_2
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v2, Lcom/twitter/android/eq;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/twitter/android/eq;->a(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lcom/twitter/android/TimelineFragment;->a(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const/16 v7, 0x64

    goto :goto_1

    :pswitch_4
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_5
    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->l:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->m:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_2

    :pswitch_7
    invoke-virtual {v2}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    sget-object v6, Lcom/twitter/android/service/ScribeEvent;->n:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v4, v5, v6}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/twitter/android/TimelineFragment;->o:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v5}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v5

    div-int/lit8 v5, v5, 0x14

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/twitter/android/client/e;->a(JI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v0, p0

    iget v9, v0, Lcom/twitter/android/TimelineFragment;->e:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v14

    move-object v8, v2

    move/from16 v16, v7

    invoke-virtual/range {v8 .. v16}, Lcom/twitter/android/client/e;->a(IJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/twitter/android/TimelineFragment;->o:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/twitter/android/TimelineFragment;->r:J

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->d(I)J

    move-result-wide v13

    invoke-direct/range {p0 .. p1}, Lcom/twitter/android/TimelineFragment;->i(I)J

    move-result-wide v15

    move-object v8, v2

    move/from16 v17, v7

    invoke-virtual/range {v8 .. v17}, Lcom/twitter/android/client/e;->a(JJJJI)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :cond_1
    invoke-super/range {p0 .. p1}, Lcom/twitter/android/TweetListFragment;->f(I)V

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private d(I)J
    .locals 8

    const/4 v7, 0x1

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->e:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    :pswitch_1
    return-wide v2

    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    :cond_2
    const/16 v6, 0x13

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_4

    const/16 v6, 0x11

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    const/16 v6, 0x1f

    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(I)J
    .locals 6

    const/4 v5, 0x1

    const-wide/16 v0, 0x0

    iget v2, p0, Lcom/twitter/android/TimelineFragment;->e:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fetch type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v2, v4, :cond_2

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :cond_1
    :goto_0
    :pswitch_1
    return-wide v0

    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->c:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->c:I

    const/16 v0, 0x17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/twitter/android/TimelineFragment;->e:I

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/twitter/android/TimelineFragment;->s:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bh;

    invoke-direct {v1, p0}, Lcom/twitter/android/bh;-><init>(Lcom/twitter/android/TimelineFragment;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b000f

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0102

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00b2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b00b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(J)V

    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 3

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6

    const-wide/16 v3, 0x0

    const/4 v2, 0x3

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/twitter/android/TweetListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2, v3, v4}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    iput-boolean v5, p0, Lcom/twitter/android/TimelineFragment;->s:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0, v3, v4}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :goto_1
    new-instance v0, Lcom/twitter/android/widget/r;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/TimelineFragment;->f:J

    iget v4, p0, Lcom/twitter/android/TimelineFragment;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/widget/r;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/TimelineFragment;->c(I)V

    goto :goto_1
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->c:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/TweetActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "tw"

    new-instance v3, Lcom/twitter/android/provider/ax;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/api/c;)V
    .locals 2

    iget-wide v0, p1, Lcom/twitter/android/api/c;->a:J

    invoke-super {p0, v0, v1}, Lcom/twitter/android/TweetListFragment;->a(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->a(Z)V

    return-void
.end method

.method protected final a(Lcom/twitter/android/widget/r;)V
    .locals 6

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tweet_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/twitter/android/widget/r;->b:J

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/twitter/android/widget/r;->c:I

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final a(Lcom/twitter/android/widget/r;Z)V
    .locals 4

    iget-wide v0, p1, Lcom/twitter/android/widget/r;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TimelineFragment;->b(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/widget/ListView;

    iget v2, p1, Lcom/twitter/android/widget/r;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method protected final a(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->a(Z)V

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/TimelineFragment;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lcom/twitter/android/provider/az;->i:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Lcom/twitter/android/TimelineFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->j()Z

    :cond_1
    :goto_1
    return-void

    :pswitch_2
    sget-object v0, Lcom/twitter/android/provider/ag;->b:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/twitter/android/provider/az;->j:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/twitter/android/provider/az;->h:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "include_rts"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/twitter/android/provider/az;->m:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/twitter/android/provider/az;->g:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/twitter/android/provider/az;->f:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/twitter/android/provider/az;->e:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/twitter/android/provider/az;->d:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto :goto_0

    :pswitch_9
    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->o:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->r:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    sget-object v0, Lcom/twitter/android/provider/az;->c:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->o:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/twitter/android/TimelineFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->f()V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/twitter/android/TimelineFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3, v4, v5}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TimelineFragment;->s:Z

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/twitter/android/TimelineFragment;->c(I)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected final a_()V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/TimelineFragment;->a(IJ)V

    return-void
.end method

.method protected final b(I)Lcom/twitter/android/provider/ax;
    .locals 2

    new-instance v1, Lcom/twitter/android/provider/ax;

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-direct {v1, v0}, Lcom/twitter/android/provider/ax;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method protected final c(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->c(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->c()V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected final c_()V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->c_()V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tweet_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/TimelineFragment;->f:J

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->a:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/TimelineFragment;->d:I

    new-instance v0, Lcom/twitter/android/widget/r;

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->f:J

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->d:I

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/widget/r;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final d()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->a()V

    :cond_0
    return-void
.end method

.method protected final e()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/twitter/android/eq;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    iget v3, p0, Lcom/twitter/android/TimelineFragment;->e:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v5, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/eq;-><init>(Landroid/content/Context;IZLcom/twitter/android/widget/c;Lcom/twitter/android/client/e;)V

    invoke-virtual {v0, p0}, Lcom/twitter/android/eq;->a(Lcom/twitter/android/dd;)V

    if-eqz p1, :cond_2

    const-string v1, "spinning_gap_ids"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    :goto_1
    if-ge v6, v2, :cond_1

    aget-wide v3, v1, v6

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/eq;->a(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v3, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/eq;->notifyDataSetChanged()V

    :cond_2
    iput-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->h(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f07007b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->a:Landroid/content/SharedPreferences;

    new-instance v1, Lcom/twitter/android/dj;

    invoke-direct {v1, p0, v0}, Lcom/twitter/android/dj;-><init>(Lcom/twitter/android/TimelineFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/TimelineFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TimelineFragment;->e:I

    const-string v1, "tag"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/TimelineFragment;->r:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/TimelineFragment;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v4, "tag=?"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/twitter/android/TimelineFragment;->r:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    :goto_0
    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    if-ne v0, v6, :cond_1

    sget-object v3, Lcom/twitter/android/provider/ax;->c:[Ljava/lang/String;

    :goto_1
    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/TimelineFragment;->b:Landroid/net/Uri;

    iget-object v6, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v6}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "updated_at DESC, _id ASC"

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v5, v4

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/twitter/android/provider/ax;->b:[Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/twitter/android/TimelineFragment;->e:I

    if-nez v0, :cond_0

    const v0, 0x7f03004b

    invoke-virtual {p0, p1, v0, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TweetListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/TimelineFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/TimelineFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/twitter/android/TweetListFragment;->onResume()V

    iget-wide v0, p0, Lcom/twitter/android/TimelineFragment;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineFragment;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "ref_event"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ref_event"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    const-string v4, "ref_event"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lcom/twitter/android/TimelineFragment;->e:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->a:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->b:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->C:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    sget-object v4, Lcom/twitter/android/service/ScribeEvent;->d:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v3, v1, v2, v4, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/twitter/android/TweetListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TimelineFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/eq;

    invoke-virtual {v0}, Lcom/twitter/android/eq;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "spinning_gap_ids"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    :cond_1
    return-void
.end method
