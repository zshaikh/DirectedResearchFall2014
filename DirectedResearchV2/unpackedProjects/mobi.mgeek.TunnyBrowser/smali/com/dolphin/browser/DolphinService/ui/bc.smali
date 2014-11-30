.class Lcom/dolphin/browser/DolphinService/ui/bc;
.super Landroid/content/BroadcastReceiver;
.source "LoginActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bc;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 129
    const-string v0, "com.dolphin.browser.DolphinService.FINISH_LOGIN_ACTION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bc;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->finish()V

    .line 132
    :cond_0
    return-void
.end method
