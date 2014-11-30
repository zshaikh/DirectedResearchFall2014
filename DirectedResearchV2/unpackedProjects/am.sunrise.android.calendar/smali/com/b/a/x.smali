.class Lcom/b/a/x;
.super Lcom/b/a/a;
.source "ImageViewAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/a",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field j:Lcom/b/a/j;


# direct methods
.method constructor <init>(Lcom/b/a/ae;Landroid/widget/ImageView;Lcom/b/a/ap;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/b/a/j;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p8}, Lcom/b/a/a;-><init>(Lcom/b/a/ae;Ljava/lang/Object;Lcom/b/a/ap;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 30
    iput-object p9, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    .line 31
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/b/a/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 55
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget v1, p0, Lcom/b/a/x;->f:I

    if-eqz v1, :cond_3

    .line 59
    iget v1, p0, Lcom/b/a/x;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    invoke-interface {v0}, Lcom/b/a/j;->b()V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/b/a/x;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/b/a/x;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 6

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
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

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/b/a/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    if-nez v0, :cond_2

    .line 51
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/b/a/x;->a:Lcom/b/a/ae;

    iget-object v1, v1, Lcom/b/a/ae;->c:Landroid/content/Context;

    .line 45
    iget-object v2, p0, Lcom/b/a/x;->a:Lcom/b/a/ae;

    iget-boolean v5, v2, Lcom/b/a/ae;->j:Z

    .line 46
    iget-boolean v4, p0, Lcom/b/a/x;->e:Z

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/b/a/an;->a(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/b/a/ak;ZZ)V

    .line 48
    iget-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    invoke-interface {v0}, Lcom/b/a/j;->a()V

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/b/a/a;->b()V

    .line 71
    iget-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/x;->j:Lcom/b/a/j;

    .line 74
    :cond_0
    return-void
.end method
