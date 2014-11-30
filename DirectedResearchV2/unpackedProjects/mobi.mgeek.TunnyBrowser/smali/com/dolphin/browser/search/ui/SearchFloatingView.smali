.class public Lcom/dolphin/browser/search/ui/SearchFloatingView;
.super Landroid/widget/LinearLayout;
.source "SearchFloatingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/search/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    .line 55
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->c:Landroid/widget/ImageView;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->f:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    .line 55
    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->c:Landroid/widget/ImageView;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    .line 217
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->f:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 240
    if-eqz p2, :cond_0

    .line 241
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/dolphin/browser/search/a/c;->a()Lcom/dolphin/browser/search/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/search/a/c;->c()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->e:Ljava/util/List;

    .line 82
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 83
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    sget-object v2, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v2, 0x7f0300d9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 85
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080266

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->c:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->c:Landroid/widget/ImageView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020333

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802fb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0076

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b:Landroid/widget/TextView;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020331

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->addView(Landroid/view/View;)V

    .line 92
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0802fc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 93
    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02034b

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-direct {p0, v0, v2}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 95
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->f:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/search/ui/aa;

    invoke-direct {v1, p0, p1}, Lcom/dolphin/browser/search/ui/aa;-><init>(Lcom/dolphin/browser/search/ui/SearchFloatingView;Landroid/content/Intent;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v0, 0x1

    move v1, v2

    move v3, v2

    move v4, v0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;

    .line 118
    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    if-ge v3, v5, :cond_2

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 120
    if-eqz v4, :cond_3

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/dolphin/browser/search/b/b;)V

    move v4, v2

    .line 116
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->b(Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/dolphin/browser/search/b/b;)V

    goto :goto_1
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/dolphin/browser/search/b/b;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 134
    invoke-virtual {p3}, Lcom/dolphin/browser/search/b/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v3, 0x7f060015

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/util/bb;->g(I)Lcom/e/a/z;

    move-result-object v1

    .line 138
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020331

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {p3}, Lcom/dolphin/browser/search/b/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 141
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 144
    const/high16 v2, 0x3f800000

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 145
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 146
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 147
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 148
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    return-void
.end method

.method private b(Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f0300d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020332

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 159
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 160
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected a(I)Z
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/util/BrowserUtil;->a(Ljava/lang/String;)Z

    move-result v0

    .line 191
    if-eqz v0, :cond_0

    const-string v0, "address_bar"

    move-object v1, v0

    .line 192
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 194
    iget-object v2, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 196
    const/4 v0, 0x0

    .line 213
    :goto_1
    return v0

    .line 191
    :cond_0
    const-string v0, "search_box"

    move-object v1, v0

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 199
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getVerticalSearchEngine()Lcom/dolphin/browser/search/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/search/g;->b()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    const-string v2, "Bellemaison"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/util/Regex;->WEB_URL_PATTERN:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.bellemaison.jp/ep/srvlt/EPFB00/EPFB0024/dHdExtSrchProc?BELN_SHOP_KBN=100&KEYWORD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    const-string v3, "Shift-JIS"

    invoke-static {v2, v3}, Lcom/c/b/e/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&KNSK_CTGR_TI=all&KNSK_ACT_KBN=0&HJJN_SITE=&HYJ_KNS_KBN=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    const-string v2, "Shift-JIS"

    invoke-static {v0, v2}, Lcom/c/b/e/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    .line 205
    :cond_2
    const-string v0, "android.intent.action.SEARCH"

    .line 206
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 207
    iget-object v3, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v2}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 208
    const-string v2, "engine_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string v2, "engine_entry"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 211
    invoke-direct {p0, v0}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(Landroid/content/Intent;)V

    .line 213
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/b/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;Lcom/dolphin/browser/search/b/b;)V

    .line 183
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/search/ui/SearchFloatingView;->a(I)Z

    .line 184
    const-string v1, "search"

    const-string v2, "vertical_engine"

    invoke-virtual {v0}, Lcom/dolphin/browser/search/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 168
    invoke-super {p0, p2}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 169
    const/4 v0, 0x1

    return v0
.end method
