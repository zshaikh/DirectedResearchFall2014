.class public Lcom/twitter/android/AccountsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/cm;)V
    .locals 0

    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v0, 0x7f03001a

    const/4 v1, 0x1

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/AccountsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const v2, 0x7f0b0135

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/AccountsActivity;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/AccountsActivity;->f:Lcom/twitter/android/widget/Navbar;

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    if-nez p1, :cond_0

    new-instance v1, Lcom/twitter/android/AccountsFragment;

    invoke-direct {v1}, Lcom/twitter/android/AccountsFragment;-><init>()V

    invoke-virtual {v1, p0}, Lcom/twitter/android/AccountsFragment;->a(Lcom/twitter/android/fx;)V

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/twitter/android/AccountsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/AccountsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/AccountsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    :array_0
    .array-data 4
        0x7f07004a
        0x7f070069
    .end array-data
.end method
