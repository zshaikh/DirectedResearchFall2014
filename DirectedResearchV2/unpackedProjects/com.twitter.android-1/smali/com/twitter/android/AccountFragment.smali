.class public Lcom/twitter/android/AccountFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/bl;
.implements Lcom/twitter/android/util/j;


# instance fields
.field private a:Lcom/twitter/android/bk;

.field private b:Lcom/twitter/android/bq;

.field private c:Lcom/twitter/android/ce;

.field private d:Lcom/twitter/android/bb;

.field private e:Lcom/twitter/android/api/c;

.field private f:Ljava/lang/String;

.field private g:[Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/AccountFragment;->g:[Z

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    aput-boolean v0, v2, v1

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->b:Lcom/twitter/android/bq;

    invoke-virtual {v0}, Lcom/twitter/android/bq;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/AccountFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget v1, p1, Lcom/twitter/android/util/w;->d:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    invoke-virtual {v0}, Lcom/twitter/android/bk;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/api/c;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->e:Lcom/twitter/android/api/c;

    invoke-virtual {p1, v0}, Lcom/twitter/android/api/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/twitter/android/AccountFragment;->e:Lcom/twitter/android/api/c;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    invoke-virtual {v0, p1}, Lcom/twitter/android/bk;->a(Lcom/twitter/android/api/c;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->j:Lcom/twitter/android/client/e;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/twitter/android/AccountFragment;->o:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;J)Ljava/lang/String;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->j:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/ce;

    if-nez v2, :cond_0

    new-instance v2, Lcom/twitter/android/bk;

    invoke-direct {v2, v0, v1}, Lcom/twitter/android/bk;-><init>(Landroid/content/Context;Lcom/twitter/android/client/e;)V

    iput-object v2, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->g:[Z

    new-instance v1, Lcom/twitter/android/bq;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f0b0020

    aput v4, v2, v3

    iget-object v3, p0, Lcom/twitter/android/AccountFragment;->g:[Z

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/content/Intent;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/twitter/android/MessagesActivity;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    aput-object v6, v4, v5

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/android/bq;-><init>(Landroid/content/Context;[I[Z[Landroid/content/Intent;)V

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->b:Lcom/twitter/android/bq;

    new-instance v1, Lcom/twitter/android/ce;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/twitter/android/AccountFragment;->b:Lcom/twitter/android/bq;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/twitter/android/fb;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/twitter/android/eu;

    const/4 v6, 0x0

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b00d4

    invoke-virtual {p0, v8}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/DraftsActivity;

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "return_to_drafts"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b0025

    invoke-virtual {p0, v8}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/ListsActivity;

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b0167

    invoke-virtual {p0, v8}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/SearchQueriesActivity;

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "q_type"

    const/4 v12, 0x6

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/twitter/android/fb;-><init>([Lcom/twitter/android/eu;)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Lcom/twitter/android/fb;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/twitter/android/eu;

    const/4 v6, 0x0

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b0137

    invoke-virtual {p0, v8}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/AccountsActivity;

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v11, "title"

    const v12, 0x7f0b0137

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/twitter/android/eu;

    const v8, 0x7f0b008a

    invoke-virtual {p0, v8}, Lcom/twitter/android/AccountFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/twitter/android/SettingsActivity;

    invoke-direct {v10, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/twitter/android/eu;-><init>(Ljava/lang/String;ILandroid/content/Intent;)V

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Lcom/twitter/android/fb;-><init>([Lcom/twitter/android/eu;)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/twitter/android/ce;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v1, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/ce;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->c:Lcom/twitter/android/ce;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/AccountFragment;->o:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountFragment;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/k;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/AccountFragment;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/i;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/AccountFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/AccountFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v6, p0, Lcom/twitter/android/AccountFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v6}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/AccountFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/AccountFragment;->o:J

    iput-object v0, p0, Lcom/twitter/android/AccountFragment;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->a:Lcom/twitter/android/bk;

    invoke-virtual {v6}, Lcom/twitter/android/client/e;->c()Lcom/twitter/android/api/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/bk;->a(Lcom/twitter/android/api/c;)V

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->d:Lcom/twitter/android/bb;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v7

    new-instance v0, Lcom/twitter/android/bb;

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v7, p0, v2}, Lcom/twitter/android/bb;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/bl;I)V

    iput-object v0, p0, Lcom/twitter/android/AccountFragment;->d:Lcom/twitter/android/bb;

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->d:Lcom/twitter/android/bb;

    iget-wide v1, p0, Lcom/twitter/android/AccountFragment;->o:J

    iget-wide v4, p0, Lcom/twitter/android/AccountFragment;->o:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/bb;->a(JLjava/lang/String;J)V

    invoke-virtual {v7, v8, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/twitter/android/AccountFragment;->o:J

    sget-object v2, Lcom/twitter/android/service/ScribeEvent;->D:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->d:Lcom/twitter/android/bb;

    iget-wide v1, p0, Lcom/twitter/android/AccountFragment;->o:J

    iget-wide v4, p0, Lcom/twitter/android/AccountFragment;->o:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/bb;->b(JLjava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->g:[Z

    aput-boolean v7, v0, v7

    iget-object v0, p0, Lcom/twitter/android/AccountFragment;->b:Lcom/twitter/android/bq;

    invoke-virtual {v0}, Lcom/twitter/android/bq;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/twitter/android/AccountFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v8, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0
.end method
