.class public Lcom/twitter/android/ActivityFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/widget/c;


# instance fields
.field private a:I

.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 9

    const/16 v6, 0x14

    const-wide/16 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ActivityFragment;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p0, Lcom/twitter/android/ActivityFragment;->a:I

    packed-switch p1, :pswitch_data_1

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

    :pswitch_1
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_2
    packed-switch p1, :pswitch_data_2

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

    :cond_1
    move-wide v2, v4

    goto :goto_2

    :pswitch_3
    move-wide v2, v4

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v7}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v4, 0xd

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_2
    :pswitch_5
    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/client/e;->b(IJJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ActivityFragment;->a(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/ActivityFragment;->f(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->n:Z

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v4, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 2

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/ActivityFragment;->b(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(I)V

    :goto_1
    new-instance v0, Lcom/twitter/android/widget/r;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/ActivityFragment;->d:J

    iget v4, p0, Lcom/twitter/android/ActivityFragment;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/widget/r;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/ActivityFragment;->c(I)V

    goto :goto_1
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Lcom/twitter/android/de;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, p2, v0}, Lcom/twitter/android/de;->a(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->n:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/de;

    invoke-virtual {v0, p1, p2}, Lcom/twitter/android/de;->a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ActivityFragment;->n:Z

    goto :goto_0
.end method

.method protected final a(Lcom/twitter/android/widget/r;)V
    .locals 5

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/twitter/android/widget/r;->b:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/twitter/android/widget/r;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected final a(Lcom/twitter/android/widget/r;Z)V
    .locals 4

    iget-wide v0, p1, Lcom/twitter/android/widget/r;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ActivityFragment;->b(J)I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->p:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->p:Landroid/widget/ListView;

    iget v2, p1, Lcom/twitter/android/widget/r;->c:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1
    return-void
.end method

.method protected final a(Z)V
    .locals 3

    const/4 v2, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lcom/twitter/android/de;

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/twitter/android/ActivityFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->j()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/twitter/android/de;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/twitter/android/ActivityFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->f()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/twitter/android/de;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/twitter/android/ActivityFragment;->b(I)V

    goto :goto_0
.end method

.method protected final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/ActivityFragment;->b(I)V

    return-void
.end method

.method protected final c_()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->b:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ActivityFragment;->d:J

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->b:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "off_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->c:I

    new-instance v0, Lcom/twitter/android/widget/r;

    iget-wide v1, p0, Lcom/twitter/android/ActivityFragment;->d:J

    iget v3, p0, Lcom/twitter/android/ActivityFragment;->c:I

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/twitter/android/widget/r;-><init>(IJI)V

    invoke-virtual {p0, v0, v5}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/widget/r;Z)V

    return-void
.end method

.method protected final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/twitter/android/ActivityFragment;->a:I

    if-nez v2, :cond_1

    new-instance v2, Lcom/twitter/android/b;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v2, v1, v4, v3, p0}, Lcom/twitter/android/b;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;)V

    iput-object v2, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    new-instance v2, Lcom/twitter/android/ba;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v2, v1, v4, v3}, Lcom/twitter/android/ba;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V

    iput-object v2, p0, Lcom/twitter/android/ActivityFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/fg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/fg;-><init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/aj;)V

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "activity_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ActivityFragment;->b:Landroid/content/SharedPreferences;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->a(ILcom/twitter/android/util/j;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/u;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/b;->a:[Ljava/lang/String;

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/twitter/android/ActivityFragment;->a:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->b(ILcom/twitter/android/util/j;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/ActivityFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ActivityFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ActivityFragment;->a(Z)V

    iget v0, p0, Lcom/twitter/android/ActivityFragment;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->B:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method
