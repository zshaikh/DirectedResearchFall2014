.class Lcom/dolphin/browser/DolphinService/ui/bd;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/p;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0129

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->i(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)V

    .line 514
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0348

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/bd;->a:Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;->c(Lcom/dolphin/browser/DolphinService/ui/LoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 520
    return-void
.end method
