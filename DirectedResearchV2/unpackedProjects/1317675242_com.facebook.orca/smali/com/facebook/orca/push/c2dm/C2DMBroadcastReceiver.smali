.class public Lcom/facebook/orca/push/c2dm/C2DMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {p1, p2}, Lcom/facebook/orca/push/c2dm/C2DMReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/facebook/orca/push/c2dm/C2DMBroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 24
    return-void
.end method
