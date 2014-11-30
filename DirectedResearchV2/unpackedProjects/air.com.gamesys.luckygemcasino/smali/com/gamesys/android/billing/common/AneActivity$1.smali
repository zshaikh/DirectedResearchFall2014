.class Lcom/gamesys/android/billing/common/AneActivity$1;
.super Landroid/os/Handler;
.source "AneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/common/AneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/common/AneActivity;


# direct methods
.method constructor <init>(Lcom/gamesys/android/billing/common/AneActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamesys/android/billing/common/AneActivity$1;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x43a0

    if-ne v2, v3, :cond_1

    .line 47
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 48
    .local v1, "percent":Ljava/lang/Long;
    iget-object v2, p0, Lcom/gamesys/android/billing/common/AneActivity$1;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v3

    # invokes: Lcom/gamesys/android/billing/common/AneActivity;->setAutoProgress(I)V
    invoke-static {v2, v3}, Lcom/gamesys/android/billing/common/AneActivity;->access$0(Lcom/gamesys/android/billing/common/AneActivity;I)V

    .line 53
    .end local v1    # "percent":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x43a1

    if-ne v2, v3, :cond_0

    .line 50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 51
    .local v0, "max":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/gamesys/android/billing/common/AneActivity$1;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/gamesys/android/billing/common/AneActivity;->initProgressDialog(I)V
    invoke-static {v2, v3}, Lcom/gamesys/android/billing/common/AneActivity;->access$1(Lcom/gamesys/android/billing/common/AneActivity;I)V

    goto :goto_0
.end method
