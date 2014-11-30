.class Lcom/dolphin/browser/ui/view/m;
.super Ljava/lang/Object;
.source "RemoteImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/dolphin/browser/ui/view/RemoteImageLoader;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/RemoteImageLoader;Ljava/util/List;JJ)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/m;->d:Lcom/dolphin/browser/ui/view/RemoteImageLoader;

    iput-object p2, p0, Lcom/dolphin/browser/ui/view/m;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/dolphin/browser/ui/view/m;->b:J

    iput-wide p5, p0, Lcom/dolphin/browser/ui/view/m;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 873
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/m;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 874
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$Callback;

    .line 875
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;

    if-eqz v2, :cond_0

    .line 876
    check-cast v0, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;

    iget-wide v2, p0, Lcom/dolphin/browser/ui/view/m;->b:J

    iget-wide v4, p0, Lcom/dolphin/browser/ui/view/m;->c:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/dolphin/browser/ui/view/RemoteImageLoader$LargeImageCallback;->onDownloadProgressChanged(JJ)V

    goto :goto_0

    .line 879
    :cond_1
    return-void
.end method
