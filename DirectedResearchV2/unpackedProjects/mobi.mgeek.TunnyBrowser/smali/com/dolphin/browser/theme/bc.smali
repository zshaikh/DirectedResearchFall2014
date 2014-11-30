.class public Lcom/dolphin/browser/theme/bc;
.super Ljava/lang/Object;
.source "ThemeUpgradeTipsManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/theme/bc;


# instance fields
.field private b:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/dolphin/browser/theme/bc;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/bc;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/bc;->a:Lcom/dolphin/browser/theme/bc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/bc;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/theme/bc;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/bc;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/theme/bc;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/dolphin/browser/theme/bc;->a:Lcom/dolphin/browser/theme/bc;

    return-object v0
.end method

.method private a(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/dolphin/browser/theme/be;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/theme/be;-><init>(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;)V

    invoke-static {v0, p2, p3}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 70
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 108
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 110
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 111
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 113
    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 114
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 115
    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 116
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 117
    invoke-static {p2, v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 118
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/theme/bc;->a(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/bc;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/theme/bc;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 90
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 91
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0638

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0132

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a015a

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 94
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b013f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHeight(I)V

    .line 95
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0141

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 98
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b0140

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    invoke-virtual {v2, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    iput-object v2, p0, Lcom/dolphin/browser/theme/bc;->b:Landroid/view/View;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/bc;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "need_show_theme_upgrade_tips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/theme/bc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/bc;->a(Z)V

    .line 45
    new-instance v0, Lcom/dolphin/browser/theme/bd;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/theme/bd;-><init>(Lcom/dolphin/browser/theme/bc;Landroid/content/Context;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "need_show_theme_upgrade_tips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 77
    return-void
.end method
