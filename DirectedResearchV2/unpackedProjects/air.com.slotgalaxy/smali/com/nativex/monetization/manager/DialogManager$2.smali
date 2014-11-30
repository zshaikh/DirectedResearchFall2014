.class Lcom/nativex/monetization/manager/DialogManager$2;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager;->showRateUpgradeDialog(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nativex/monetization/listeners/ClickListenerBase;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;

.field final synthetic val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$rateUpgradeAction:I


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/content/Context;Ljava/lang/String;Lcom/nativex/monetization/listeners/ClickListenerBase;ILcom/nativex/monetization/dialogs/custom/MessageDialog;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$2;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    iput p5, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$rateUpgradeAction:I

    iput-object p6, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nativex/monetization/manager/ActivityManager;->moveToMarket(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    instance-of v0, v0, Lcom/nativex/monetization/listeners/ClickListenerV1;

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    check-cast v0, Lcom/nativex/monetization/listeners/ClickListenerV1;

    invoke-interface {v0, v3}, Lcom/nativex/monetization/listeners/ClickListenerV1;->onClick(Z)V

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0, v3}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->setUserClickedOk(Z)V

    .line 122
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 124
    :cond_1
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    instance-of v0, v0, Lcom/nativex/monetization/listeners/ClickListenerV2;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    check-cast v0, Lcom/nativex/monetization/listeners/ClickListenerV2;

    iget v1, p0, Lcom/nativex/monetization/manager/DialogManager$2;->val$rateUpgradeAction:I

    invoke-interface {v0, v1, v3}, Lcom/nativex/monetization/listeners/ClickListenerV2;->onClick(IZ)V

    goto :goto_0
.end method
