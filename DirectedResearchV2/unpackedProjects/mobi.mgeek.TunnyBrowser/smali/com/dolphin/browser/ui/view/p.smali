.class Lcom/dolphin/browser/ui/view/p;
.super Lcom/dolphin/browser/util/f;
.source "RemoteImageLoader.java"

# interfaces
.implements Lcom/dolphin/browser/ui/view/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/dolphin/browser/ui/view/q;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Landroid/content/Context;Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 2

    .prologue
    .line 621
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/p;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/ui/view/p;->b:Ljava/util/ArrayList;

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/p;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    iput-object p2, p0, Lcom/dolphin/browser/ui/view/p;->d:Landroid/content/Context;

    .line 625
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 634
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 635
    iput-object v1, p0, Lcom/dolphin/browser/ui/view/p;->c:Ljava/lang/String;

    .line 636
    const-string v2, "file://android_assets/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    const-string v2, "file://android_assets/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 639
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/p;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 641
    :try_start_0
    iget-object v3, p0, Lcom/dolphin/browser/ui/view/p;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v3, v2, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->a(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 655
    :goto_0
    return-object v0

    .line 648
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/p;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v1

    .line 652
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 653
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0

    .line 649
    :catch_1
    move-exception v1

    goto :goto_0

    .line 642
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 616
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/p;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/p;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/p;->b:Ljava/util/ArrayList;

    .line 662
    if-eqz p1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/dolphin/browser/ui/view/p;->a:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/support/v4/b/f;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 666
    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 668
    if-eqz v0, :cond_0

    .line 669
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/p;->c:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 675
    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 677
    if-eqz v0, :cond_2

    .line 678
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/p;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 683
    :cond_3
    return-void
.end method

.method public a(Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;)V
    .locals 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/p;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 616
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/ui/view/p;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
