.class public Lcom/twitter/android/FollowActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/fm;


# instance fields
.field private a:Z

.field private b:[I

.field private c:Z

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;II)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "follow"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/twitter/android/FollowActivity;->b:[I

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "follow_all_title"

    if-lez p2, :cond_0

    :goto_1
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "follow_all_subtitle"

    if-lez p3, :cond_1

    :goto_2
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onboarding"

    iget-boolean v2, p0, Lcom/twitter/android/FollowActivity;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const p2, 0x7f0b0170

    goto :goto_1

    :cond_1
    const p3, 0x7f0b0171

    goto :goto_2

    :pswitch_1
    const-string v1, "follow_all_title"

    if-lez p2, :cond_2

    :goto_3
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "follow_all_subtitle"

    if-lez p3, :cond_3

    :goto_4
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "browse_categories"

    iget-boolean v2, p0, Lcom/twitter/android/FollowActivity;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "empty_desc"

    const v2, 0x7f0b0187

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0b00e7

    goto :goto_3

    :cond_3
    const p3, 0x7f0b00e8

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 1

    new-instance v0, Lcom/twitter/android/UsersFragment;

    invoke-direct {v0}, Lcom/twitter/android/UsersFragment;-><init>()V

    invoke-virtual {v0, p1}, Lcom/twitter/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p0, v0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0176

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->b:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->c(I)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->c(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->d:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->b:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->d:Landroid/widget/Button;

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/twitter/android/FollowActivity;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->b:[I

    array-length v1, v0

    aget v2, v0, v3

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    if-le v1, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/twitter/android/FollowActivity;->b:[I

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0b0103

    const v2, 0x7f0b00e7

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/FollowActivity;->a(Landroid/content/Intent;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f07003e

    invoke-direct {p0, v0}, Lcom/twitter/android/FollowActivity;->a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/twitter/android/FollowActivity;->c:Z

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->a()V

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->c()V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 5

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->b(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->b:[I

    array-length v1, v0

    array-length v2, v0

    if-ne v2, v4, :cond_0

    const-string v0, "home"

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/FollowActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "follow_flow"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/FollowActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f07004a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f07003e

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f03002e

    invoke-super {p0, p1, v0, v3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "onboarding"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/twitter/android/FollowActivity;->a:Z

    iput-boolean v3, p0, Lcom/twitter/android/FollowActivity;->c:Z

    if-nez p1, :cond_1

    const-string v1, "follow_flow"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/FollowActivity;->b:[I

    invoke-direct {p0, v0, v2, v2}, Lcom/twitter/android/FollowActivity;->a(Landroid/content/Intent;II)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/twitter/android/FollowActivity;->a(Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :goto_1
    iget-object v0, p0, Lcom/twitter/android/FollowActivity;->f:Lcom/twitter/android/widget/Navbar;

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/FollowActivity;->d:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->a()V

    invoke-direct {p0}, Lcom/twitter/android/FollowActivity;->c()V

    goto :goto_0

    :cond_1
    const-string v0, "follow_flow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/FollowActivity;->b:[I

    invoke-virtual {p0}, Lcom/twitter/android/FollowActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsersFragment;

    iput-object p0, v0, Lcom/twitter/android/UsersFragment;->f:Lcom/twitter/android/fm;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "follow_flow"

    iget-object v1, p0, Lcom/twitter/android/FollowActivity;->b:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method
