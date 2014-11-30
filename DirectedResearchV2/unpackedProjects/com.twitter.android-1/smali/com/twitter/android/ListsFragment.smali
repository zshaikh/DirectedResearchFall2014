.class public Lcom/twitter/android/ListsFragment;
.super Lcom/twitter/android/BaseListFragment;


# instance fields
.field a:I

.field private b:Lcom/twitter/android/dw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private d(I)V
    .locals 5

    iget v0, p0, Lcom/twitter/android/ListsFragment;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/ListsFragment;->o:J

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->b(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->f(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/ListsFragment;->o:J

    iget v3, p0, Lcom/twitter/android/ListsFragment;->a:I

    invoke-virtual {p0, p1}, Lcom/twitter/android/ListsFragment;->b(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->b(JII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/ListsFragment;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsFragment;->d(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, v1}, Lcom/twitter/android/ListsFragment;->d(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->c(I)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f070047

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/twitter/android/ListCreateEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->b:Lcom/twitter/android/dw;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->b:Lcom/twitter/android/dw;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/dw;->a(JLjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method final a(Lcom/twitter/android/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ListsFragment;->b:Lcom/twitter/android/dw;

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->j()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/ListsFragment;->d(I)V

    goto :goto_0
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/ListsFragment;->d(I)V

    return-void
.end method

.method final b(I)I
    .locals 3

    const/4 v0, 0x0

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
    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    new-instance v3, Lcom/twitter/android/dz;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x2

    iget v0, p0, Lcom/twitter/android/ListsFragment;->q:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-wide v6, p0, Lcom/twitter/android/ListsFragment;->o:J

    iget-object v8, p0, Lcom/twitter/android/ListsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v8}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    :goto_1
    invoke-direct {v3, v4, v5, v0, v1}, Lcom/twitter/android/dz;-><init>(Landroid/content/Context;IZZ)V

    iput-object v3, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ListsFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/cb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cb;-><init>(Lcom/twitter/android/ListsFragment;Lcom/twitter/android/dg;)V

    iput-object v0, p0, Lcom/twitter/android/ListsFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ListsFragment;->a:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/twitter/android/ListsFragment;->a:I

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 11

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/twitter/android/provider/aq;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/twitter/android/ListsFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iget v0, p0, Lcom/twitter/android/ListsFragment;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/cq;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type IN (0,2)"

    new-array v5, v10, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsFragment;->o:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/ListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/cq;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/twitter/android/ListsFragment;->o:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v9

    iget v7, p0, Lcom/twitter/android/ListsFragment;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/ListsFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ListsFragment;->a(Z)V

    return-void
.end method
