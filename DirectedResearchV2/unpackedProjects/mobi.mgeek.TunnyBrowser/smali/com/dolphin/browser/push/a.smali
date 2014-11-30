.class Lcom/dolphin/browser/push/a;
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
    .line 130
    iput-object p1, p0, Lcom/dolphin/browser/push/a;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 134
    const-string v0, "DBS Push"

    const-string v1, "action"

    const-string v2, "copy"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/push/a;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    iget-object v1, p0, Lcom/dolphin/browser/push/a;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-static {v1}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Lcom/dolphin/browser/push/ActionPushDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->a(Lcom/dolphin/browser/push/ActionPushDialogActivity;Ljava/lang/String;)V

    .line 136
    return-void
.end method
