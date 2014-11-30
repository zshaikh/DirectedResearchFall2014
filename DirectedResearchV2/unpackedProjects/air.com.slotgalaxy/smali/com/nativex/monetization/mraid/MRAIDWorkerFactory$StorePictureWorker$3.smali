.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$3;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Lcom/nativex/monetization/mraid/MRAIDAsyncManager$OnActionComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->storePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionComplete(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "success"    # Z

    .prologue
    .line 173
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 174
    const-string v0, "ANTON"

    const-string v1, "Picture downloaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->onPictureDownloaded(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$400(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method
