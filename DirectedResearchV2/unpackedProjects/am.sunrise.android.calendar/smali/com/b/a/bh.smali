.class Lcom/b/a/bh;
.super Ljava/lang/Thread;
.source "Utils.java"


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 305
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 306
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 307
    return-void
.end method
