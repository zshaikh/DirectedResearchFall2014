.class public Lcom/twitter/android/SearchTweetsActivity;
.super Lcom/twitter/android/BaseFragmentActivity;


# instance fields
.field a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "twitter"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v2, v0

    :goto_0
    const-string v3, "type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    iput-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->c(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->finish()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "type"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v1, "type"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/twitter/android/SearchTweetsActivity;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->c(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final b(I)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0x7f07004a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/PostActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "selection"

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v4, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->b(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    new-instance v1, Lcom/twitter/android/SearchTweetsFragment;

    invoke-direct {v1}, Lcom/twitter/android/SearchTweetsFragment;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/SearchTweetsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f07003e

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->f:Lcom/twitter/android/widget/Navbar;

    const/16 v1, 0x8

    const v2, 0x7f070069

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/Navbar;->a(II)V

    new-instance v0, Lcom/twitter/android/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/a;-><init>(Lcom/twitter/android/SearchTweetsActivity;Lcom/twitter/android/ec;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->g:Lcom/twitter/android/client/f;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100006

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/twitter/android/SearchTweetsActivity;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/content/Intent;)V

    new-instance v0, Lcom/twitter/android/SearchTweetsFragment;

    invoke-direct {v0}, Lcom/twitter/android/SearchTweetsFragment;-><init>()V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/twitter/android/SearchTweetsFragment;->a(Landroid/content/Intent;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/SearchTweetsFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f07003e

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsActivity;->d(Ljava/lang/String;)V

    const v1, 0x7f0b0126

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x6

    iput v1, p0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/twitter/android/client/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsActivity;->d(Ljava/lang/String;)V

    const v1, 0x7f0b0127

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput v3, p0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0700e0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v0}, Lcom/twitter/android/client/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/twitter/android/SearchTweetsActivity;->a:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    const v3, 0x7f0700e1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v3, 0x7f0700e0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method protected onStart()V
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v1}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->c:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(JLcom/twitter/android/service/ScribeEvent;)V

    return-void
.end method
