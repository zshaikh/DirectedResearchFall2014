.class final Lcom/facebook/dolphin/LoginButton$LoginDialogListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/dolphin/Facebook$DialogListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/dolphin/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/dolphin/LoginButton;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/facebook/dolphin/LoginButton$LoginDialogListener;->this$0:Lcom/facebook/dolphin/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/dolphin/LoginButton;Lcom/facebook/dolphin/LoginButton$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/facebook/dolphin/LoginButton$LoginDialogListener;-><init>(Lcom/facebook/dolphin/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 109
    const-string v0, "Action Canceled"

    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLoginSuccess()V

    .line 95
    return-void
.end method

.method public onError(Lcom/facebook/dolphin/DialogError;)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/facebook/dolphin/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/facebook/dolphin/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/dolphin/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 100
    return-void
.end method
