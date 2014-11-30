.class Lcom/dolphin/browser/ui/view/x;
.super Lcom/dolphin/browser/util/f;
.source "RemoteImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/x;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 533
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/x;->c:Ljava/lang/ref/WeakReference;

    .line 534
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 538
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    .line 539
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/x;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/x;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 542
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 545
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 546
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 551
    :goto_0
    return-object v0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 528
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/x;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/x;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/x;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 558
    if-eqz p1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/x;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/support/v4/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    if-eqz v0, :cond_0

    .line 562
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/x;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 528
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/x;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
