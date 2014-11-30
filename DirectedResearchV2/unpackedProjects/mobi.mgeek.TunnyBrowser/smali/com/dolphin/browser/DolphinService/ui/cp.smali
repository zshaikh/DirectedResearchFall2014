.class Lcom/dolphin/browser/DolphinService/ui/cp;
.super Ljava/lang/Object;
.source "SignInButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/cp;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cp;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->b(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e05a4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cp;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->c(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e035f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 144
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/cp;->a:Lcom/dolphin/browser/DolphinService/ui/SignInButton;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/SignInButton;->a(Lcom/dolphin/browser/DolphinService/ui/SignInButton;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 146
    return-void
.end method
