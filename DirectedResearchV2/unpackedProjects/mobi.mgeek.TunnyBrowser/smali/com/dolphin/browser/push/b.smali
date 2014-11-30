.class Lcom/dolphin/browser/push/b;
.super Ljava/lang/Object;
.source "ActionPushDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ActionPushDialogActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ActionPushDialogActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/browser/push/b;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/push/b;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-static {v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b(Lcom/dolphin/browser/push/ActionPushDialogActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 144
    const-string v0, "DBS Push"

    const-string v1, "action"

    const-string v2, "sms"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/b;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-static {v1}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->c(Lcom/dolphin/browser/push/ActionPushDialogActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_1
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/push/b;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-static {v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->b(Lcom/dolphin/browser/push/ActionPushDialogActivity;)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    .line 146
    const-string v0, "DBS Push"

    const-string v1, "action"

    const-string v2, "call"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method
