.class Lcom/dolphin/browser/ui/view/t;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/dolphin/browser/ui/view/s;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/s;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iput-object p2, p0, Lcom/dolphin/browser/ui/view/t;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 462
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/s;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v1, v1, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/t;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/s;->e:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->c(Lcom/dolphin/browser/ui/view/RemoteImageLoader;)Landroid/support/v4/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v1, v1, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/t;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

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

    .line 468
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v2, v2, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/ui/view/t;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2, v3}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/s;->b:Ljava/util/ArrayList;

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

    .line 474
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 475
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/t;->b:Lcom/dolphin/browser/ui/view/s;

    iget-object v2, v2, Lcom/dolphin/browser/ui/view/s;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;->onImageLoadFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 479
    :cond_3
    return-void
.end method
