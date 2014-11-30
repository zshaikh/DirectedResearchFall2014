.class Lcom/dolphin/browser/DolphinService/ui/bo;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/r;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;J)J

    .line 482
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Lcom/dolphin/browser/q/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/q/c/b;->a(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->h(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    .line 488
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e038c

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->b(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 494
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bo;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->a(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;Ljava/lang/String;)V

    .line 495
    return-void
.end method
