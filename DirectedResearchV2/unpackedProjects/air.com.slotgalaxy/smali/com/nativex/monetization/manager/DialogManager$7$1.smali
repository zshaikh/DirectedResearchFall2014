.class Lcom/nativex/monetization/manager/DialogManager$7$1;
.super Landroid/view/View;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/manager/DialogManager$7;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager$7;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$7$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$7;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$7$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$7;

    iget-object v0, v0, Lcom/nativex/monetization/manager/DialogManager$7;->val$dialog:Lcom/nativex/monetization/dialogs/custom/MessageDialog;

    invoke-virtual {v0}, Lcom/nativex/monetization/dialogs/custom/MessageDialog;->dismiss()V

    .line 213
    return-void
.end method
