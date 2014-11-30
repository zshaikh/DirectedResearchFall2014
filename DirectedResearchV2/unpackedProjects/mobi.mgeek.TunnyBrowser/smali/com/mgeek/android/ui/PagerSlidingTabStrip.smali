.class public Lcom/mgeek/android/ui/PagerSlidingTabStrip;
.super Landroid/widget/HorizontalScrollView;
.source "PagerSlidingTabStrip.java"


# static fields
.field private static final b:[I


# instance fields
.field private A:Landroid/graphics/Typeface;

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Ljava/util/Locale;

.field private H:Z

.field public a:Landroid/support/v4/view/cc;

.field private c:Landroid/widget/LinearLayout$LayoutParams;

.field private d:Landroid/widget/LinearLayout$LayoutParams;

.field private final e:Lcom/mgeek/android/ui/aq;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v4/view/ViewPager;

.field private h:I

.field private i:I

.field private j:F

.field private k:Landroid/graphics/Paint;

.field private l:Landroid/graphics/Paint;

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010095
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/high16 v6, 0x1a000000

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lcom/mgeek/android/ui/aq;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mgeek/android/ui/aq;-><init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;Lcom/mgeek/android/ui/am;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->e:Lcom/mgeek/android/ui/aq;

    .line 72
    iput v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    .line 78
    iput-boolean v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->m:Z

    .line 80
    const v0, -0x99999a

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->n:I

    .line 81
    iput v6, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->o:I

    .line 82
    iput v6, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->p:I

    .line 84
    iput-boolean v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    .line 85
    iput-boolean v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->r:Z

    .line 87
    const/16 v0, 0x34

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    .line 88
    iput v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    .line 89
    iput v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    .line 90
    const/16 v0, 0xc

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    .line 91
    const/16 v0, 0x18

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    .line 92
    iput v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    .line 94
    const/16 v0, 0x10

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->A:Landroid/graphics/Typeface;

    .line 97
    iput v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->B:I

    .line 99
    iput v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->C:I

    .line 101
    iput v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->D:I

    .line 102
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->E:Z

    .line 103
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->F:Z

    .line 428
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->H:Z

    .line 118
    invoke-virtual {p0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->setFillViewport(Z)V

    .line 119
    invoke-virtual {p0, v4}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->setWillNotDraw(Z)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 123
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 128
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    .line 129
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    .line 130
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    .line 131
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    .line 132
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    .line 133
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    .line 134
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    int-to-float v2, v2

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    .line 138
    sget-object v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    .line 141
    const v2, -0x777778

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->z:Landroid/content/res/ColorStateList;

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v0, Lmobi/mgeek/TunnyBrowser/R$styleable;->PagerSlidingTabStrip:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 148
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->n:I

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->n:I

    .line 149
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->o:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->o:I

    .line 150
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->p:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->p:I

    .line 151
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v0, 0x3

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    .line 152
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v0, 0x4

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    .line 153
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v0, 0x5

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    .line 154
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v0, 0x6

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    .line 155
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v0, 0x8

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->D:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->D:I

    .line 156
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v0, 0x9

    iget-boolean v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    .line 157
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v0, 0x7

    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    .line 158
    sget-object v0, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v0, 0xa

    iget-boolean v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->r:Z

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->r:Z

    .line 160
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    .line 161
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    .line 162
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    .line 164
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    .line 167
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 168
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    .line 171
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    .line 180
    :cond_0
    return-void

    .line 160
    :cond_1
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    goto :goto_0

    .line 161
    :cond_2
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    goto :goto_1

    .line 162
    :cond_3
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->x:I

    goto :goto_2
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;F)F
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    return p1
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    return p1
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 270
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 271
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 273
    new-instance v1, Lcom/mgeek/android/ui/ao;

    invoke-direct {v1, p0, p1}, Lcom/mgeek/android/ui/ao;-><init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 253
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 256
    new-instance v1, Lcom/mgeek/android/ui/an;

    invoke-direct {v1, p0, p1}, Lcom/mgeek/android/ui/an;-><init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 265
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;II)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(II)V

    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 286
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_3

    .line 288
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 290
    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->D:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 291
    iget-boolean v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    if-eqz v3, :cond_1

    .line 292
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 298
    :goto_1
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 300
    check-cast v0, Landroid/widget/TextView;

    .line 301
    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 302
    iget-object v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->A:Landroid/graphics/Typeface;

    iget v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->B:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 303
    iget-object v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->z:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    iget-boolean v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->r:Z

    if-eqz v3, :cond_0

    .line 308
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    .line 309
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 286
    :cond_0
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->c:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget v3, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    iget v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->w:I

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 311
    :cond_2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->G:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 317
    :cond_3
    return-void
