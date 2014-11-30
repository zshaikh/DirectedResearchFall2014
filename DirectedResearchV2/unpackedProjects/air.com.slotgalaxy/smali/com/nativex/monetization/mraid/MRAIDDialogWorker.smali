.class abstract Lcom/nativex/monetization/mraid/MRAIDDialogWorker;
.super Ljava/lang/Object;
.source "MRAIDDialogWorker.java"


# instance fields
.field private container:Lcom/nativex/monetization/mraid/MRAIDContainer;

.field private released:Z


# direct methods
.method protected constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->released:Z

    .line 30
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract dismissDialog()V
.end method

.method protected finishWorker()V
    .locals 2

    .prologue
    .line 45
    iget-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->released:Z

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->released:Z

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->workerDone(Lcom/nativex/monetization/mraid/MRAIDDialogWorker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->dismissDialog()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 60
    :catch_1
    move-exception v1

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method protected getContainer()Lcom/nativex/monetization/mraid/MRAIDContainer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDDialogWorker;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    return-object v0
.end method

.method public abstract release()V
.end method

.method public abstract showDialog(Landroid/app/Activity;)V
.end method
