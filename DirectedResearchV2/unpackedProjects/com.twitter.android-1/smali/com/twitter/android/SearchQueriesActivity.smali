.class public Lcom/twitter/android/SearchQueriesActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f03001a

    invoke-super {p0, p1, v0, v2}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "q_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    if-nez p1, :cond_0

    new-instance v1, Lcom/twitter/android/SearchQueriesFragment;

    invoke-direct {v1}, Lcom/twitter/android/SearchQueriesFragment;-><init>()V

    invoke-static {v0, v2}, Lcom/twitter/android/SearchQueriesFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchQueriesFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchQueriesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void

    :sswitch_0
    const v1, 0x7f0b0167

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchQueriesActivity;->c(I)V

    goto :goto_0

    :sswitch_1
    const v1, 0x7f0b00cf

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchQueriesActivity;->c(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
