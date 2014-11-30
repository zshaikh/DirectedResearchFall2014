.class Lcom/dolphin/browser/ui/view/v;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/dolphin/browser/ui/view/u;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/u;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/v;->b:Lcom/dolphin/browser/ui/view/u;

    iput-object p2, p0, Lcom/dolphin/browser/ui/view/v;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/v;->b:Lcom/dolphin/browser/ui/view/u;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/u;->f:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/dolphin/browser/ui/view/v;->b:Lcom/dolphin/browser/ui/view/u;

    iget-object v1, v1, Lcom/dolphin/browser/ui/view/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/v;->b:Lcom/dolphin/browser/ui/view/u;

    iget-object v0, v0, Lcom/dolphin/browser/ui/view/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 394
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 395
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;

    if-eqz v2, :cond_0

    .line 396
    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/v;->a:Landroid/net/Uri;

    invoke-interface {v0, v2}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;->onGifLoaded(Landroid/net/Uri;)V

    goto :goto_0

    .line 399
    :cond_1
    return-void
.end method
