.class Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;
.super Ljava/lang/Object;
.source "ZipDownloadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->getCallback()Landroid/os/Handler$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;


# direct methods
.method constructor <init>(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 72
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 58
    :sswitch_0
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    # getter for: Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    invoke-static {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->access$0(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;->onLoadFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 61
    :sswitch_1
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    # getter for: Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    invoke-static {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->access$0(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;->onOpenFail(Ljava/lang/Exception;)V

    goto :goto_0

    .line 64
    :sswitch_2
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    # getter for: Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    invoke-static {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->access$0(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;->onSuccess()V

    goto :goto_0

    .line 67
    :sswitch_3
    iget-object v0, p0, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$1;->this$0:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;

    # getter for: Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->listener:Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;
    invoke-static {v0}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;->access$0(Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager;)Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/playtika/extensions/concurrency/zipdownloader/ZipDownloadManager$Listener;->onProgress(I)V

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_3
        0xa -> :sswitch_2
    .end sparse-switch
.end method
