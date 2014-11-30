.class Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;
.super Ljava/lang/Object;
.source "FacebookWrapperActivity.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/facebook/FacebookWrapperActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;


# direct methods
.method constructor <init>(Lcom/stuv/ane/facebook/FacebookWrapperActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const-string v3, " : "

    .line 43
    const-string v0, "Fb"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "StatusCallback "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/SessionState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    # getter for: Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_gotResult:Z
    invoke-static {v2}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->access$0(Lcom/stuv/ane/facebook/FacebookWrapperActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    # getter for: Lcom/stuv/ane/facebook/FacebookWrapperActivity;->_gotResult:Z
    invoke-static {v0}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->access$0(Lcom/stuv/ane/facebook/FacebookWrapperActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    invoke-static {v0, p3}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->access$1(Lcom/stuv/ane/facebook/FacebookWrapperActivity;Ljava/lang/Exception;)V

    .line 67
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->access$2(Lcom/stuv/ane/facebook/FacebookWrapperActivity;Z)V

    .line 70
    iget-object v0, p0, Lcom/stuv/ane/facebook/FacebookWrapperActivity$1;->this$0:Lcom/stuv/ane/facebook/FacebookWrapperActivity;

    invoke-virtual {v0}, Lcom/stuv/ane/facebook/FacebookWrapperActivity;->finish()V

    goto :goto_0
.end method
