.class Lcom/dolphin/browser/push/c;
.super Ljava/lang/Object;
.source "ActionPushDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ActionPushDialogActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ActionPushDialogActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/push/c;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 161
    const-string v0, "ActionPushDialogActivity"

    const-string v1, "dialog dismiss"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/push/c;->a:Lcom/dolphin/browser/push/ActionPushDialogActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ActionPushDialogActivity;->finish()V

    .line 163
    return-void
.end method
