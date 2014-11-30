.class Lcom/nativex/monetization/manager/DialogManager$1$1;
.super Landroid/view/View;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/manager/DialogManager$1;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager$1;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$1$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$1;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$1$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$1;

    iget-object v0, v0, Lcom/nativex/monetization/manager/DialogManager$1;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 100
    return-void
.end method
