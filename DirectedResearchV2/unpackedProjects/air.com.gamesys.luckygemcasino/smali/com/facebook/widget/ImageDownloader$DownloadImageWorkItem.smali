.class Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadImageWorkItem"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private key:Lcom/facebook/widget/ImageDownloader$RequestKey;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/widget/ImageDownloader$RequestKey;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Lcom/facebook/widget/ImageDownloader$RequestKey;

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p1, p0, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;->context:Landroid/content/Context;

    .line 319
    iput-object p2, p0, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;->key:Lcom/facebook/widget/ImageDownloader$RequestKey;

    iget-object v1, p0, Lcom/facebook/widget/ImageDownloader$DownloadImageWorkItem;->context:Landroid/content/Context;

    # invokes: Lcom/facebook/widget/ImageDownloader;->download(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/facebook/widget/ImageDownloader;->access$1(Lcom/facebook/widget/ImageDownloader$RequestKey;Landroid/content/Context;)V

    .line 325
    return-void
.end method
