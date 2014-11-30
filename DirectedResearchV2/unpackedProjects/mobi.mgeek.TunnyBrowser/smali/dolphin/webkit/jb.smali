.class Ldolphin/webkit/jb;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Ldolphin/webkit/kq;


# instance fields
.field final synthetic a:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 8282
    iput-object p1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 8857
    invoke-virtual {p0}, Ldolphin/webkit/jb;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/h;II)V
    .locals 2

    .prologue
    .line 8924
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-boolean v0, v0, Ldolphin/webkit/WebViewClassic;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/h;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8925
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->T()V

    .line 8926
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldolphin/webkit/WebViewClassic;->k:Z

    .line 8928
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, p1, p2, p3}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/support/h;II)V

    .line 8929
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 8958
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ag(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 8959
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, p1}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;Z)Z

    .line 8960
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    .line 8962
    :cond_0
    return-void
.end method

.method public a(Landroid/support/h;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 8885
    invoke-virtual {p1}, Landroid/support/h;->g()F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/ll;->a()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8886
    invoke-virtual {p1}, Landroid/support/h;->f()F

    move-result v1

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/ll;->a()F

    move-result v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 8888
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->aa(Ldolphin/webkit/WebViewClassic;)[Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8899
    :cond_0
    :goto_0
    return v0

    .line 8890
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->aa(Ldolphin/webkit/WebViewClassic;)[Landroid/graphics/Rect;

    move-result-object v4

    array-length v5, v4

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 8891
    iget v7, v6, Landroid/graphics/Rect;->left:I

    if-lt v3, v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->right:I

    if-gt v3, v7, :cond_2

    iget v7, v6, Landroid/graphics/Rect;->top:I

    if-lt v2, v7, :cond_2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v6, :cond_2

    .line 8892
    const/4 v0, 0x1

    .line 8893
    goto :goto_0

    .line 8890
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 8862
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ll;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ll;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8869
    :cond_0
    :goto_0
    return v0

    .line 8864
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v1

    .line 8865
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/ll;->f()F

    move-result v2

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/ll;->d()F

    move-result v3

    div-float/2addr v2, v3

    .line 8866
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ldolphin/webkit/WebSettings;->getEnableDoubleTapInMobileSite()Z

    move-result v1

    if-nez v1, :cond_2

    const/high16 v1, 0x40000000

    cmpg-float v1, v2, v1

    if-lez v1, :cond_0

    .line 8869
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/support/h;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 8938
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8953
    :cond_0
    :goto_0
    return v0

    .line 8941
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->j(Ldolphin/webkit/WebViewClassic;)V

    .line 8942
    invoke-virtual {p1}, Landroid/support/h;->g()F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->p()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->i()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 8943
    invoke-virtual {p1}, Landroid/support/h;->f()F

    move-result v2

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v3}, Ldolphin/webkit/WebViewClassic;->h()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8945
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->S(Ldolphin/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8946
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->k(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    goto :goto_0

    .line 8949
    :cond_2
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->ae(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->af(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8874
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ll;->o()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ll;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8880
    :cond_0
    :goto_0
    return v0

    .line 8876
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/ll;->f()F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/ll;->d()F

    move-result v2

    div-float/2addr v1, v2

    .line 8877
    const/high16 v2, 0x40000000

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    .line 8880
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 8904
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->ab(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 8909
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8919
    :cond_0
    :goto_0
    return v0

    .line 8913
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getScale()F

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/ll;->d()F

    move-result v2

    sub-float/2addr v1, v2

    const v2, 0x3ba3d70a

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getScale()F

    move-result v1

    const/high16 v2, 0x3f400000

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 8915
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->ac(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->ad(Ldolphin/webkit/WebViewClassic;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Ldolphin/webkit/ll;->c(FF)V

    .line 8916
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 8933
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 8966
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)V

    .line 8967
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8300
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8853
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 8305
    :cond_1
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->s(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_0

    .line 8310
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 8850
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 8312
    :sswitch_1
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->r(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kf;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "username"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "password"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ldolphin/webkit/kf;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8316
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8320
    :sswitch_2
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->r(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kf;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v6}, Ldolphin/webkit/kf;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 8325
    :sswitch_3
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->t(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->u(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    if-nez v0, :cond_3

    .line 8326
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Z)Z

    goto :goto_0

    .line 8329
    :cond_3
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->v(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    if-nez v0, :cond_4

    .line 8330
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->t(Ldolphin/webkit/WebViewClassic;)I

    move-result v3

    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v4}, Ldolphin/webkit/WebViewClassic;->u(Ldolphin/webkit/WebViewClassic;)I

    move-result v4

    invoke-static {v0, v3, v4, v1, v2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IIZI)Z

    .line 8335
    :goto_1
    const/16 v0, 0xb

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/webkit/jb;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8332
    :cond_4
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->w(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->t(Ldolphin/webkit/WebViewClassic;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->w(Ldolphin/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->u(Ldolphin/webkit/WebViewClassic;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;II)V

    goto :goto_1

    .line 8342
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v1, :cond_5

    .line 8345
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8347
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8352
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Point;

    .line 8353
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v5, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_2

    .line 8357
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/kc;

    .line 8359
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v2

    iget v3, v0, Ldolphin/webkit/kc;->f:I

    invoke-virtual {v1, v0, v2, v3}, Ldolphin/webkit/ll;->a(Ldolphin/webkit/kc;II)V

    goto/16 :goto_0

    .line 8363
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 8364
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/ll;->b(F)V

    goto/16 :goto_0

    .line 8368
    :sswitch_7
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->y(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewProvider$GameModeStatus;

    move-result-object v0

    sget-object v2, Ldolphin/webkit/WebViewProvider$GameModeStatus;->POTENTIAL_GAME_MODE:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    if-ne v0, v2, :cond_0

    .line 8369
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    sget-object v2, Ldolphin/webkit/WebViewProvider$GameModeStatus;->PENDING_DECISION:Ldolphin/webkit/WebViewProvider$GameModeStatus;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewProvider$GameModeStatus;)Ldolphin/webkit/WebViewProvider$GameModeStatus;

    .line 8371
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 8372
    if-eqz v0, :cond_7

    .line 8373
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->z(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/WebChromeClient;->showGameModeAlertDialog(Ldolphin/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 8376
    :cond_7
    const-string v0, "webview"

    const-string v1, "WebChromeClient is null when handle NOTIFY_GAME_PAGE_DETECTED."

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8382
    :sswitch_8
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 8383
    if-eqz v0, :cond_8

    .line 8384
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->z(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebChromeClient;->showDownloadFlashPluginDialog(Ldolphin/webkit/WebView;)V

    goto/16 :goto_0

    .line 8386
    :cond_8
    const-string v0, "webview"

    const-string v1, "WebChromeClient is null when handle NOTIFY_NO_FLASH_PLUGIN."

    invoke-static {v0, v1}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8392
    :sswitch_9
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->F()Ldolphin/webkit/WebChromeClient;

    move-result-object v0

    .line 8393
    if-eqz v0, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 8394
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/WebChromeClient;->setFullScreen(Ldolphin/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 8399
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 8400
    const-string v1, "WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TOGGLE_LONG_PRESS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8401
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 8408
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jp;

    .line 8409
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v2

    iget-object v2, v2, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    monitor-enter v2

    .line 8410
    :try_start_0
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v3

    iget-object v3, v3, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    iget v4, v0, Ldolphin/webkit/jp;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 8411
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v3

    iget-object v3, v3, Ldolphin/webkit/WebViewCore;->mBaseLayerMessages:Ljava/util/LinkedList;

    iget v4, v0, Ldolphin/webkit/jp;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 8412
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8413
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2, v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/jp;Z)V

    goto/16 :goto_0

    .line 8412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 8418
    :sswitch_c
    const/4 v0, 0x3

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/webkit/BrowserFrame;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8420
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v4}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/a;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v2, v3, v0, v4}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 8426
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 8429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v0, v3, :cond_c

    .line 8430
    invoke-static {}, Ldolphin/webkit/WebKitResources;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 8431
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 8432
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 8441
    :goto_3
    new-instance v0, Landroid/support/g;

    invoke-direct {v0}, Landroid/support/g;-><init>()V

    .line 8442
    invoke-virtual {v0}, Landroid/support/g;->a()V

    .line 8443
    invoke-virtual {v0}, Landroid/support/g;->b()J

    move-result-wide v3

    .line 8444
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v5, v2, v3, v4}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IIJ)V

    .line 8447
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->A(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/jp;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 8448
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->A(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/jp;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/jp;Z)V

    .line 8449
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v6}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/jp;)Ldolphin/webkit/jp;

    .line 8451
    :cond_a
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->B(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8452
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->C(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(IZ)V

    .line 8454
    :cond_b
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    new-instance v1, Ldolphin/webkit/kl;

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/WebViewCore;->getInputDispatcherCallbacks()Ldolphin/webkit/ks;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ldolphin/webkit/kl;-><init>(Ldolphin/webkit/kq;Ldolphin/webkit/ks;)V

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/kl;)Ldolphin/webkit/kl;

    goto/16 :goto_0

    .line 8435
    :cond_c
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 8437
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 8438
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_3

    .line 8460
    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->D(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8461
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8462
    if-nez v0, :cond_d

    .line 8463
    const-string v0, ""

    .line 8465
    :cond_d
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 8467
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    invoke-virtual {v1, v0}, Ldolphin/webkit/ji;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 8473
    :sswitch_e
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8474
    invoke-virtual {p0}, Ldolphin/webkit/jb;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 8477
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 8478
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldolphin/webkit/HTML5VideoViewProxy;->c(I)V

    goto/16 :goto_0

    .line 8483
    :sswitch_f
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/kb;

    invoke-static {v1, v2, v3, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IILdolphin/webkit/kb;)V

    goto/16 :goto_0

    .line 8487
    :sswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 8488
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 8489
    if-eqz v0, :cond_0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8490
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 8494
    :sswitch_11
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8497
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    .line 8498
    if-nez v0, :cond_e

    .line 8499
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    goto/16 :goto_0

    .line 8503
    :cond_e
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2, v3, v4, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IIII)V

    goto/16 :goto_0

    .line 8508
    :sswitch_13
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8509
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 8511
    new-instance v1, Ldolphin/webkit/ho;

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    sget v3, Ldolphin/webkit/R$layout;->dw_web_text_view_dropdown:I

    invoke-direct {v1, v2, v3, v0}, Ldolphin/webkit/ho;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 8515
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Ldolphin/webkit/d;->a(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 8522
    :sswitch_14
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;Z)Z

    .line 8523
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->d(Ldolphin/webkit/WebViewClassic;Z)Z

    .line 8524
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    goto/16 :goto_0

    .line 8528
    :sswitch_15
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_f

    :goto_4
    invoke-virtual {v0, v1}, Ldolphin/webkit/kl;->c(Z)V

    goto/16 :goto_0

    :cond_f
    move v1, v2

    goto :goto_4

    .line 8532
    :sswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_10

    .line 8533
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8535
    :cond_10
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 8540
    :sswitch_17
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v4}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;I)I

    .line 8541
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    goto/16 :goto_0

    .line 8545
    :sswitch_18
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_11

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_11
    move v1, v2

    goto :goto_5

    .line 8549
    :sswitch_19
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 8551
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 8552
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8553
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v1, v0, v3}, Ldolphin/webkit/HTML5VideoViewProxy;->a(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 8558
    :sswitch_1a
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8559
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->E(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/HTML5VideoViewProxy;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/HTML5VideoViewProxy;->m()V

    goto/16 :goto_0

    .line 8564
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 8565
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 8566
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 8568
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->G(Ldolphin/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 8569
    const-string v3, "webview"

    const-string v4, "Should not have another full screen."

    invoke-static {v3, v4}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->H(Ldolphin/webkit/WebViewClassic;)V

    .line 8572
    :cond_12
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    new-instance v4, Ldolphin/webkit/fp;

    iget-object v5, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-direct {v4, v5, v1, v2}, Ldolphin/webkit/fp;-><init>(Ldolphin/webkit/WebViewClassic;II)V

    iput-object v4, v3, Ldolphin/webkit/WebViewClassic;->n:Ldolphin/webkit/fp;

    .line 8573
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->n:Ldolphin/webkit/fp;

    invoke-virtual {v1, v0}, Ldolphin/webkit/fp;->a(Landroid/view/View;)V

    .line 8574
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->n:Ldolphin/webkit/fp;

    invoke-virtual {v0}, Ldolphin/webkit/fp;->a()V

    .line 8575
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->m()V

    goto/16 :goto_0

    .line 8580
    :sswitch_1c
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->H(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8584
    :sswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewCore$ShowRectData;

    .line 8585
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v3, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v1, v3}, Ldolphin/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v1

    .line 8586
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v4, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v3

    .line 8587
    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v5, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v4, v5}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v4

    .line 8588
    iget-object v5, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v5}, Ldolphin/webkit/WebViewClassic;->getViewWidth()I

    move-result v5

    .line 8589
    int-to-float v1, v1

    iget v6, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    int-to-float v3, v3

    mul-float/2addr v3, v6

    add-float/2addr v1, v3

    iget v3, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    int-to-float v6, v5

    mul-float/2addr v3, v6

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 8600
    add-int/2addr v1, v5

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 8602
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v4, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v3, v4}, Ldolphin/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v3

    .line 8603
    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v5, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v4, v5}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v4

    .line 8604
    iget-object v5, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v6, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v5, v6}, Ldolphin/webkit/WebViewClassic;->i(I)I

    move-result v5

    .line 8605
    iget-object v6, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v6}, Ldolphin/webkit/WebViewClassic;->getViewHeight()I

    move-result v6

    .line 8606
    int-to-float v3, v3

    iget v7, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    int-to-float v4, v4

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    iget v0, v0, Ldolphin/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    int-to-float v4, v6

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    float-to-int v0, v0

    .line 8617
    add-int/2addr v0, v6

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, v6

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8621
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->l(Ldolphin/webkit/WebViewClassic;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8622
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0

    .line 8627
    :sswitch_1e
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ldolphin/webkit/WebViewClassic;->a(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 8631
    :sswitch_1f
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;I)I

    .line 8632
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;I)I

    goto/16 :goto_0

    .line 8639
    :sswitch_20
    invoke-static {}, Ldolphin/webkit/WebViewClassic;->nativeResetGlobalGLStates()V

    goto/16 :goto_0

    .line 8643
    :sswitch_21
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v4}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;)I

    move-result v4

    if-ne v0, v4, :cond_14

    move v0, v1

    :goto_6
    iput-boolean v0, v3, Ldolphin/webkit/WebViewClassic;->f:Z

    .line 8644
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-boolean v0, v0, Ldolphin/webkit/WebViewClassic;->f:Z

    if-nez v0, :cond_13

    .line 8645
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/d;->a()V

    .line 8649
    :cond_13
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;

    .line 8650
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    .line 8651
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3, v0}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)V

    .line 8654
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v3

    if-nez v3, :cond_15

    .line 8655
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)V

    .line 8656
    const-string v0, "webview"

    const-string v1, "mInputDispatcher is null, HIT_TEST_RESULT happens before webviewcore ready."

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    move v0, v2

    .line 8643
    goto :goto_6

    .line 8660
    :cond_15
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldolphin/webkit/kl;->a(Z)V

    .line 8662
    if-eqz v0, :cond_17

    .line 8663
    iget-object v3, v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;->mTouchInfo:Ldolphin/webkit/WebViewClassic$TouchInfo;

    .line 8664
    iget-object v4, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v4}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldolphin/webkit/kl;->a(Ldolphin/webkit/WebViewClassic$TouchInfo;)V

    .line 8665
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/kl;->c()Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->F(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/kl;

    move-result-object v3

    invoke-virtual {v3}, Ldolphin/webkit/kl;->d()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 8666
    :cond_16
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->I(Ldolphin/webkit/WebViewClassic;)V

    .line 8669
    :cond_17
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3, v0}, Ldolphin/webkit/WebViewClassic;->c(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)V

    .line 8671
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->J(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->K(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8672
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->x(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/ll;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->L(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->M(Ldolphin/webkit/WebViewClassic;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Ldolphin/webkit/ll;->c(FF)V

    .line 8673
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 8679
    :sswitch_23
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Rect;

    check-cast v0, [Landroid/graphics/Rect;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;[Landroid/graphics/Rect;)[Landroid/graphics/Rect;

    goto/16 :goto_0

    .line 8684
    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewCore$WebKitHitTest;

    .line 8685
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->d(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebViewCore$WebKitHitTest;)Ldolphin/webkit/WebViewCore$WebKitHitTest;

    .line 8686
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->J(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->K(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 8688
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->w()V

    .line 8689
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 8694
    :sswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/je;

    .line 8695
    iget-object v1, v0, Ldolphin/webkit/je;->c:Ldolphin/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 8696
    iget-object v1, v0, Ldolphin/webkit/je;->c:Ldolphin/webkit/ValueCallback;

    iget-object v0, v0, Ldolphin/webkit/je;->d:Ljava/lang/String;

    invoke-interface {v1, v0}, Ldolphin/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8701
    :sswitch_26
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/jn;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/jn;)Ldolphin/webkit/jn;

    .line 8702
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8703
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->q(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/jn;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/jn;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/ji;->a(I)V

    .line 8704
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->q(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/jn;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/jn;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/webkit/d;->a(I)V

    goto/16 :goto_0

    .line 8709
    :sswitch_27
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8711
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->i(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/d;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ho;

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->h(Ldolphin/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    sget v4, Ldolphin/webkit/R$layout;->dw_web_text_view_dropdown:I

    invoke-direct {v2, v3, v4, v0}, Ldolphin/webkit/ho;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Ldolphin/webkit/d;->a(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 8719
    :sswitch_28
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8723
    :sswitch_29
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v0, v0, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    if-eqz v0, :cond_0

    .line 8724
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;

    .line 8725
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1, v2}, Ldolphin/webkit/WebViewClassic;->d(Ldolphin/webkit/WebViewClassic;I)I

    .line 8726
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    invoke-static {v1, v2}, Ldolphin/webkit/WebViewClassic;->e(Ldolphin/webkit/WebViewClassic;I)I

    .line 8727
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    invoke-virtual {v1, v0}, Ldolphin/webkit/ji;->a(Ldolphin/webkit/WebViewCore$TextFieldInitData;)V

    .line 8728
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->a:Ldolphin/webkit/ji;

    iget-object v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldolphin/webkit/ji;->a(Ljava/lang/CharSequence;)V

    .line 8729
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-static {v1, v2}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    .line 8730
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mType:I

    invoke-static {v1, v2}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;I)I

    .line 8731
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget-object v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8732
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v2, v1, Ldolphin/webkit/WebViewClassic;->d:I

    .line 8733
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mCustomSuggestions:Ljava/util/ArrayList;

    iput-object v2, v1, Ldolphin/webkit/WebViewClassic;->e:Ljava/util/ArrayList;

    .line 8734
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->C(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v2, v2, Ldolphin/webkit/WebViewClassic;->d:I

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v3, v3, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    invoke-static {v1, v2, v3}, Ldolphin/webkit/WebViewClassic;->a(IILandroid/graphics/Rect;)V

    .line 8736
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v1, Ldolphin/webkit/WebViewClassic;->c:Landroid/graphics/Rect;

    iget-object v0, v0, Ldolphin/webkit/WebViewCore$TextFieldInitData;->mClientRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8737
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->N(Ldolphin/webkit/WebViewClassic;)V

    .line 8738
    const-string v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init edit field text is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->O(Ldolphin/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8743
    :sswitch_2a
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 8744
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 8745
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 8746
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v4, v1, v0

    .line 8747
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ldolphin/webkit/WebViewClassic;->a(IILjava/lang/String;II)V

    .line 8749
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 8754
    :sswitch_2b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/js;

    .line 8755
    if-nez v0, :cond_18

    .line 8756
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->P(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8757
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->P(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/bx;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v1}, Ldolphin/webkit/bx;->a(IIZ)V

    goto/16 :goto_0

    .line 8759
    :cond_18
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->Q(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/js;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 8761
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->Q(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/js;

    move-result-object v3

    monitor-enter v3

    .line 8762
    :try_start_2
    iget v4, v0, Ldolphin/webkit/js;->b:I

    .line 8763
    iget v0, v0, Ldolphin/webkit/js;->c:I

    .line 8764
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8765
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->P(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/bx;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 8766
    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v3}, Ldolphin/webkit/WebViewClassic;->P(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/bx;

    move-result-object v3

    invoke-virtual {v3, v0, v4, v2}, Ldolphin/webkit/bx;->a(IIZ)V

    .line 8768
    :cond_19
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->R(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView$FindListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8769
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v2}, Ldolphin/webkit/WebViewClassic;->R(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView$FindListener;

    move-result-object v2

    invoke-interface {v2, v0, v4, v1}, Ldolphin/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_0

    .line 8764
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 8776
    :sswitch_2c
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->S(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8777
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 8782
    :sswitch_2d
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    const/16 v1, 0xdf

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v2, v6}, Ldolphin/webkit/WebViewClassic;->a(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 8786
    :sswitch_2e
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->N(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8790
    :sswitch_2f
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->m(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0xc0

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v2}, Ldolphin/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 8795
    :sswitch_30
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->b(Ldolphin/webkit/WebViewClassic;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 8796
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v0, Ldolphin/webkit/WebViewClassic;->c:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 8801
    :sswitch_31
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->f(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-boolean v0, v0, Ldolphin/webkit/WebViewClassic;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->S(Ldolphin/webkit/WebViewClassic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8802
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->T(Ldolphin/webkit/WebViewClassic;)Z

    .line 8803
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->U(Ldolphin/webkit/WebViewClassic;)V

    .line 8804
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->V(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8809
    :sswitch_32
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v1, v0, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8810
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->C(Ldolphin/webkit/WebViewClassic;)I

    move-result v0

    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v1, v1, Ldolphin/webkit/WebViewClassic;->d:I

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, v2, Ldolphin/webkit/WebViewClassic;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2}, Ldolphin/webkit/WebViewClassic;->a(IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 8815
    :sswitch_33
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->W(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8819
    :sswitch_34
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->X(Ldolphin/webkit/WebViewClassic;)V

    goto/16 :goto_0

    .line 8823
    :sswitch_35
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->w()V

    .line 8824
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v2}, Ldolphin/webkit/WebViewClassic;->g(Ldolphin/webkit/WebViewClassic;I)I

    goto/16 :goto_0

    .line 8828
    :sswitch_36
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->Y(Ldolphin/webkit/WebViewClassic;)[B

    move-result-object v1

    monitor-enter v1

    .line 8829
    :try_start_4
    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v3, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v0, v6}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8830
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0}, Ldolphin/webkit/WebViewClassic;->Y(Ldolphin/webkit/WebViewClassic;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 8831
    monitor-exit v1

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 8836
    :sswitch_37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldolphin/webkit/WebView$PageInformation;

    .line 8837
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->Z(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView$GetPageInformationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8838
    iget-object v1, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v1}, Ldolphin/webkit/WebViewClassic;->Z(Ldolphin/webkit/WebViewClassic;)Ldolphin/webkit/WebView$GetPageInformationResultCallback;

    move-result-object v1

    iget-object v2, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v2}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebView$GetPageInformationResultCallback;->onPageInformationGot(Ldolphin/webkit/WebView;Ldolphin/webkit/WebView$PageInformation;)V

    .line 8839
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    invoke-static {v0, v6}, Ldolphin/webkit/WebViewClassic;->a(Ldolphin/webkit/WebViewClassic;Ldolphin/webkit/WebView$GetPageInformationResultCallback;)Ldolphin/webkit/WebView$GetPageInformationResultCallback;

    goto/16 :goto_0

    .line 8846
    :sswitch_38
    iget-object v0, p0, Ldolphin/webkit/jb;->a:Ldolphin/webkit/WebViewClassic;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1a

    :goto_7
    invoke-static {v0, v1}, Ldolphin/webkit/WebViewClassic;->g(Ldolphin/webkit/WebViewClassic;Z)Z

    goto/16 :goto_0

    :cond_1a
    move v1, v2

    goto :goto_7

    .line 8310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_13
        0x8 -> :sswitch_17
        0xb -> :sswitch_3
        0x65 -> :sswitch_4
        0x69 -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_5
        0x6e -> :sswitch_10
        0x6f -> :sswitch_11
        0x70 -> :sswitch_f
        0x71 -> :sswitch_1d
        0x72 -> :sswitch_14
        0x74 -> :sswitch_15
        0x75 -> :sswitch_12
        0x76 -> :sswitch_16
        0x78 -> :sswitch_1b
        0x79 -> :sswitch_1c
        0x7e -> :sswitch_2b
        0x7f -> :sswitch_1e
        0x81 -> :sswitch_1f
        0x82 -> :sswitch_0
        0x83 -> :sswitch_22
        0x84 -> :sswitch_25
        0x85 -> :sswitch_26
        0x86 -> :sswitch_27
        0x88 -> :sswitch_18
        0x89 -> :sswitch_19
        0x8b -> :sswitch_6
        0x8c -> :sswitch_1a
        0x8d -> :sswitch_28
        0x8e -> :sswitch_29
        0x8f -> :sswitch_2a
        0x90 -> :sswitch_2c
        0x91 -> :sswitch_2d
        0x92 -> :sswitch_2e
        0x93 -> :sswitch_21
        0x94 -> :sswitch_2f
        0x95 -> :sswitch_33
        0x96 -> :sswitch_30
        0x97 -> :sswitch_31
        0x98 -> :sswitch_32
        0x99 -> :sswitch_7
        0x9a -> :sswitch_9
        0x9b -> :sswitch_e
        0x9c -> :sswitch_a
        0x9d -> :sswitch_20
        0x9e -> :sswitch_36
        0x9f -> :sswitch_35
        0xa0 -> :sswitch_8
        0xa1 -> :sswitch_24
        0xa2 -> :sswitch_37
        0xa3 -> :sswitch_23
        0xa4 -> :sswitch_38
        0xa5 -> :sswitch_34
    .end sparse-switch
.end method
