.class Lcom/nativex/monetization/manager/DialogManager$10;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager;->showMessagesDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;

.field final synthetic val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$10;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$10;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$10;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 327
    return-void
.end method
