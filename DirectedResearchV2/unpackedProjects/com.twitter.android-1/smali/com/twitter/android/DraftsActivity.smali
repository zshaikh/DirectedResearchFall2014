.class public Lcom/twitter/android/DraftsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# instance fields
.field a:Lcom/twitter/android/client/Session;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    const v0, 0x7f07004a

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f030014

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const v0, 0x7f0b00d4

    invoke-virtual {p0, v0}, Lcom/twitter/android/DraftsActivity;->c(I)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    new-instance v2, Lcom/twitter/android/DraftsFragment;

    invoke-direct {v2}, Lcom/twitter/android/DraftsFragment;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/twitter/android/DraftsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/DraftsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/DraftsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v3, 0x7f070040

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/DraftsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->f()Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsActivity;->a:Lcom/twitter/android/client/Session;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/DraftsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Ljava/lang/String;)Lcom/twitter/android/client/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/DraftsActivity;->a:Lcom/twitter/android/client/Session;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/twitter/android/fz;

    invoke-direct {v1, p0}, Lcom/twitter/android/fz;-><init>(Lcom/twitter/android/DraftsActivity;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0120

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x108009b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0121

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00b4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00b5

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
