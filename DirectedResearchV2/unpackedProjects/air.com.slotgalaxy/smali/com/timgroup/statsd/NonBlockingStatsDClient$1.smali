.class final Lcom/timgroup/statsd/NonBlockingStatsDClient$1;
.super Ljava/lang/Object;
.source "NonBlockingStatsDClient.java"

# interfaces
.implements Lcom/timgroup/statsd/StatsDClientErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/timgroup/statsd/NonBlockingStatsDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 40
    return-void
.end method
