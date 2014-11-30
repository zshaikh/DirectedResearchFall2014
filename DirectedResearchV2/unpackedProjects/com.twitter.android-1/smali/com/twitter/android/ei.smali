.class final Lcom/twitter/android/ei;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DiscoverFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v2, p2}, Lcom/twitter/android/DiscoverFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez p6, :cond_1

    iget-object v2, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v2, v2, Lcom/twitter/android/DiscoverFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_refresh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v2, 0xc8

    if-eq p3, v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v2}, Lcom/twitter/android/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b0173

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v2, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    if-lez p5, :cond_2

    :goto_0
    iput-boolean v0, v2, Lcom/twitter/android/DiscoverFragment;->d:Z

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/DiscoverFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    if-lez p8, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-static {v0}, Lcom/twitter/android/DiscoverFragment;->a(Lcom/twitter/android/DiscoverFragment;)Lcom/twitter/android/FriendshipCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->c()V

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0}, Lcom/twitter/android/DiscoverFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/ei;->a:Lcom/twitter/android/DiscoverFragment;

    iget-object v0, v0, Lcom/twitter/android/DiscoverFragment;->c:Lcom/twitter/android/g;

    invoke-virtual {v0}, Lcom/twitter/android/g;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/dh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dh;->a(Ljava/util/HashMap;)V

    return-void
.end method
