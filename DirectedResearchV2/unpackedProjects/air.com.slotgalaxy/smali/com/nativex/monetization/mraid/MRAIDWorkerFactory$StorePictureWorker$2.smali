.class Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;
.super Ljava/lang/Object;
.source "MRAIDWorkerFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;
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
    .line 114
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->userConfirmed:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$102(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 120
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;->this$0:Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->pictureLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;->access$200(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2$1;

    invoke-direct {v1, p0}, Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2$1;-><init>(Lcom/nativex/monetization/mraid/MRAIDWorkerFactory$StorePictureWorker$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    :cond_0
    return-void
.end method
