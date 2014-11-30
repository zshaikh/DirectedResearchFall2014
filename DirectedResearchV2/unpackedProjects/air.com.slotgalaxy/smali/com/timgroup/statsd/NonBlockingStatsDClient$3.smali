.class Lcom/timgroup/statsd/NonBlockingStatsDClient$3;
.super Ljava/lang/Object;
.source "NonBlockingStatsDClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/timgroup/statsd/NonBlockingStatsDClient;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/timgroup/statsd/NonBlockingStatsDClient;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/timgroup/statsd/NonBlockingStatsDClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;->this$0:Lcom/timgroup/statsd/NonBlockingStatsDClient;

    iput-object p2, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;->this$0:Lcom/timgroup/statsd/NonBlockingStatsDClient;

    iget-object v1, p0, Lcom/timgroup/statsd/NonBlockingStatsDClient$3;->val$message:Ljava/lang/String;

    # invokes: Lcom/timgroup/statsd/NonBlockingStatsDClient;->blockingSend(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/timgroup/statsd/NonBlockingStatsDClient;->access$000(Lcom/timgroup/statsd/NonBlockingStatsDClient;Ljava/lang/String;)V

    .line 241
    return-void
.end method
