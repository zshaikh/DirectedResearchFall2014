.class Lcom/dolphin/browser/DolphinService/ui/aw;
.super Ljava/lang/Object;
.source "DolphinSignUpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/aw;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aw;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e01f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aw;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->f(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    return-void
.end method