.end method

.method private b(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 347
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_1

    .line 375
    :cond_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    .line 353
    if-gtz p1, :cond_2

    if-lez p2, :cond_3

    .line 354
    :cond_2
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->s:I

    sub-int/2addr v0, v2

    .line 357
    :cond_3
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->C:I

    if-eq v0, v2, :cond_4

    .line 358
    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->C:I

    .line 359
    invoke-virtual {p0, v0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->scrollTo(II)V

    .line 362
    :cond_4
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->H:Z

    if-eqz v0, :cond_0

    .line 363
    iput-boolean v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->H:Z

    .line 364
    iget-object v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    .line 365
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v0, v1

    .line 366
    :goto_0
    if-ge v0, v3, :cond_0

    .line 367
    if-ne v0, p1, :cond_5

    .line 368
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setSelected(Z)V

    .line 366
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_5
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 212
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v0

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    move v1, v2

    .line 214
    :goto_0
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    instance-of v0, v0, Lcom/mgeek/android/ui/ap;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/ap;

    invoke-interface {v0, v1}, Lcom/mgeek/android/ui/ap;->a(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(II)V

    .line 214
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ae;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_1
    invoke-direct {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b()V

    .line 226
    iput-boolean v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->m:Z

    .line 228
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mgeek/android/ui/am;

    invoke-direct {v1, p0}, Lcom/mgeek/android/ui/am;-><init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 246
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 470
    iput p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->n:I

    .line 471
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 472
    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->z:Landroid/content/res/ColorStateList;

    .line 575
    invoke-direct {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b()V

    .line 576
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->g:Landroid/support/v4/view/ViewPager;

    .line 195
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->e:Lcom/mgeek/android/ui/aq;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/cc;)V

    .line 201
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a()V

    .line 202
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->E:Z

    .line 184
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 185
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 493
    iput p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->o:I

    .line 494
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 495
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->F:Z

    .line 189
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 190
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 507
    iput p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->p:I

    .line 508
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->invalidate()V

    .line 509
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    .line 549
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->requestLayout()V

    .line 550
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000

    const/4 v1, 0x0

    .line 379
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-nez v0, :cond_1

    .line 426
    :cond_0
    return-void

    .line 385
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getHeight()I

    move-result v7

    .line 387
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->E:Z

    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->u:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 399
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    .line 401
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v3, v2

    .line 404
    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 406
    iget-object v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    .line 408
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v4, v1

    .line 410
    iget v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    sub-float v2, v6, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    .line 411
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    mul-float/2addr v0, v4

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->j:F

    sub-float v2, v6, v2

    mul-float/2addr v2, v3

    add-float v3, v0, v2

    .line 414
    :goto_0
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->t:I

    sub-int v0, v7, v0

    int-to-float v2, v0

    int-to-float v4, v7

    iget-object v5, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 417
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->F:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->p:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 421
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->v:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 323
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->q:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getMeasuredWidth()I

    move-result v3

    move v0, v1

    move v2, v1

    .line 329
    :goto_1
    iget v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-ge v0, v4, :cond_2

    .line 330
    iget-object v4, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_2
    iget-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->m:Z

    if-nez v0, :cond_0

    if-lez v2, :cond_0

    if-lez v3, :cond_0

    .line 335
    if-gt v2, v3, :cond_3

    .line 336
    :goto_2
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->h:I

    if-ge v1, v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->d:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->m:Z

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 616
    check-cast p1, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    .line 617
    invoke-virtual {p1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 618
    iget v0, p1, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;->a:I

    iput v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    .line 619
    invoke-virtual {p0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->requestLayout()V

    .line 620
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 624
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;

    invoke-direct {v1, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 626
    iget v0, p0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->i:I

    iput v0, v1, Lcom/mgeek/android/ui/PagerSlidingTabStrip$SavedState;->a:I

    .line 627
    return-object v1
.end method
