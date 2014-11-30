.class Lcom/facebook/dolphin/FacebookAuthDialog$1;
.super Ljava/lang/Object;
.source "FacebookAuthDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/FacebookAuthDialog;


# direct methods
.method constructor <init>(Lcom/facebook/dolphin/FacebookAuthDialog;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/dolphin/FacebookAuthDialog$1;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$1;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    const/4 v1, 0x1

    # setter for: Lcom/facebook/dolphin/FacebookAuthDialog;->mHasCanceled:Z
    invoke-static {v0, v1}, Lcom/facebook/dolphin/FacebookAuthDialog;->access$002(Lcom/facebook/dolphin/FacebookAuthDialog;Z)Z

    .line 88
    iget-object v0, p0, Lcom/facebook/dolphin/FacebookAuthDialog$1;->this$0:Lcom/facebook/dolphin/FacebookAuthDialog;

    invoke-virtual {v0}, Lcom/facebook/dolphin/FacebookAuthDialog;->dismiss()V

    .line 89
    return-void
.end method
