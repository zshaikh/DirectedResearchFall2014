.class Lcom/somo/apptimiser/SomoDispatch$2$1;
.super Landroid/content/BroadcastReceiver;
.source "SomoDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/somo/apptimiser/SomoDispatch$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/somo/apptimiser/SomoDispatch$2;


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoDispatch$2;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch$2$1;->this$1:Lcom/somo/apptimiser/SomoDispatch$2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x10

    .line 151
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch$2$1;->this$1:Lcom/somo/apptimiser/SomoDispatch$2;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # invokes: Lcom/somo/apptimiser/SomoDispatch;->isConnected()Z
    invoke-static {v0}, Lcom/somo/apptimiser/SomoDispatch;->access$300(Lcom/somo/apptimiser/SomoDispatch;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch$2$1;->this$1:Lcom/somo/apptimiser/SomoDispatch$2;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v0}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->removeMessages(I)V

    .line 155
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch$2$1;->this$1:Lcom/somo/apptimiser/SomoDispatch$2;

    iget-object v0, v0, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->mHandler:Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
    invoke-static {v0}, Lcom/somo/apptimiser/SomoDispatch;->access$000(Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/somo/apptimiser/SomoDispatch$2$1;->this$1:Lcom/somo/apptimiser/SomoDispatch$2;

    iget-object v1, v1, Lcom/somo/apptimiser/SomoDispatch$2;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoDispatch;->getModeration()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    :cond_0
    return-void
.end method
