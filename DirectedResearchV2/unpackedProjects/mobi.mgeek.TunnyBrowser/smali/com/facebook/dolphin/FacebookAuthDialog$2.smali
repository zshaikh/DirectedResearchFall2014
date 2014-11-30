.class Lcom/facebook/dolphin/FacebookAuthDialog$2;
.super Ljava/lang/Object;
.source "FacebookAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

.field final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/FacebookAuthDialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$2;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    iput-object p2, p0, Lcom/facebook/dolphin/FacebookAuthDialog$2;->val$values:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$2;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$100(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$2;->val$values:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method
