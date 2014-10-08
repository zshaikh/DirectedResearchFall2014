.class public Lcom/milkmangames/extensions/android/ReferralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReferralReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[BURefReceiver]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const-string v1, ""

    .line 28
    .local v1, "referrerId":Ljava/lang/String;
    :try_start_0
    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->onReferrerReceived(Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "[BURefReceiver]"

    const-string v3, "Failed to parse referrer."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
