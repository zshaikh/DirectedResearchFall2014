.class Lcom/facebook/widget/WebDialog$2;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/widget/WebDialog;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    # invokes: Lcom/facebook/widget/WebDialog;->sendCancelToListener()V
    invoke-static {v0}, Lcom/facebook/widget/WebDialog;->access$000(Lcom/facebook/widget/WebDialog;)V

    .line 212
    iget-object v0, p0, Lcom/facebook/widget/WebDialog$2;->this$0:Lcom/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    .line 213
    return-void
.end method