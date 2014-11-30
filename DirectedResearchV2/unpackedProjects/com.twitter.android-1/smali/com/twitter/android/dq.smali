.class final Lcom/twitter/android/dq;
.super Lcom/twitter/android/f;


# instance fields
.field private synthetic b:Lcom/twitter/android/SearchTweetsFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/SearchTweetsFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/f;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x6

    iput v1, v0, Lcom/twitter/android/SearchTweetsFragment;->b:I

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iput-object p9, v0, Lcom/twitter/android/SearchTweetsFragment;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchTweetsFragment;->d(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/f;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/twitter/android/util/f;->a:Ljava/lang/String;

    const-string v3, "http://maps.google.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v2, v2, Lcom/twitter/android/SearchTweetsFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/twitter/android/util/f;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsFragment;->f:Lcom/twitter/android/dh;

    invoke-virtual {v0, p1}, Lcom/twitter/android/dh;->a(Ljava/util/HashMap;)V

    :cond_2
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/twitter/android/SearchTweetsFragment;->b:I

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTweetsFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    iget v1, v0, Lcom/twitter/android/dy;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/twitter/android/SearchTweetsFragment;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    invoke-virtual {v0}, Lcom/twitter/android/SearchTweetsFragment;->f()V

    :goto_0
    if-lez p7, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    add-int/lit8 v1, p7, 0x1

    iput v1, v0, Lcom/twitter/android/SearchTweetsFragment;->a:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/twitter/android/dq;->a:Landroid/content/Context;

    const v2, 0x7f0b0089

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/twitter/android/dq;->b:Lcom/twitter/android/SearchTweetsFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchTweetsFragment;->c(I)V

    goto :goto_1
.end method
