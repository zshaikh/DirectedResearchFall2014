.class public Lcom/twitter/android/SearchQueriesFragment;
.super Lcom/twitter/android/BaseListFragment;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/SearchQueriesFragment;->a:Landroid/content/SharedPreferences;

    const-string v3, "last"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0xdbba0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/twitter/android/SearchQueriesFragment;->b:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/SearchQueriesFragment;->a(Ljava/lang/String;I)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/twitter/android/SearchQueriesFragment;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v6}, Lcom/twitter/android/SearchQueriesFragment;->c(I)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-ne v2, v5, :cond_1

    iget-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Lcom/twitter/android/k;

    invoke-virtual {v1, v0}, Lcom/twitter/android/k;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/PromotedContent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->j:Lcom/twitter/android/client/e;

    const/4 v2, 0x0

    iget-wide v4, v0, Lcom/twitter/android/api/PromotedContent;->promotedTrendId:J

    invoke-virtual {v1, v6, v2, v4, v5}, Lcom/twitter/android/client/e;->a(ILjava/lang/String;J)V

    const-string v0, "type"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v3}, Lcom/twitter/android/SearchQueriesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final f(I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v1, :cond_1

    new-instance v1, Lcom/twitter/android/k;

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/twitter/android/k;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/twitter/android/SearchQueriesFragment;->b:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/twitter/android/gb;

    iget-object v3, p0, Lcom/twitter/android/SearchQueriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v2, v3}, Lcom/twitter/android/gb;-><init>(Lcom/twitter/android/client/e;)V

    invoke-virtual {v1, v2}, Lcom/twitter/android/k;->a(Lcom/twitter/android/dd;)V

    :cond_0
    iput-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "search_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->a:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/twitter/android/cw;

    invoke-direct {v0, p0}, Lcom/twitter/android/cw;-><init>(Lcom/twitter/android/SearchQueriesFragment;)V

    iput-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->k:Lcom/twitter/android/client/f;

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "q_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchQueriesFragment;->b:I

    :cond_0
    iget v0, p0, Lcom/twitter/android/SearchQueriesFragment;->b:I

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ARG_QUERY_TYPE must be non-zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/d;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/SearchQueriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/l;->a:[Ljava/lang/String;

    const-string v4, "type=? AND latitude IS NULL AND longitude IS NULL"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/twitter/android/SearchQueriesFragment;->b:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "query_id DESC, time ASC"

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/SearchQueriesFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchQueriesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method
