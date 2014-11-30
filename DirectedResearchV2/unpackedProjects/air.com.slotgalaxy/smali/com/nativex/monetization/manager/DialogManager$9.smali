.class Lcom/nativex/monetization/manager/DialogManager$9;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/monetization/manager/DialogManager;->showProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/manager/DialogManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/manager/DialogManager;Landroid/app/Activity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/nativex/monetization/manager/DialogManager$9;->this$0:Lcom/nativex/monetization/manager/DialogManager;

    iput-object p2, p0, Lcom/nativex/monetization/manager/DialogManager$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nativex/monetization/manager/DialogManager$9;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    new-instance v0, Lcom/nativex/monetization/manager/DialogManager$9$1;

    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$9;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/nativex/monetization/manager/DialogManager$9$1;-><init>(Lcom/nativex/monetization/manager/DialogManager$9;Landroid/content/Context;)V

    .line 268
    .local v0, "v":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/nativex/monetization/manager/DialogManager$9;->val$activity:Landroid/app/Activity;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    return-void
.end method
