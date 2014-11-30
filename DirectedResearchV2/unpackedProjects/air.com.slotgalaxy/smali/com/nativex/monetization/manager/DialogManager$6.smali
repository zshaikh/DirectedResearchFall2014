.class Lcom/nativex/monetization/manager/DialogManager$6;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager;->showNoNetrowkConnectivityDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/content/Context;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$6;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nativex/monetization/manager/DialogManager$6;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "wifiIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 198
    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$6;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v1}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 199
    return-void
.end method
