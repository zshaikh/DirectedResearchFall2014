.class public Lcom/twitter/android/TimelineActivity;
.super Lcom/twitter/android/UserQueryActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/UserQueryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/api/c;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/UserQueryActivity;->a(Lcom/twitter/android/api/c;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f07003e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v0, p1}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/api/c;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0b001e

    const v6, 0x7f03001a

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "twitter"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "user_timeline"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v6, v1}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    iget-object v3, p0, Lcom/twitter/android/TimelineActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v3}, Lcom/twitter/android/client/e;->h()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string v0, "type"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :sswitch_0
    invoke-super {p0, p1, v6, v3}, Lcom/twitter/android/UserQueryActivity;->a(Landroid/os/Bundle;IZ)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v2, "owner_id"

    iget-wide v5, p0, Lcom/twitter/android/TimelineActivity;->a:J

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v4, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/TimelineActivity;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/twitter/android/TimelineActivity;->a:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-nez v2, :cond_3

    const v0, 0x7f0b003c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->finish()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    new-instance v2, Lcom/twitter/android/TimelineFragment;

    invoke-direct {v2}, Lcom/twitter/android/TimelineFragment;-><init>()V

    invoke-virtual {v2, p0}, Lcom/twitter/android/TimelineFragment;->a(Lcom/twitter/android/fx;)V

    invoke-static {v4, v1}, Lcom/twitter/android/TimelineFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/twitter/android/TimelineFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v3, 0x7f07003e

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_4
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/twitter/android/TimelineActivity;->c(I)V

    :goto_3
    :pswitch_2
    invoke-virtual {p0}, Lcom/twitter/android/TimelineActivity;->a()V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v7}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :pswitch_4
    const v0, 0x7f0b004d

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :pswitch_5
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :pswitch_6
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :pswitch_7
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :pswitch_8
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/twitter/android/TimelineActivity;->c(I)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method
