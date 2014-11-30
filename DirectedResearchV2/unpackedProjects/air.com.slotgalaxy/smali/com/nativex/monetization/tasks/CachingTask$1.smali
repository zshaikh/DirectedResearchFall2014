.class Lcom/nativex/monetization/tasks/CachingTask$1;
.super Ljava/lang/Object;
.source "CachingTask.java"

# interfaces
.implements Lcom/nativex/monetization/listeners/OnGetCacheDownloadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/tasks/CachingTask;->downloadOfferCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/tasks/CachingTask;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/tasks/CachingTask;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nativex/monetization/tasks/CachingTask$1;->this$0:Lcom/nativex/monetization/tasks/CachingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadComplete(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    .locals 1
    .param p1, "cacheResponseData"    # Lcom/nativex/monetization/business/GetOfferCacheResponseData;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/nativex/monetization/tasks/CachingTask$1;->this$0:Lcom/nativex/monetization/tasks/CachingTask;

    # invokes: Lcom/nativex/monetization/tasks/CachingTask;->executeCachingAlgorithm(Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V
    invoke-static {v0, p1}, Lcom/nativex/monetization/tasks/CachingTask;->access$000(Lcom/nativex/monetization/tasks/CachingTask;Lcom/nativex/monetization/business/GetOfferCacheResponseData;)V

    .line 42
    :cond_0
    return-void
.end method
