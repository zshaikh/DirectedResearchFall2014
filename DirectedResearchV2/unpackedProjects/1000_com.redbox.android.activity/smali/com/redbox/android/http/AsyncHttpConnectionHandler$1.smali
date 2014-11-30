.class Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;
.super Ljava/util/TimerTask;
.source "AsyncHttpConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/redbox/android/http/AsyncHttpConnectionHandler;->processEntity(Lorg/apache/http/HttpEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/redbox/android/http/AsyncHttpConnectionHandler;


# direct methods
.method constructor <init>(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;->this$0:Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    .line 273
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 276
    iget-object v1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;->this$0:Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    iget v1, v1, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->sizeRead:I

    mul-int/lit8 v1, v1, 0x64

    int-to-long v1, v1

    iget-object v3, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;->this$0:Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    iget-wide v3, v3, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->totalLength:J

    div-long/2addr v1, v3

    long-to-int v0, v1

    .line 277
    .local v0, "percent":I
    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/redbox/android/http/AsyncHttpConnectionHandler$1;->this$0:Lcom/redbox/android/http/AsyncHttpConnectionHandler;

    # getter for: Lcom/redbox/android/http/AsyncHttpConnectionHandler;->listener:Lcom/redbox/android/http/ServerCommunicationListener;
    invoke-static {v1}, Lcom/redbox/android/http/AsyncHttpConnectionHandler;->access$0(Lcom/redbox/android/http/AsyncHttpConnectionHandler;)Lcom/redbox/android/http/ServerCommunicationListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/redbox/android/http/ServerCommunicationListener;->status(II)V

    .line 280
    :cond_0
    return-void
.end method
