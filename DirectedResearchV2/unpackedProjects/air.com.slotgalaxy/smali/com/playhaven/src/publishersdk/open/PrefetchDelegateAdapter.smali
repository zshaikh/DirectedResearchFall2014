.class public Lcom/playhaven/src/publishersdk/open/PrefetchDelegateAdapter;
.super Ljava/lang/Object;
.source "PrefetchDelegateAdapter.java"

# interfaces
.implements Lv2/com/playhaven/listeners/PHPrefetchListener;


# instance fields
.field private delegate:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;


# direct methods
.method public constructor <init>(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;)V
    .locals 0
    .param p1, "delegate"    # Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/playhaven/src/publishersdk/open/PrefetchDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    .line 15
    return-void
.end method


# virtual methods
.method public onPrefetchFinished(Lv2/com/playhaven/requests/open/PHOpenRequest;)V
    .locals 1
    .param p1, "request"    # Lv2/com/playhaven/requests/open/PHOpenRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/open/PrefetchDelegateAdapter;->delegate:Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    check-cast p1, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    .end local p1    # "request":Lv2/com/playhaven/requests/open/PHOpenRequest;
    invoke-interface {v0, p1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;->prefetchFinished(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;)V

    .line 20
    return-void
.end method
