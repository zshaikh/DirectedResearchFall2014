.class final Lcom/facebook/dolphin/AppActivator$1;
.super Ljava/lang/Object;
.source "AppActivator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/facebook/dolphin/AppActivator$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/dolphin/AppActivator$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/facebook/dolphin/AppActivator$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/dolphin/AppActivator$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/dolphin/AppActivator;->activateApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    # getter for: Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/dolphin/AppActivator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activated on facebook."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    # getter for: Lcom/facebook/dolphin/AppActivator;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/dolphin/AppActivator;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activation failed on facebook."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
