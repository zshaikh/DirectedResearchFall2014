.class Lcom/dolphin/browser/DolphinService/ui/k;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/k;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/k;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->d(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0410

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/k;->a:Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;->d(Lcom/dolphin/browser/DolphinService/ui/ChangePasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    return-void
.end method
