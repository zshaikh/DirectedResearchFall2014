.class Lcom/b/a/bi;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/b/a/bh;

    invoke-direct {v0, p1}, Lcom/b/a/bh;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
