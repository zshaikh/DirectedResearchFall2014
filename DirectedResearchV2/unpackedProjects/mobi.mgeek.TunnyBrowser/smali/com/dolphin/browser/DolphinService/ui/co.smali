.class Lcom/dolphin/browser/DolphinService/ui/co;
.super Ljava/lang/Object;
.source "SignInButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/Account/a;

.field final synthetic b:Lcom/dolphin/browser/DolphinService/ui/SignInButton;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/co;->b:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    iput-object p2, p0, Lcom/dolphin/browser/DolphinService/ui/co;->a:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/co;->b:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/co;->a:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/co;->b:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/co;->a:Lcom/dolphin/browser/DolphinService/Account/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/Account/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
