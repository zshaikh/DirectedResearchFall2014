.class public Lcom/twitter/android/MessagesActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# instance fields
.field private a:Lcom/twitter/android/client/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/e;

    const-string v1, "account_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/twitter/android/client/e;->s()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 4

    const v0, 0x7f07004a

    if-ne v0, p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const v0, 0x7f03001a

    invoke-super {p0, p1, v0, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/MessagesActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f07004a

    const v2, 0x7f02011d

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->b(II)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/MessagesActivity;->a(Landroid/content/Intent;)V

    new-instance v1, Lcom/twitter/android/MessagesFragment;

    invoke-direct {v1}, Lcom/twitter/android/MessagesFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/twitter/android/MessagesFragment;->a(Lcom/twitter/android/fx;)V

    invoke-static {v0, v3}, Lcom/twitter/android/MessagesFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "empty_title"

    const v3, 0x7f0b0183

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "empty_desc"

    const v3, 0x7f0b0184

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/MessagesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    new-instance v0, Lcom/twitter/android/by;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/by;-><init>(Lcom/twitter/android/MessagesActivity;Lcom/twitter/android/ag;)V

    iput-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/f;

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/MessagesActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/MessagesActivity;->a:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/MessagesActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/MessagesActivity;->a(Landroid/content/Intent;)V

    return-void
.end method
