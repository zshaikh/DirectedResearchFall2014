.class Lcom/gamesys/android/billing/google/util/IabHelper$3;
.super Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamesys/android/billing/google/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/gamesys/android/billing/google/util/IabResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

.field private final synthetic val$multiListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;

.field private final synthetic val$purchases:Ljava/util/List;

.field private final synthetic val$singleListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/google/util/IabHelper;Ljava/util/List;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

    iput-object p2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$singleListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$multiListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;

    .line 996
    invoke-direct {p0}, Lcom/gamesys/android/billing/common/fwk/multithread/AbstractCallableForAutoRetry;-><init>()V

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public backgroundOperationsOver(Ljava/lang/Object;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1021
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$singleListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;

    if-eqz v0, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$singleListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gamesys/android/billing/google/util/Purchase;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gamesys/android/billing/google/util/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/gamesys/android/billing/google/util/Purchase;Lcom/gamesys/android/billing/google/util/IabResult;)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$multiListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$multiListener:Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/gamesys/android/billing/google/util/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 1029
    :cond_1
    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    iput-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->internalResult:Ljava/lang/Object;

    .line 1015
    iget-object v2, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    return-object v2

    .line 1003
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gamesys/android/billing/google/util/Purchase;

    .line 1005
    .local v1, "purchase":Lcom/gamesys/android/billing/google/util/Purchase;
    :try_start_0
    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->this$0:Lcom/gamesys/android/billing/google/util/IabHelper;

    invoke-virtual {v3, v1}, Lcom/gamesys/android/billing/google/util/IabHelper;->consume(Lcom/gamesys/android/billing/google/util/Purchase;)V

    .line 1006
    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    new-instance v4, Lcom/gamesys/android/billing/google/util/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Successful consumption of sku "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gamesys/android/billing/google/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/gamesys/android/billing/google/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->error:Z
    :try_end_0
    .catch Lcom/gamesys/android/billing/google/util/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1008
    :catch_0
    move-exception v0

    .line 1009
    .local v0, "ex":Lcom/gamesys/android/billing/google/util/IabException;
    iget-object v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->results:Ljava/util/List;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/google/util/IabException;->getResult()Lcom/gamesys/android/billing/google/util/IabResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/gamesys/android/billing/google/util/IabHelper$3;->error:Z

    goto :goto_0
.end method
