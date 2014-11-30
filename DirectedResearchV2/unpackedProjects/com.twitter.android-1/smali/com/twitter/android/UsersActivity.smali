.class public Lcom/twitter/android/UsersActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twitter/android/gu;


# instance fields
.field private a:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x0

    if-lez p1, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->a:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v4, 0x7f0b00b2

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070036

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v4, 0x7f0b00b3

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/twitter/android/UsersActivity;->a:Landroid/widget/LinearLayout;

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v5, :cond_3

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->a:Landroid/widget/LinearLayout;

    goto :goto_1

    :cond_3
    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->e:Lcom/twitter/android/FriendshipCache;

    invoke-virtual {v0}, Lcom/twitter/android/FriendshipCache;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "friendship_cache"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "username"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/UsersActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070035 -> :sswitch_0
        0x7f070036 -> :sswitch_1
        0x7f0700d4 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x2

    const v6, 0x7f030055

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v0, "type"

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, v6, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    const-string v0, "user_ids"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    if-nez p1, :cond_0

    invoke-static {v4, v0}, Lcom/twitter/android/UsersFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "chmode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "follow"

    const-string v7, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Lcom/twitter/android/UsersFragment;

    invoke-direct {v1}, Lcom/twitter/android/UsersFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/twitter/android/UsersFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Lcom/twitter/android/UsersFragment;->a(Lcom/twitter/android/gu;)V

    packed-switch v5, :pswitch_data_1

    :goto_2
    :pswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/UsersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v6, 0x7f07003e

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    packed-switch v5, :pswitch_data_2

    :pswitch_2
    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    :goto_3
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->f:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_1
    return-void

    :pswitch_3
    invoke-super {p0, p1, v6, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_4
    invoke-super {p0, p1, v6, v2}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v0, p0, Lcom/twitter/android/UsersActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "com.twitter.android.pick_multiple"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :pswitch_5
    const-string v6, "empty_desc"

    const v7, 0x7f0b0185

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_6
    const-string v6, "empty_desc"

    const v7, 0x7f0b0186

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_7
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_8
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_a
    const-string v0, "slug_name"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_b
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(I)V

    goto :goto_3

    :pswitch_c
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(I)V

    goto :goto_3

    :pswitch_d
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(I)V

    goto :goto_3

    :pswitch_e
    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Lcom/twitter/android/UsersActivity;->c(I)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_2
        :pswitch_c
        :pswitch_2
        :pswitch_d
        :pswitch_e
    .end packed-switch

    :array_0
    .array-data 4
        0x7f07004a
        0x7f070069
    .end array-data
.end method
