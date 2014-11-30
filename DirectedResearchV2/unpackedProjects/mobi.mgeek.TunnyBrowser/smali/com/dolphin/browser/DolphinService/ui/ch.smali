.class Lcom/dolphin/browser/DolphinService/ui/ch;
.super Ljava/lang/Object;
.source "PasswordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/cg;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/cg;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/ch;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 70
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/ch;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(Lcom/dolphin/browser/DolphinService/ui/cg;I)I

    .line 71
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/ch;->a:Lcom/dolphin/browser/DolphinService/ui/cg;

    invoke-static {v2}, Lcom/dolphin/browser/DolphinService/ui/cg;->a(Lcom/dolphin/browser/DolphinService/ui/cg;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    instance-of v2, v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-nez v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 77
    :cond_0
    check-cast v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0400

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(Landroid/graphics/drawable/Drawable;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0406

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0408

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/cj;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/cj;-><init>(Lcom/dolphin/browser/DolphinService/ui/ch;)V

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02004f

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0177

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->b(ILandroid/content/DialogInterface$OnClickListener;II)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0407

    new-instance v2, Lcom/dolphin/browser/DolphinService/ui/ci;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/DolphinService/ui/ci;-><init>(Lcom/dolphin/browser/DolphinService/ui/ch;)V

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02004e

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0176

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->a(ILandroid/content/DialogInterface$OnClickListener;II)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setCancelable(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    goto :goto_0
.end method
