.class final Lcom/twitter/android/fg;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/ActivityFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ActivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/fg;-><init>(Lcom/twitter/android/ActivityFragment;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;IJJI)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ActivityFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    iget v2, v0, Lcom/twitter/android/dy;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/ActivityFragment;->c(I)V

    const/16 v1, 0xc8

    if-eq p3, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0145

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

    const-string v1, "activity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v1}, Lcom/twitter/android/ActivityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/ActivityFragment;

    iget-object v2, v2, Lcom/twitter/android/ActivityFragment;->j:Lcom/twitter/android/client/e;

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
