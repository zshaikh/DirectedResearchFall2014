.class Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private allowCachedRedirects:Z

.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/widget/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    iput-boolean p3, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/widget/ImageDownloader$CacheReadWorkItem;->allowCachedRedirects:Z

    #calls: Lcom/facebook/widget/ImageDownloader;->readFromCache(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    invoke-static {v0, v1, v2}, Lcom/facebook/widget/ImageDownloader;->access$100(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method
