.class Lcom/nativex/monetization/manager/DialogManager$12;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/MessageDialog;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$12;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$12;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nativex/monetization/manager/DialogManager$12;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 344
    new-instance v0, Lcom/nativex/monetization/manager/DialogManager$12$1;

    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$12;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/manager/DialogManager$12$1;-><init>(Lcom/nativex/monetization/manager/DialogManager$12;Landroid/content/Context;)V

    .line 350
    .local v0, "v":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$12;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    return-void
.end method
