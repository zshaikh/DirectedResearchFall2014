.class Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamesys/android/billing/common/AneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidInterfaceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamesys/android/billing/common/AneActivity;


# direct methods
.method private constructor <init>(Lcom/gamesys/android/billing/common/AneActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gamesys/android/billing/common/AneActivity;Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;-><init>(Lcom/gamesys/android/billing/common/AneActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 158
    const-string v0, "com.gamesys.android.billing.common.ane.INTENT_ACTION_AUTO_CLOSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/gamesys/android/billing/common/AneActivity;->asContext:Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/ane/AbstractBillingNativeContext;->autoCloseBroadcastProcessed()V

    .line 160
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    iget-object v0, v0, Lcom/gamesys/android/billing/common/AneActivity;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/gamesys/android/billing/common/AneActivity$AndroidInterfaceBroadcastReceiver;->this$0:Lcom/gamesys/android/billing/common/AneActivity;

    invoke-virtual {v0}, Lcom/gamesys/android/billing/common/AneActivity;->finish()V

    .line 165
    :cond_1
    return-void
.end method
