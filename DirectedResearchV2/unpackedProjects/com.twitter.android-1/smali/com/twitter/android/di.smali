.class final Lcom/twitter/android/di;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/TweetFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8b

    if-eq p5, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/twitter/android/provider/ax;->l:Z

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->e:Landroid/widget/ImageButton;

    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b003f

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->b:Lcom/twitter/android/provider/ax;

    iput-boolean v2, v0, Lcom/twitter/android/provider/ax;->l:Z

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->e:Lcom/twitter/android/widget/TweetDetailView;

    iget-object v0, v0, Lcom/twitter/android/widget/TweetDetailView;->e:Landroid/widget/ImageButton;

    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0040

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;Lcom/twitter/android/api/v;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iget-object v0, v0, Lcom/twitter/android/TweetFragment;->c:Lcom/twitter/android/ae;

    iget-object v1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v1}, Lcom/twitter/android/TweetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Lcom/twitter/android/ae;->a(Landroid/content/Context;Lcom/twitter/android/api/v;)V

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->g_()V

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    iput-object p5, v0, Lcom/twitter/android/TweetFragment;->f:Lcom/twitter/android/api/v;

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->f_()V

    :cond_1
    return-void
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0}, Lcom/twitter/android/TweetFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/TweetFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    return-void
.end method
