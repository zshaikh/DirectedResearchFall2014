.class public Lcom/twitter/android/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/twitter/android/fx;
.implements Lcom/twitter/android/widget/m;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/app/Activity;

.field private d:Z

.field protected e:Lcom/twitter/android/client/e;

.field protected f:Lcom/twitter/android/widget/Navbar;

.field protected g:Lcom/twitter/android/client/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;IZ)V
    .locals 4

    const/16 v3, 0x8

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/twitter/android/BaseFragmentActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/e;->a(Landroid/content/Context;)Lcom/twitter/android/client/e;

    move-result-object v2

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    iput-object v2, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Lcom/twitter/android/client/e;

    iput-boolean p3, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Z

    iput-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/app/Activity;

    if-eqz p3, :cond_1

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/Navbar;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/m;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    const v1, 0x7f070022

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v3, v1}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->f:Lcom/twitter/android/widget/Navbar;

    if-eqz p1, :cond_4

    const-string v0, "pending_reqs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    goto :goto_0

    :array_0
    .array-data 4
        0x7f07004a
        0x7f070069
    .end array-data
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f070022 -> :sswitch_0
        0x7f07004a -> :sswitch_2
        0x7f070069 -> :sswitch_1
    .end sparse-switch
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    const-string v2, "tab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final c(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final e(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final f()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call the multiple parameter versions of this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/BaseFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f100000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/BaseFragmentActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0700d7
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-boolean v0, p0, Lcom/twitter/android/BaseFragmentActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Lcom/twitter/android/client/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/BaseFragmentActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->g:Lcom/twitter/android/client/f;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/BaseFragmentActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
