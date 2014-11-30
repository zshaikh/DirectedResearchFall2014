.class Lcom/facebook/dolphin/FacebookAuthDialog$3;
.super Ljava/lang/Object;
.source "FacebookAuthDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/FacebookAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$3;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$3;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    # getter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mListener:Lcom/facebook/dolphin/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$100(Lcom/facebook/dolphin/FacebookAuthDialog;)Lcom/facebook/dolphin/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/dolphin/Facebook$DialogListener;->onCancel()V

    .line 170
    return-void
.end method
