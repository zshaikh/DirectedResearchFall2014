.class Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;
.super Landroid/os/Handler;
.source "SomoDispatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoDispatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatchHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/somo/apptimiser/SomoDispatch;


# direct methods
.method public constructor <init>(Lcom/somo/apptimiser/SomoDispatch;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    .line 220
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 231
    # getter for: Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoDispatch;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    const-string v1, "Unknown message type %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/somo/apptimiser/SomoLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 233
    :goto_0
    return-void

    .line 227
    :pswitch_0
    # getter for: Lcom/somo/apptimiser/SomoDispatch;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoDispatch;->access$200()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    const-string v1, "MESSAGE_SEND"

    invoke-virtual {v0, v1}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDispatch$DispatchHandler;->this$0:Lcom/somo/apptimiser/SomoDispatch;

    # getter for: Lcom/somo/apptimiser/SomoDispatch;->uploadRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/somo/apptimiser/SomoDispatch;->access$900(Lcom/somo/apptimiser/SomoDispatch;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method
