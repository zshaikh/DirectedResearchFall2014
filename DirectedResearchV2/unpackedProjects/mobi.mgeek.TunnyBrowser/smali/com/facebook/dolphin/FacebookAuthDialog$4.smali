.class Lcom/facebook/dolphin/FacebookAuthDialog$4;
.super Ljava/lang/Object;
.source "FacebookAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

.field final synthetic val$error:Lcom/facebook/dolphin/FacebookError;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/FacebookAuthDialog;Lcom/facebook/dolphin/FacebookError;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$4;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    iput-object p2, p0, Lcom/facebook/dolphin/FacebookAuthDialog$4;->val$error:Lcom/facebook/dolphin/FacebookError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$4;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$100(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$4;->val$error:Lcom/facebook/dolphin/FacebookError;

    invoke-interface {v0, v1}, Lcom/facebook/dolphin/Facebook$DialogListener;->onFacebookError(Lcom/facebook/dolphin/FacebookError;)V

    .line 182
    return-void
.end method
