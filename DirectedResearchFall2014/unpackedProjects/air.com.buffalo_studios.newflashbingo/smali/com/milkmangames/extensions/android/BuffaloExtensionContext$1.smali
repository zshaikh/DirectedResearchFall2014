.class Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;
.super Landroid/content/BroadcastReceiver;
.source "BuffaloExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->initBuffalo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;


# direct methods
.method constructor <init>(Lcom/milkmangames/extensions/android/BuffaloExtensionContext;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    .line 117
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    const-string v1, "NETWORK_CHANGE"

    iget-object v2, p0, Lcom/milkmangames/extensions/android/BuffaloExtensionContext$1;->this$0:Lcom/milkmangames/extensions/android/BuffaloExtensionContext;

    invoke-virtual {v2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->isNetworkReachable()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/milkmangames/extensions/android/BuffaloExtensionContext;->dispatchFlashEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 123
    :cond_0
    const-string v2, "false"

    goto :goto_0
.end method
