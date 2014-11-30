.class public Lcom/facebook/orca/common/async/AsyncTaskRunner;
.super Ljava/lang/Object;
.source "AsyncTaskRunner.java"


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/common/async/AsyncTaskRunner$1;-><init>(Lcom/facebook/orca/common/async/AsyncTaskRunner;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a:Landroid/os/AsyncTask;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void
.end method
