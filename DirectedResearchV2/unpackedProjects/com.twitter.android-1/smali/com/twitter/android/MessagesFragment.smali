.class public Lcom/twitter/android/MessagesFragment;
.super Lcom/twitter/android/BaseListFragment;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method

.method private b(I)Z
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    move-wide v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->b(JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/MessagesFragment;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    move-wide v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/e;->c(JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/twitter/android/MessagesFragment;->a(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/MessagesFragment;->f(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/MessagesFragment;->b(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesFragment;->b(I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesFragment;->c(I)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Z)V
    .locals 2

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->a(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->j()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/twitter/android/MessagesFragment;->f(I)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/twitter/android/MessagesFragment;->b(I)Z

    goto :goto_0
.end method

.method public final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesFragment;->b(I)Z

    return-void
.end method

.method protected final e()I
    .locals 1

    const/16 v0, 0xd

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/ee;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/ee;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/MessagesFragment;->l:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/gk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/gk;-><init>(Lcom/twitter/android/MessagesFragment;Lcom/twitter/android/fy;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesFragment;->k:Lcom/twitter/android/client/f;

    if-eqz p1, :cond_0

    const-string v0, "state_msg_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/MessagesFragment;->a:J

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/MessagesFragment;->a(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/twitter/android/MessagesFragment;->o:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/twitter/android/provider/l;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "ownerId"

    invoke-virtual {v3, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/provider/ar;->a:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onDestroy()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/twitter/android/MessagesFragment;->b(ILcom/twitter/android/util/j;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/MessagesFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesFragment;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "ref_event"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v3, p0, Lcom/twitter/android/MessagesFragment;->o:J

    sget-object v5, Lcom/twitter/android/service/ScribeEvent;->e:Lcom/twitter/android/service/ScribeEvent;

    const-string v0, "ref_event"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    const-string v0, "ref_event"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/MessagesFragment;->o:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->e:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_msg_id"

    iget-wide v1, p0, Lcom/twitter/android/MessagesFragment;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
