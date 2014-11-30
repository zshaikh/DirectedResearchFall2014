.class public Lcom/twitter/android/StoriesFragment;
.super Lcom/twitter/android/BaseListFragment;

# interfaces
.implements Lcom/twitter/android/util/j;
.implements Lcom/twitter/android/widget/c;


# instance fields
.field a:Lcom/twitter/android/dh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/twitter/android/provider/ax;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/StoriesFragment;->n:Z

    iget v0, p0, Lcom/twitter/android/StoriesFragment;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    iget-object v4, p1, Lcom/twitter/android/provider/ax;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    iget v1, p1, Lcom/twitter/android/provider/ax;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/ax;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesFragment;->c(I)V

    return-void
.end method

.method protected final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0, p2}, Lcom/twitter/android/dh;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/twitter/android/util/w;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/StoriesFragment;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/StoriesFragment;->n:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/StoriesFragment;->n:Z

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/dh;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/dh;-><init>(Landroid/content/Context;ILcom/twitter/android/client/e;Lcom/twitter/android/widget/c;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->p:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/twitter/android/BaseListFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/twitter/android/ex;

    invoke-direct {v0, p0}, Lcom/twitter/android/ex;-><init>(Lcom/twitter/android/StoriesFragment;)V

    iput-object v0, p0, Lcom/twitter/android/StoriesFragment;->k:Lcom/twitter/android/client/f;

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/StoriesFragment;->o:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ae:Lcom/twitter/android/service/ScribeEvent;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;Lcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7

    new-instance v0, Lcom/twitter/android/dk;

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/au;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/twitter/android/provider/aa;->a(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/twitter/android/dh;->a:[Ljava/lang/String;

    const-string v4, "query is null AND unread!=2"

    const/4 v5, 0x0

    const-string v6, "_id ASC "

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/dk;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/StoriesFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/dh;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/BaseListFragment;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->a:Lcom/twitter/android/dh;

    invoke-virtual {v0}, Lcom/twitter/android/dh;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/StoriesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/StoriesFragment;->f(I)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->k()Ljava/lang/String;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/twitter/android/BaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/twitter/android/StoriesFragment;->p:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
