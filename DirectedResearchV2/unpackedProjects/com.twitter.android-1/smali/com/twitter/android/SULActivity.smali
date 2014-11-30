.class public Lcom/twitter/android/SULActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070038
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f03002e

    invoke-super {p0, p1, v1, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/SULActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v1, 0x7f03001a

    invoke-super {p0, p1, v1, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Lcom/twitter/android/SULActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SULActivity;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/twitter/android/SULActivity;->f:Lcom/twitter/android/widget/Navbar;

    const/16 v0, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030009

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->addView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_0

    new-instance v0, Lcom/twitter/android/SULFragment;

    invoke-direct {v0}, Lcom/twitter/android/SULFragment;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/twitter/android/SULFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SULFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SULActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f07003e

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x7f07004a
        0x7f070069
    .end array-data
.end method
