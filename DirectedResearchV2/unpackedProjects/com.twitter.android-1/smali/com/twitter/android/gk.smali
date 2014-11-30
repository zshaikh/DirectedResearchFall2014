.class final Lcom/twitter/android/gk;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesFragment;Lcom/twitter/android/fy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/gk;-><init>(Lcom/twitter/android/MessagesFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/MessagesFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0066

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

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

    const-string v1, "messages"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v1}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    iget-object v2, v2, Lcom/twitter/android/MessagesFragment;->j:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/twitter/android/platform/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v1, v0, v3, v2}, Lcom/twitter/android/platform/TwitterDataSyncService;->a(Landroid/content/Context;Landroid/os/Bundle;ZLandroid/accounts/Account;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final g(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    iget v0, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesFragment;->c(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x194

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/gk;->a:Lcom/twitter/android/MessagesFragment;

    invoke-virtual {v0}, Lcom/twitter/android/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0069

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
