.class Lcom/todddavies/components/progressbar/ProgressWheel$1;
.super Landroid/os/Handler;
.source "ProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/todddavies/components/progressbar/ProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/todddavies/components/progressbar/ProgressWheel;


# direct methods
.method constructor <init>(Lcom/todddavies/components/progressbar/ProgressWheel;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    invoke-virtual {v0}, Lcom/todddavies/components/progressbar/ProgressWheel;->invalidate()V

    .line 71
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    iget-boolean v0, v0, Lcom/todddavies/components/progressbar/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    iget v1, v0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    iget-object v2, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    # getter for: Lcom/todddavies/components/progressbar/ProgressWheel;->spinSpeed:I
    invoke-static {v2}, Lcom/todddavies/components/progressbar/ProgressWheel;->access$000(Lcom/todddavies/components/progressbar/ProgressWheel;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 73
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    iget v0, v0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    iput v3, v0, Lcom/todddavies/components/progressbar/ProgressWheel;->progress:I

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    # getter for: Lcom/todddavies/components/progressbar/ProgressWheel;->spinHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/todddavies/components/progressbar/ProgressWheel;->access$200(Lcom/todddavies/components/progressbar/ProgressWheel;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/todddavies/components/progressbar/ProgressWheel$1;->this$0:Lcom/todddavies/components/progressbar/ProgressWheel;

    # getter for: Lcom/todddavies/components/progressbar/ProgressWheel;->delayMillis:I
    invoke-static {v1}, Lcom/todddavies/components/progressbar/ProgressWheel;->access$100(Lcom/todddavies/components/progressbar/ProgressWheel;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    :cond_1
    return-void
.end method
