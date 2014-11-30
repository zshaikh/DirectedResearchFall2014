.class Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;
.super Ljava/lang/Object;
.source "ChoiceDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/dialogs/ChoiceDialog;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-static {v0, p1}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a(Lcom/facebook/orca/common/dialogs/ChoiceDialog;Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;->a:Lcom/facebook/orca/common/dialogs/ChoiceDialog;

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->dismiss()V

    .line 61
    return-void
.end method
