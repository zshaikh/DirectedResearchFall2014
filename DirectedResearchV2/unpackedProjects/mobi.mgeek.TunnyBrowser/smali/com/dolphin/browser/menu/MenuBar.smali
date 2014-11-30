.class public Lcom/dolphin/browser/menu/MenuBar;
.super Landroid/widget/LinearLayout;
.source "MenuBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/dolphin/browser/ui/OrientationChangedListener;
.implements Ljava/util/Observer;
.implements Lmobi/mgeek/TunnyBrowser/ft;


# static fields
.field public static final a:[I

.field public static final b:[I


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/menu/x;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/g/a/d;

.field private h:Lcom/g/a/s;

.field private i:Lcom/g/a/s;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/menu/MenuBar;->a:[I

    .line 76
    new-array v0, v1, [I

    const/4 v1, 0x0

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060028

    aput v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06002d

    aput v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060034

    aput v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060043

    aput v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060040

    aput v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060036

    aput v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f06002f

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v2, 0x7f060033

    aput v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/menu/MenuBar;->b:[I

    return-void

    .line 68
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/MenuBar;->a(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/MenuBar;->a(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public static a(I)V
    .locals 3

    .prologue
    .line 381
    const-string v0, ""

    .line 382
    packed-switch p0, :pswitch_data_0

    .line 404
    :goto_0
    const-string v1, "toolbar"

    const-string v2, "clickbtn"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void

    .line 384
    :pswitch_0
    const-string v0, "back"

    goto :goto_0

    .line 387
    :pswitch_1
    const-string v0, "forward"

    goto :goto_0

    .line 390
    :pswitch_2
    const-string v0, "stop"

    goto :goto_0

    .line 393
    :pswitch_3
    const-string v0, "menu"

    goto :goto_0

    .line 396
    :pswitch_4
    const-string v0, "home"

    goto :goto_0

    .line 399
    :pswitch_5
    const-string v0, "tablist"

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    iput-object p1, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 107
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->d:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    invoke-static {p0}, Lcom/dolphin/browser/util/at;->a(Lcom/dolphin/browser/ui/OrientationChangedListener;)V

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setOrientation(I)V

    .line 112
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setGravity(I)V

    .line 114
    invoke-direct {p0}, Lcom/dolphin/browser/menu/MenuBar;->f()V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/x;

    .line 116
    new-instance v3, Lcom/dolphin/browser/menu/t;

    invoke-direct {v3, p1}, Lcom/dolphin/browser/menu/t;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/t;->a(Lcom/dolphin/browser/menu/x;)V

    .line 118
    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3, v1}, Lcom/dolphin/browser/menu/MenuBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v3, p0}, Lcom/dolphin/browser/menu/t;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .line 132
    :goto_1
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/t;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 134
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/t;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 123
    :pswitch_1
    new-instance v0, Lcom/dolphin/browser/h/f;

    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v4}, Lcom/dolphin/browser/h/f;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 124
    invoke-direct {p0, v3}, Lcom/dolphin/browser/menu/MenuBar;->a(Lcom/dolphin/browser/menu/t;)V

    goto :goto_1

    .line 127
    :pswitch_2
    new-instance v0, Lcom/dolphin/browser/h/h;

    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v4}, Lcom/dolphin/browser/h/h;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/g;->a()V

    .line 140
    invoke-direct {p0}, Lcom/dolphin/browser/menu/MenuBar;->g()V

    .line 141
    invoke-direct {p0}, Lcom/dolphin/browser/menu/MenuBar;->h()V

    .line 142
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->a()V

    .line 143
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lcom/dolphin/browser/menu/t;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x2

    .line 147
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 152
    iget-object v2, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v1, v0}, Lcom/dolphin/browser/menu/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-direct {p0}, Lcom/dolphin/browser/menu/MenuBar;->e()V

    .line 155
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/MenuBar;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->j:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/dolphin/browser/tablist/cc;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->c:Ljava/util/List;

    .line 203
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 204
    sget-object v1, Lcom/dolphin/browser/menu/MenuBar;->a:[I

    aget v1, v1, v0

    .line 205
    new-instance v2, Lcom/dolphin/browser/menu/x;

    invoke-direct {v2, v1}, Lcom/dolphin/browser/menu/x;-><init>(I)V

    .line 206
    new-instance v3, Lcom/dolphin/browser/c/q;

    invoke-direct {v3, v1}, Lcom/dolphin/browser/c/q;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/menu/x;->a(Lcom/dolphin/browser/c/a;)V

    .line 208
    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/menu/x;->c(Z)V

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->h:Lcom/g/a/s;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Lcom/g/a/s;

    invoke-direct {v0}, Lcom/g/a/s;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->h:Lcom/g/a/s;

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->h:Lcom/g/a/s;

    invoke-virtual {v0, p0}, Lcom/g/a/s;->a(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->h:Lcom/g/a/s;

    const-string v1, "translationY"

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Lcom/g/a/s;

    invoke-direct {v0}, Lcom/g/a/s;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    .line 272
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    invoke-virtual {v0, p0}, Lcom/g/a/s;->a(Ljava/lang/Object;)V

    .line 273
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/g/a/s;->a(Landroid/view/animation/Interpolator;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->g:Lcom/g/a/d;

    if-nez v0, :cond_2

    .line 277
    new-instance v0, Lcom/g/a/d;

    invoke-direct {v0}, Lcom/g/a/d;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->g:Lcom/g/a/d;

    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->g:Lcom/g/a/d;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/g/a/a;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/menu/MenuBar;->h:Lcom/g/a/s;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/menu/MenuBar;->i:Lcom/g/a/s;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/g/a/d;->a([Lcom/g/a/a;)V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->g:Lcom/g/a/d;

    new-instance v1, Lcom/dolphin/browser/menu/s;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/menu/s;-><init>(Lcom/dolphin/browser/menu/MenuBar;)V

    invoke-virtual {v0, v1}, Lcom/g/a/d;->a(Lcom/g/a/b;)V

    .line 302
    :cond_2
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    .line 306
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->k:Z

    .line 307
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->l:Z

    .line 309
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->m:Z

    .line 311
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 313
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 315
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 317
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->b()V

    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 219
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/menu/MenuBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/menu/t;

    .line 220
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/t;->b()V

    .line 218
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202c4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 226
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v1, p0, Lcom/dolphin/browser/menu/MenuBar;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 374
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dolphin/browser/menu/MenuBar;->e:Landroid/content/Context;

    check-cast v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->Y()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 375
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/menu/MenuBar;->draw(Landroid/graphics/Canvas;)V

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setVisibility(I)V

    .line 335
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 233
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setBackgroundColor(I)V

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->setVisibility(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 173
    instance-of v0, p1, Lcom/dolphin/browser/menu/t;

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    check-cast p1, Lcom/dolphin/browser/menu/t;

    .line 177
    invoke-virtual {p1}, Lcom/dolphin/browser/menu/t;->a()Lcom/dolphin/browser/menu/x;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->a()Lcom/dolphin/browser/c/a;

    move-result-object v1

    .line 185
    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v1}, Lcom/dolphin/browser/c/a;->a()Z

    .line 190
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/x;->g()I

    move-result v1

    .line 191
    const/4 v0, 0x5

    if-ne v0, v1, :cond_2

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dolphin/browser/tablist/cc;->c(Z)V

    .line 193
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/k/a;->c()V

    .line 196
    :cond_2
    invoke-static {v1}, Lcom/dolphin/browser/menu/MenuBar;->a(I)V

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    .line 246
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->b(Z)V

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->a()V

    .line 252
    return-void

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->a(Z)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    .line 348
    instance-of v0, p1, Lcom/dolphin/browser/k/c;

    if-eqz v0, :cond_1

    .line 349
    check-cast p1, Lcom/dolphin/browser/k/c;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/c;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->k:Z

    .line 360
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->b(Z)V

    .line 365
    :goto_1
    return-void

    .line 350
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/k/e;

    if-eqz v0, :cond_2

    .line 351
    check-cast p1, Lcom/dolphin/browser/k/e;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->l:Z

    .line 352
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/MenuBar;->a()V

    .line 353
    iput-boolean v1, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    goto :goto_0

    .line 354
    :cond_2
    instance-of v0, p1, Lcom/dolphin/browser/k/b;

    if-eqz v0, :cond_3

    .line 355
    check-cast p1, Lcom/dolphin/browser/k/b;

    invoke-virtual {p1}, Lcom/dolphin/browser/k/b;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->m:Z

    goto :goto_0

    .line 357
    :cond_3
    instance-of v0, p1, Lcom/dolphin/browser/k/a;

    if-eqz v0, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/dolphin/browser/menu/MenuBar;->e()V

    goto :goto_0

    .line 363
    :cond_4
    iget-boolean v0, p0, Lcom/dolphin/browser/menu/MenuBar;->n:Z

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/MenuBar;->a(Z)V

    goto :goto_1
.end method
