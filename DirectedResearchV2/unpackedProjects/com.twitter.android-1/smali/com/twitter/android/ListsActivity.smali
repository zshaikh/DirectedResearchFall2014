.class public Lcom/twitter/android/ListsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/dw;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "list_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "list_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "user_id"

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "inquire_user_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/twitter/android/ListsActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const v4, 0x7f0b0025

    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/ListsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ListsActivity;->a:J

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v5, :cond_3

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, v4}, Lcom/twitter/android/ListsActivity;->c(I)V

    :goto_0
    if-nez p1, :cond_1

    new-instance v1, Lcom/twitter/android/ListsFragment;

    invoke-direct {v1}, Lcom/twitter/android/ListsFragment;-><init>()V

    invoke-static {v0, v6}, Lcom/twitter/android/ListsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "chmode"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/twitter/android/ListsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p0}, Lcom/twitter/android/ListsFragment;->a(Lcom/twitter/android/dw;)V

    invoke-virtual {p0}, Lcom/twitter/android/ListsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void

    :pswitch_0
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0

    :pswitch_2
    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/twitter/android/ListsActivity;->c(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onStart()V

    iget-wide v0, p0, Lcom/twitter/android/ListsActivity;->a:J

    iget-object v2, p0, Lcom/twitter/android/ListsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ListsActivity;->e:Lcom/twitter/android/client/e;

    iget-wide v1, p0, Lcom/twitter/android/ListsActivity;->a:J

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->f:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    :cond_0
    return-void
.end method
