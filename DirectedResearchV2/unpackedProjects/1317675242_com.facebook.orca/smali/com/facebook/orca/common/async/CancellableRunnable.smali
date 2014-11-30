.class public Lcom/facebook/orca/common/async/CancellableRunnable;
.super Ljava/lang/Object;
.source "CancellableRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/facebook/orca/common/async/CancellableRunnable;->a:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/common/async/CancellableRunnable;->a:Ljava/lang/Runnable;

    .line 21
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/common/async/CancellableRunnable;->a:Ljava/lang/Runnable;

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 29
    :cond_0
    return-void
.end method
