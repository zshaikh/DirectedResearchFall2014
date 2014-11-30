.class public Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;
.super Lcom/dolphin/browser/DolphinService/ui/DialogActivity;
.source "MasterPasswordEncryptPasswordDialog.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 107
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0042

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a:Landroid/widget/EditText;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a:Landroid/widget/EditText;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0180

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 111
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 113
    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 126
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/cb;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/DolphinService/ui/cb;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 144
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->finish()V

    .line 146
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->finish()V

    .line 152
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/l/l;->a(Landroid/content/Context;)Lcom/dolphin/browser/l/l;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1, v1, v1}, Lcom/dolphin/browser/l/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->finish()V

    .line 161
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->setResult(I)V

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->finish()V

    .line 167
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onBackPressed()V

    .line 120
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c()V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/DialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "SCHEMEPLUSHOST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b:Ljava/lang/String;

    .line 43
    const-string v1, "USERNAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c:Ljava/lang/String;

    .line 44
    const-string v1, "PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->d:Ljava/lang/String;

    .line 47
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030058

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(I)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801c3

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a:Landroid/widget/EditText;

    .line 51
    invoke-static {}, Lcom/dolphin/browser/l/e;->a()Lcom/dolphin/browser/l/e;

    move-result-object v2

    .line 52
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080093

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/dolphin/browser/l/e;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0533

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0373

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b(I)V

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0535

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/by;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/by;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->b(ILandroid/view/View$OnClickListener;)V

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0534

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/bz;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/DolphinService/ui/bz;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a(ILandroid/view/View$OnClickListener;)V

    .line 78
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0538

    new-instance v1, Lcom/dolphin/browser/DolphinService/ui/ca;

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/DolphinService/ui/ca;-><init>(Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;Lcom/dolphin/browser/l/e;)V

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->c(ILandroid/view/View$OnClickListener;)V

    .line 101
    invoke-direct {p0}, Lcom/dolphin/browser/DolphinService/ui/MasterPasswordEncryptPasswordDialog;->a()V

    .line 102
    return-void

    .line 57
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0374

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
