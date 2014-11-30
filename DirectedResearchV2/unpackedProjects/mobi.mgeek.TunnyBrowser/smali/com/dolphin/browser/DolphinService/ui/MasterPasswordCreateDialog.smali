.class public Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;
.super Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.source "MasterPasswordCreateDialog.java"


# static fields
.field private static final a:Lcom/dolphin/browser/util/bx;


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/dolphin/browser/util/bx;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/util/bx;-><init>(II)V

    sput-object v0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a:Lcom/dolphin/browser/util/bx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/dolphin/browser/util/bx;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a:Lcom/dolphin/browser/util/bx;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0a0180

    const v3, 0x7f0a0042

    .line 87
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 88
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c5

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 99
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 100
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 101
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/bv;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/DolphinService/ui/bv;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 123
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->finish()V

    .line 125
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->setResult(I)V

    .line 130
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->finish()V

    .line 131
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onBackPressed()V

    .line 107
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(I)V

    .line 38
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    const/4 v0, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0368

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(I)V

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e00d9

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bt;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bt;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e03c1

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bu;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bu;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordCreateDialog;->b()V

    .line 83
    return-void
.end method
