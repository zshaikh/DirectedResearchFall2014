.class Lcom/nativex/monetization/mraid/MRAIDDialog$3;
.super Ljava/lang/Object;
.source "MRAIDDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDDialog;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const-string v3, "TEST"

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    # getter for: Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDDialog;->access$100(Lcom/nativex/monetization/mraid/MRAIDDialog;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->detachFromParent()V

    .line 120
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDDialog$3;->this$0:Lcom/nativex/monetization/mraid/MRAIDDialog;

    const/4 v2, 0x0

    # setter for: Lcom/nativex/monetization/mraid/MRAIDDialog;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;
    invoke-static {v1, v2}, Lcom/nativex/monetization/mraid/MRAIDDialog;->access$102(Lcom/nativex/monetization/mraid/MRAIDDialog;Lcom/nativex/monetization/mraid/MRAIDContainer;)Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 121
    const-string v1, "TEST"

    const-string v2, "The WebView is detached from its parent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TEST"

    const-string v1, "The WebView failed to detach from its parent"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
