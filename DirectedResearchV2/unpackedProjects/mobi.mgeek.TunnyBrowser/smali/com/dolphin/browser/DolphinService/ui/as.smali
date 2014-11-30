.class Lcom/dolphin/browser/DolphinService/ui/as;
.super Ljava/lang/Object;
.source "DolphinSignUpActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/as;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 149
    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/as;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/as;->a:Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;->a(Lcom/dolphin/browser/DolphinService/ui/DolphinSignUpActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0001

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
