.class final Lcom/twitter/android/dj;
.super Lcom/twitter/android/f;


# instance fields
.field private synthetic b:Lcom/twitter/android/TimelineFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/TimelineFragment;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/f;-><init>(Lcom/twitter/android/TweetListFragment;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0x191

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003d

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v0, Lcom/twitter/android/dy;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "home"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget-object v3, v3, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v0, v4, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JJII)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v0, Lcom/twitter/android/dy;->b:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget-object v3, v3, Lcom/twitter/android/TimelineFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v0, v1, v4, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final h(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final i(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final k(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final l(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final m(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/TimelineFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/dj;->b:Lcom/twitter/android/TimelineFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/TimelineFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/dj;->a:Landroid/content/Context;

    const v1, 0x7f0b003c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
