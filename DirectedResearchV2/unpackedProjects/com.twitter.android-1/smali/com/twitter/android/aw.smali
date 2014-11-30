.class final Lcom/twitter/android/aw;
.super Lcom/twitter/android/client/f;


# instance fields
.field private synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Lcom/twitter/android/client/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_2

    const/16 v0, 0x191

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/eq;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0, v2}, Lcom/twitter/android/bd;->a(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p7, :cond_1

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0}, Lcom/twitter/android/bd;->c()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/eq;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/eq;->a(I)V

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->g:Lcom/twitter/android/bd;

    invoke-virtual {v0, v2}, Lcom/twitter/android/bd;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;JII)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    if-lez p8, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_refresh"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->c:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->c:I

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b005e

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final d(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->f:Lcom/twitter/android/api/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v0, v0, Lcom/twitter/android/ProfileFragment;->b:J

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->i()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/Session;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ProfileFragment;->c(Ljava/lang/String;)Lcom/twitter/android/dy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->c:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ap;->a(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->c:I

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/aw;->a:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0061

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
