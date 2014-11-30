.class Lcom/nativex/monetization/manager/DialogManager$3;
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

.field final synthetic val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

.field final synthetic val$rateUpgradeAction:I


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Lcom/nativex/monetization/listeners/ClickListenerBase;ILcom/nativex/monetization/dialogs/custom/MessageDialog;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$3;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    iput p3, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$rateUpgradeAction:I

    iput-object p4, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    instance-of v0, v0, Lcom/nativex/monetization/listeners/ClickListenerV1;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    check-cast v0, Lcom/nativex/monetization/listeners/ClickListenerV1;

    invoke-interface {v0, v2}, Lcom/nativex/monetization/listeners/ClickListenerV1;->onClick(Z)V

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 141
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    instance-of v0, v0, Lcom/nativex/monetization/listeners/ClickListenerV2;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$clickListener:Lcom/nativex/monetization/listeners/ClickListenerBase;

    check-cast v0, Lcom/nativex/monetization/listeners/ClickListenerV2;

    iget v1, p0, Lcom/nativex/monetization/manager/DialogManager$3;->val$rateUpgradeAction:I

    invoke-interface {v0, v1, v2}, Lcom/nativex/monetization/listeners/ClickListenerV2;->onClick(IZ)V

    goto :goto_0
.end method
