.class public Lcom/twitter/android/f;
.super Lcom/twitter/android/client/f;


# instance fields
.field protected final a:Landroid/content/Context;

.field private synthetic b:Lcom/twitter/android/TweetListFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/f;->b:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/f;->b:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x8b

    if-eq p5, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/f;->a:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/twitter/android/f;->b:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/f;->a:Landroid/content/Context;

    const v1, 0x7f0b0040

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/f;->b:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/f;->a:Landroid/content/Context;

    const v1, 0x7f0b0043

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/f;->b:Lcom/twitter/android/TweetListFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TweetListFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/f;->a:Landroid/content/Context;

    const v1, 0x7f0b0045

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
