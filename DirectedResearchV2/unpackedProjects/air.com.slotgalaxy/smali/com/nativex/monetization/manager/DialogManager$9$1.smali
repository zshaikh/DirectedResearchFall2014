.class Lcom/nativex/monetization/manager/DialogManager$9$1;
.super Landroid/view/View;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nativex/monetization/manager/DialogManager$9;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager$9;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$9$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$9;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/nativex/monetization/manager/DialogManager$9$1;->this$1:Lcom/nativex/monetization/manager/DialogManager$9;

    iget-object v0, v0, Lcom/nativex/monetization/manager/DialogManager$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 266
    return-void
.end method
