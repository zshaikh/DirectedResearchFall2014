.class public Lcom/facebook/orca/compose/LocationNuxView;
.super Lcom/facebook/orca/activity/CustomView;
.source "LocationNuxView.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Lcom/facebook/orca/prefs/UiCounters;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageButton;

.field private e:Z

.field private f:Lcom/facebook/orca/compose/ComposeMode;

.field private g:Lcom/facebook/orca/prefs/UiCounters$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    .line 42
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->b()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    .line 47
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->b()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    .line 52
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->b()V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxView;)Z
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/compose/LocationNuxView;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/facebook/orca/compose/LocationNuxView;->e:Z

    return p1
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/facebook/orca/compose/LocationNuxView;->a()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v1

    .line 57
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->a:Landroid/view/LayoutInflater;

    .line 58
    const-class v0, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/prefs/UiCounters;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    .line 61
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->setVisibility(I)V

    .line 63
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->e:Z

    .line 64
    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->e:Z

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxView$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/LocationNuxView$1;-><init>(Lcom/facebook/orca/compose/LocationNuxView;)V

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->g:Lcom/facebook/orca/prefs/UiCounters$Listener;

    .line 78
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxView;->g:Lcom/facebook/orca/prefs/UiCounters$Listener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Lcom/facebook/orca/prefs/UiCounters$Listener;)V

    .line 81
    invoke-virtual {p0, v6}, Lcom/facebook/orca/compose/LocationNuxView;->setClickable(Z)V

    .line 83
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->a(I)V

    .line 84
    const v0, 0x7f080079

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->c:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f08007a

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->d:Landroid/widget/ImageButton;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/compose/LocationNuxView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const v2, 0x7f0a008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    const v3, 0x7f0a0090

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxView;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->d:Landroid/widget/ImageButton;

    new-instance v1, Lcom/facebook/orca/compose/LocationNuxView$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/compose/LocationNuxView$2;-><init>(Lcom/facebook/orca/compose/LocationNuxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/compose/LocationNuxView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->d()V

    return-void
.end method

.method static synthetic c(Lcom/facebook/orca/compose/LocationNuxView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->f()V

    return-void
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "send_clicked"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->a(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->e:Z

    if-eqz v0, :cond_1

    .line 132
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_1
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxView$3;

    invoke-direct {v0, p0}, Lcom/facebook/orca/compose/LocationNuxView$3;-><init>(Lcom/facebook/orca/compose/LocationNuxView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/orca/compose/LocationNuxView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/facebook/orca/compose/LocationNuxView;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    sget-object v1, Lcom/facebook/orca/compose/ComposeMode;->EXPANDED:Lcom/facebook/orca/compose/ComposeMode;

    if-eq v0, v1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->setVisibility(I)V

    .line 148
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 149
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 151
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/compose/LocationNuxView;->b:Lcom/facebook/orca/prefs/UiCounters;

    const-string v1, "dismissed_location_nux"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/prefs/UiCounters;->c(Ljava/lang/String;)V

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/orca/compose/LocationNuxView;->setVisibility(I)V

    .line 158
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 105
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomView;->onLayout(ZIIII)V

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/facebook/orca/compose/LocationNuxView;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p0}, Lcom/facebook/orca/compose/LocationNuxView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/facebook/orca/common/util/SizeUtil;->a(Landroid/content/Context;I)I

    move-result v1

    .line 111
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 112
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 113
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 114
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 115
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/facebook/orca/compose/LocationNuxView;->d:Landroid/widget/ImageButton;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 116
    invoke-virtual {p0, v1}, Lcom/facebook/orca/compose/LocationNuxView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 118
    :cond_0
    return-void
.end method

.method public setComposeMode(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/facebook/orca/compose/LocationNuxView;->f:Lcom/facebook/orca/compose/ComposeMode;

    .line 127
    invoke-direct {p0}, Lcom/facebook/orca/compose/LocationNuxView;->d()V

    .line 128
    return-void
.end method
