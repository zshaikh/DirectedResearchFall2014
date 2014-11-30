.class Lcom/nativex/monetization/communication/AsyncTaskManager$1;
.super Ljava/lang/Object;
.source "AsyncTaskManager.java"

# interfaces
.implements Lcom/nativex/common/OnBaseTaskCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/communication/AsyncTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/communication/AsyncTaskManager;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/communication/AsyncTaskManager;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/nativex/monetization/communication/AsyncTaskManager$1;->this$0:Lcom/nativex/monetization/communication/AsyncTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public taskCompleted(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager$1;->this$0:Lcom/nativex/monetization/communication/AsyncTaskManager;

    # getter for: Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;
    invoke-static {v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->access$000(Lcom/nativex/monetization/communication/AsyncTaskManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager$1;->this$0:Lcom/nativex/monetization/communication/AsyncTaskManager;

    # getter for: Lcom/nativex/monetization/communication/AsyncTaskManager;->requests:Ljava/util/List;
    invoke-static {v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->access$000(Lcom/nativex/monetization/communication/AsyncTaskManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/nativex/monetization/communication/AsyncTaskManager$1;->this$0:Lcom/nativex/monetization/communication/AsyncTaskManager;

    invoke-virtual {v0}, Lcom/nativex/monetization/communication/AsyncTaskManager;->executeTasks()Z

    .line 55
    :cond_0
    return-void
.end method
