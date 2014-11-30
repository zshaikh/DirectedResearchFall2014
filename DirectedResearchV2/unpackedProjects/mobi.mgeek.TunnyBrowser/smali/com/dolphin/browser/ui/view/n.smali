.class Lcom/dolphin/browser/ui/view/n;
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
    .line 577
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/n;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 578
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/n;->c:Ljava/lang/ref/WeakReference;

    .line 579
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 583
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    const-string v1, "asset://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/n;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->d(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 587
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 588
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 590
    const/16 v1, 0xf0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-object v0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 595
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/n;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 600
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/n;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/n;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 602
    if-eqz p1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/n;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/support/v4/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    if-eqz v0, :cond_0

    .line 606
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/n;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 573
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/n;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
