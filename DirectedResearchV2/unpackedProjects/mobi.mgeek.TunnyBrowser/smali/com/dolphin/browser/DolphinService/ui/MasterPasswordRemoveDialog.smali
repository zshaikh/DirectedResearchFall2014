.class public Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;
.super Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.source "MasterPasswordRemoveDialog.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 68
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->finish()V

    .line 98
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cf;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/cf;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->setResult(I)V

    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->finish()V

    .line 92
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onBackPressed()V

    .line 75
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a(I)V

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a:Landroid/widget/EditText;

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e036f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b(I)V

    .line 33
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d9

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/cd;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/cd;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03c1

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/ce;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/ce;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordRemoveDialog;->a()V

    .line 57
    return-void
.end method
