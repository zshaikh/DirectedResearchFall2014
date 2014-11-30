.class public Lcom/twitter/android/UserQueryActivity;
.super Lcom/twitter/android/BaseFragmentActivity;

# interfaces
.implements Lcom/twitter/android/bl;


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field c:Z

.field private d:Lcom/twitter/android/bb;

.field private h:Lcom/twitter/android/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->d:Lcom/twitter/android/bb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/bb;

    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/twitter/android/bb;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/bl;I)V

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->d:Lcom/twitter/android/bb;

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->d:Lcom/twitter/android/bb;

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/UserQueryActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/bb;->a(JLjava/lang/String;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->d:Lcom/twitter/android/bb;

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/UserQueryActivity;->e:Lcom/twitter/android/client/e;

    invoke-virtual {v4}, Lcom/twitter/android/client/e;->a()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/bb;->b(JLjava/lang/String;J)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;IZ)V
    .locals 5

    const-wide/16 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/BaseFragmentActivity;->a(Landroid/os/Bundle;IZ)V

    new-instance v2, Lcom/twitter/android/ad;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/twitter/android/ad;-><init>(Lcom/twitter/android/UserQueryActivity;Lcom/twitter/android/cv;)V

    iput-object v2, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/ad;

    iget-object v2, p0, Lcom/twitter/android/UserQueryActivity;->e:Lcom/twitter/android/client/e;

    iget-object v3, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/ad;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/e;->a(Lcom/twitter/android/client/f;)V

    if-eqz p1, :cond_1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    const-string v3, "screen_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "twitter"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "user_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_2
    :goto_1
    const-string v3, "screen_name"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    iput-object v2, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public a(Lcom/twitter/android/api/c;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/twitter/android/api/c;->a:J

    iput-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    iget-object v0, p1, Lcom/twitter/android/api/c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/api/c;)V
    .locals 4

    iget-boolean v0, p0, Lcom/twitter/android/UserQueryActivity;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/UserQueryActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/twitter/android/UserQueryActivity;->a(Lcom/twitter/android/api/c;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/UserQueryActivity;->c:Z

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/e;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/UserQueryActivity;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/UserQueryActivity;->e:Lcom/twitter/android/client/e;

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->h:Lcom/twitter/android/ad;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/e;->b(Lcom/twitter/android/client/f;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_id"

    iget-wide v1, p0, Lcom/twitter/android/UserQueryActivity;->a:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "username"

    iget-object v1, p0, Lcom/twitter/android/UserQueryActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
