.class Lcom/facebook/widget/GraphObjectPagingLoader;
.super Landroid/support/v4/content/Loader;
.source "GraphObjectPagingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;,
        Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<",
        "Lcom/facebook/widget/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private appendResults:Z

.field private currentRequest:Lcom/facebook/Request;

.field private cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loading:Z

.field private nextRequest:Lcom/facebook/Request;

.field private onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

.field private originalRequest:Lcom/facebook/Request;

.field private skipRoundtripIfCached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    .local p2, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    .line 41
    iput-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 50
    iput-object p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    .line 51
    return-void
.end method

.method static synthetic access$1(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V

    return-void
.end method

.method private addResults(Lcom/facebook/Response;)V
    .locals 9
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 196
    iget-object v7, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    if-nez v7, :cond_4

    :cond_0
    new-instance v0, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-direct {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>()V

    .line 199
    .local v0, "cursorToModify":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    :goto_0
    const-class v7, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    invoke-virtual {p1, v7}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v4

    check-cast v4, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;

    .line 200
    .local v4, "result":Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;, "Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;"
    invoke-virtual {p1}, Lcom/facebook/Response;->getIsFromCache()Z

    move-result v2

    .line 202
    .local v2, "fromCache":Z
    invoke-interface {v4}, Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    invoke-interface {v7, v8}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v1

    .line 203
    .local v1, "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<TT;>;"
    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->size()I

    move-result v7

    if-lez v7, :cond_5

    move v3, v5

    .line 205
    .local v3, "haveData":Z
    :goto_1
    if-eqz v3, :cond_1

    .line 206
    sget-object v7, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    invoke-virtual {p1, v7}, Lcom/facebook/Response;->getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;

    move-result-object v7

    iput-object v7, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->addGraphObjects(Ljava/util/Collection;Z)V

    .line 209
    invoke-virtual {v0, v5}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    .line 212
    :cond_1
    if-nez v3, :cond_2

    .line 213
    invoke-virtual {v0, v6}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    .line 214
    invoke-virtual {v0, v2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->setFromCache(Z)V

    .line 216
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 221
    :cond_2
    if-nez v2, :cond_3

    .line 222
    iput-boolean v6, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    .line 225
    :cond_3
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 226
    return-void

    .line 197
    .end local v0    # "cursorToModify":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .end local v1    # "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<TT;>;"
    .end local v2    # "fromCache":Z
    .end local v3    # "haveData":Z
    .end local v4    # "result":Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;, "Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;"
    :cond_4
    new-instance v0, Lcom/facebook/widget/SimpleGraphObjectCursor;

    iget-object v7, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-direct {v0, v7}, Lcom/facebook/widget/SimpleGraphObjectCursor;-><init>(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    goto :goto_0

    .restart local v0    # "cursorToModify":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    .restart local v1    # "data":Lcom/facebook/model/GraphObjectList;, "Lcom/facebook/model/GraphObjectList<TT;>;"
    .restart local v2    # "fromCache":Z
    .restart local v4    # "result":Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;, "Lcom/facebook/widget/GraphObjectPagingLoader$PagedResults;"
    :cond_5
    move v3, v6

    .line 203
    goto :goto_1
.end method

.method private putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;
    .locals 4
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 163
    new-instance v0, Lcom/facebook/internal/CacheableRequestBatch;

    new-array v3, v2, [Lcom/facebook/Request;

    aput-object p1, v3, v1

    invoke-direct {v0, v3}, Lcom/facebook/internal/CacheableRequestBatch;-><init>([Lcom/facebook/Request;)V

    .line 165
    .local v0, "batch":Lcom/facebook/internal/CacheableRequestBatch;
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/internal/CacheableRequestBatch;->setForceRoundTrip(Z)V

    .line 166
    return-object v0

    :cond_0
    move v1, v2

    .line 165
    goto :goto_0
.end method

.method private requestCompleted(Lcom/facebook/Response;)V
    .locals 5
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p1}, Lcom/facebook/Response;->getRequest()Lcom/facebook/Request;

    move-result-object v1

    .line 171
    .local v1, "request":Lcom/facebook/Request;
    iget-object v4, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    if-eq v1, v4, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 176
    iput-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 178
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    .line 179
    .local v2, "requestError":Lcom/facebook/FacebookRequestError;
    if-nez v2, :cond_3

    move-object v0, v3

    .line 180
    .local v0, "exception":Lcom/facebook/FacebookException;
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Lcom/facebook/FacebookException;

    .end local v0    # "exception":Lcom/facebook/FacebookException;
    const-string v4, "GraphObjectPagingLoader received neither a result nor an error."

    invoke-direct {v0, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 184
    .restart local v0    # "exception":Lcom/facebook/FacebookException;
    :cond_2
    if-eqz v0, :cond_4

    .line 185
    iput-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 187
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    invoke-interface {v3, v0, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lcom/facebook/widget/GraphObjectPagingLoader;)V

    goto :goto_0

    .line 179
    .end local v0    # "exception":Lcom/facebook/FacebookException;
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    goto :goto_1

    .line 191
    .restart local v0    # "exception":Lcom/facebook/FacebookException;
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->addResults(Lcom/facebook/Response;)V

    goto :goto_0
.end method

.method private startLoading(Lcom/facebook/Request;ZJ)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z
    .param p3, "afterDelay"    # J

    .prologue
    .line 132
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iput-boolean p2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    .line 133
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    .line 134
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 135
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 136
    iget-object v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    new-instance v4, Lcom/facebook/widget/GraphObjectPagingLoader$2;

    invoke-direct {v4, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$2;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    invoke-virtual {v3, v4}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    move-result-object v0

    .line 147
    .local v0, "batch":Lcom/facebook/RequestBatch;
    new-instance v2, Lcom/facebook/widget/GraphObjectPagingLoader$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader$3;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V

    .line 153
    .local v2, "r":Ljava/lang/Runnable;
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-nez v3, :cond_0

    .line 154
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 159
    :goto_0
    return-void

    .line 156
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 157
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    .line 67
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    .line 68
    iput-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 70
    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 71
    return-void
.end method

.method public deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    .local p1, "cursor":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    .line 111
    .local v0, "oldCursor":Lcom/facebook/widget/SimpleGraphObjectCursor;, "Lcom/facebook/widget/SimpleGraphObjectCursor<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    .line 113
    invoke-virtual {p0}, Lcom/facebook/widget/GraphObjectPagingLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 116
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/facebook/widget/SimpleGraphObjectCursor;->close()V

    .line 120
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public followNextLink()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    const/4 v3, 0x1

    .line 91
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    if-eqz v1, :cond_0

    .line 92
    iput-boolean v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->appendResults:Z

    .line 93
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->nextRequest:Lcom/facebook/Request;

    iput-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 95
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    new-instance v2, Lcom/facebook/widget/GraphObjectPagingLoader$1;

    invoke-direct {v2, p0}, Lcom/facebook/widget/GraphObjectPagingLoader$1;-><init>(Lcom/facebook/widget/GraphObjectPagingLoader;)V

    invoke-virtual {v1, v2}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 102
    iput-boolean v3, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    .line 103
    iget-object v1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    iget-boolean v2, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    invoke-direct {p0, v1, v2}, Lcom/facebook/widget/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/internal/CacheableRequestBatch;

    move-result-object v0

    .line 104
    .local v0, "batch":Lcom/facebook/internal/CacheableRequestBatch;
    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    .line 106
    .end local v0    # "batch":Lcom/facebook/internal/CacheableRequestBatch;
    :cond_0
    return-void
.end method

.method public getCursor()Lcom/facebook/widget/SimpleGraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->loading:Z

    return v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 126
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->cursor:Lcom/facebook/widget/SimpleGraphObjectCursor;

    invoke-virtual {p0, v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 129
    :cond_0
    return-void
.end method

.method public refreshOriginalRequest(J)V
    .locals 2
    .param p1, "afterDelay"    # J

    .prologue
    .line 83
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/facebook/FacebookException;

    .line 85
    const-string v1, "refreshOriginalRequest may not be called until after startLoading has been called."

    .line 84
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    .line 88
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    .local p1, "listener":Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;, "Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/widget/GraphObjectPagingLoader$OnErrorListener;

    .line 59
    return-void
.end method

.method public startLoading(Lcom/facebook/Request;Z)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z

    .prologue
    .line 78
    .local p0, "this":Lcom/facebook/widget/GraphObjectPagingLoader;, "Lcom/facebook/widget/GraphObjectPagingLoader<TT;>;"
    iput-object p1, p0, Lcom/facebook/widget/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    .line 79
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    .line 80
    return-void
.end method
