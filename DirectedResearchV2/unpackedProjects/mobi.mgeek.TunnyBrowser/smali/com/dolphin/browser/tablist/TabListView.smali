.class public Lcom/dolphin/browser/tablist/TabListView;
.super Landroid/widget/LinearLayout;
.source "TabListView.java"

# interfaces
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/dolphin/browser/tablist/ca;

.field private d:Lcom/dolphin/browser/tablist/TabListBottomBar;

.field private e:Z

.field private f:Lcom/dolphin/browser/tablist/bw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    .line 36
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    .line 118
    new-instance v0, Lcom/dolphin/browser/tablist/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/cf;-><init>(Lcom/dolphin/browser/tablist/TabListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->f:Lcom/dolphin/browser/tablist/bw;

    .line 42
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    .line 36
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    .line 118
    new-instance v0, Lcom/dolphin/browser/tablist/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/cf;-><init>(Lcom/dolphin/browser/tablist/TabListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->f:Lcom/dolphin/browser/tablist/bw;

    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    .line 36
    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    .line 118
    new-instance v0, Lcom/dolphin/browser/tablist/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/cf;-><init>(Lcom/dolphin/browser/tablist/TabListView;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->f:Lcom/dolphin/browser/tablist/bw;

    .line 54
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 185
    :cond_0
    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 186
    const/16 v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 187
    const/16 v0, 0x3eb

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 188
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 189
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 190
    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 191
    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/TabListView;)Lcom/dolphin/browser/tablist/ca;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListView;->setOrientation(I)V

    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/tablist/TabListView;->a:Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->b(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->c(Landroid/content/Context;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->d(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/TabListView;Lcom/dolphin/browser/tablist/bz;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Lcom/dolphin/browser/tablist/bz;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/dolphin/browser/tablist/cg;->a:[I

    invoke-virtual {p1}, Lcom/dolphin/browser/tablist/bz;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 105
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0617

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0616

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0x13

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 72
    iget-object v2, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 73
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/tablist/TabListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/TabListView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->c()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/TabListView;Lcom/dolphin/browser/tablist/bz;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->b(Lcom/dolphin/browser/tablist/bz;)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/tablist/bz;)V
    .locals 4

    .prologue
    .line 150
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    if-ne p1, v0, :cond_0

    .line 151
    const-string v0, "DBS Cloud Tabs"

    const-string v1, "click"

    const-string v2, "cloud tabs"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 156
    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->t()Z

    .line 161
    const-string v0, "tablist"

    const-string v1, "clickbtn"

    const-string v2, "newtab"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->a()V

    .line 164
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 81
    new-instance v0, Lcom/dolphin/browser/tablist/ca;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/tablist/ca;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/tablist/TabListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/TabListView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->e()V

    return-void
.end method

.method private c(Lcom/dolphin/browser/tablist/bz;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 221
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ca;->n()V

    .line 171
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/tablist/TabListBottomBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    .line 90
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/tablist/TabListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/TabListView;->f:Lcom/dolphin/browser/tablist/bw;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/bw;)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 95
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/TabListView;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->d()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ca;->o()V

    .line 178
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ca;->l()V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a()V

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->h()V

    .line 248
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ca;->m()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->b()V

    .line 258
    :cond_1
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 262
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0129

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListView;->setBackgroundColor(I)V

    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02027d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0096

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->d:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c()V

    .line 268
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    .line 229
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->g()V

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 233
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/view/WindowManager$LayoutParams;Lcom/dolphin/browser/tablist/bz;)V
    .locals 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    if-eqz v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 202
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 207
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    .line 208
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/TabListView;->f()V

    .line 209
    invoke-direct {p0, p2}, Lcom/dolphin/browser/tablist/TabListView;->c(Lcom/dolphin/browser/tablist/bz;)V

    .line 210
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 212
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListView;->a(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/WindowManager;)V

    .line 213
    invoke-static {}, Lcom/dolphin/browser/util/dk;->a()Lcom/dolphin/browser/util/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/dk;->g()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 278
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-boolean v1, p0, Lcom/dolphin/browser/tablist/TabListView;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/TabListView;->a()V

    .line 284
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/tablist/TabListView;->c:Lcom/dolphin/browser/tablist/ca;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/ca;->e(I)V

    .line 293
    :cond_0
    return-void
.end method
