.class final Lcom/b/a/az;
.super Lcom/b/a/a;
.source "TargetAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a",
        "<",
        "Lcom/b/a/ay;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/b/a/ae;Lcom/b/a/ay;Lcom/b/a/ap;ZLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 23
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, v5

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/b/a/a;-><init>(Lcom/b/a/ae;Ljava/lang/Object;Lcom/b/a/ap;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/b/a/az;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ay;

    .line 42
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/b/a/az;->g:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/b/a/ay;->a(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 4

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Attempted to complete action with no result!\n%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/b/a/az;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/b/a/ay;

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/b/a/ay;->a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target callback must not recycle bitmap!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    return-void
.end method
