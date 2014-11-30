.class public Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;
.super Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.source "MasterPasswordClearPasswordDialog.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 60
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 67
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->c()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bs;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/DolphinService/ui/bs;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 89
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->finish()V

    .line 91
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->finish()V

    .line 97
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->b()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onBackPressed()V

    .line 74
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->c()V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a(I)V

    .line 30
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a:Landroid/widget/EditText;

    .line 31
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0365

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->b(I)V

    .line 32
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d9

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bq;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bq;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03c1

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/br;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/br;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 55
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordClearPasswordDialog;->a()V

    .line 56
    return-void
.end method
