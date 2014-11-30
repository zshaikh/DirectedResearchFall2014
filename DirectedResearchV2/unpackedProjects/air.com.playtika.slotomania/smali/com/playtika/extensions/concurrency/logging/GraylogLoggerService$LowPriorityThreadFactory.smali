.class public Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LowPriorityThreadFactory;
.super Ljava/lang/Object;
.source "GraylogLoggerService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LowPriorityThreadFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;


# direct methods
.method public constructor <init>(Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$LowPriorityThreadFactory;->this$0:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 61
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 63
    return-object v0
.end method
