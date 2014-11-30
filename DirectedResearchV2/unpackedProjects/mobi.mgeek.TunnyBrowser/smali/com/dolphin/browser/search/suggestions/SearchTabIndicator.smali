.class public Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;
.super Landroid/view/View;
.source "SearchTabIndicator.java"

# interfaces
.implements Lcom/dolphin/browser/search/suggestions/j;


# instance fields
.field private A:Lcom/dolphin/browser/search/suggestions/x;

.field private a:Landroid/support/v4/view/ViewPager;

.field private b:Landroid/support/v4/view/cc;

.field private c:I

.field private d:F

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private g:Z

.field private h:I

.field private i:I

.field private j:Landroid/graphics/Path;

.field private final k:Landroid/graphics/Rect;

.field private final l:Landroid/graphics/Paint;

.field private m:Lcom/dolphin/browser/search/suggestions/v;

.field private n:Lcom/dolphin/browser/search/suggestions/w;

.field private final o:Landroid/graphics/Paint;

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:F

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01009d

    invoke-direct {p0, p1, p2, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21

    .prologue
    .line 146
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 106
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    .line 110
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    .line 111
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->k:Landroid/graphics/Rect;

    .line 112
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    .line 115
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    .line 128
    const/high16 v5, -0x40800000

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->x:F

    .line 129
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->y:I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 152
    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a003b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 153
    sget-object v7, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v7, 0x7f0b0059

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 155
    sget-object v8, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v8, 0x7f0c0010

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 157
    sget-object v9, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v9, 0x7f0b0057

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 159
    sget-object v10, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v10, 0x7f0b0058

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 161
    sget-object v11, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v11, 0x7f0b005a

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 163
    sget-object v12, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v12, 0x7f0c0011

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 165
    sget-object v13, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v13, 0x7f0a003c

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 167
    sget-object v14, Lcom/dolphin/browser/n/a;->q:Lmobi/mgeek/TunnyBrowser/R$bool;

    const v14, 0x7f090004

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 169
    sget-object v15, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v15, 0x7f0a003d

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 170
    sget-object v16, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v16, 0x7f0b005b

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v16

    .line 171
    sget-object v17, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v17, 0x7f0b005c

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 173
    sget-object v18, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v18, 0x7f0b0056

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 175
    sget-object v19, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v19, 0x7f0b005d

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 179
    sget-object v19, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    sget-object v19, Lmobi/mgeek/TunnyBrowser/R$styleable;->SearchTabIndicator:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 183
    sget-object v20, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    .line 185
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v7, 0x7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/dolphin/browser/search/suggestions/v;->a(I)Lcom/dolphin/browser/search/suggestions/v;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->m:Lcom/dolphin/browser/search/suggestions/v;

    .line 187
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v7, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->p:F

    .line 189
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v7, 0x9

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->q:F

    .line 192
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v7, 0xa

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->r:F

    .line 194
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v7, 0xb

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    invoke-static {v7}, Lcom/dolphin/browser/search/suggestions/w;->a(I)Lcom/dolphin/browser/search/suggestions/w;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->n:Lcom/dolphin/browser/search/suggestions/w;

    .line 196
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v7, 0xe

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->t:F

    .line 197
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v5, 0xd

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    .line 199
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v5, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    .line 201
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v5, 0x3

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->i:I

    .line 203
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->h:I

    .line 204
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/16 v5, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->g:Z

    .line 206
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 208
    sget-object v7, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v7, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 210
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    sget-object v5, Lcom/dolphin/browser/n/a;->o:Lmobi/mgeek/TunnyBrowser/R$styleable;

    const/4 v5, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 219
    if-eqz v5, :cond_1

    .line 220
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    .line 226
    invoke-static {v5}, Landroid/support/v4/view/bj;->a(Landroid/view/ViewConfiguration;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->w:I

    goto/16 :goto_0
.end method

.method private a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 755
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 756
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->g(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 757
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 758
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 759
    return-object v0
.end method

.method private a(Landroid/graphics/Paint;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 728
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ae;->a()I

    move-result v3

    .line 729
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getWidth()I

    move-result v4

    .line 730
    div-int/lit8 v5, v4, 0x2

    move v0, v1

    .line 731
    :goto_0
    if-ge v0, v3, :cond_0

    .line 732
    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(ILandroid/graphics/Paint;)Landroid/graphics/Rect;

    move-result-object v6

    .line 733
    iget v7, v6, Landroid/graphics/Rect;->right:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 734
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    .line 735
    int-to-float v9, v5

    int-to-float v10, v7

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    iget v10, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d:F

    sub-float/2addr v10, v11

    int-to-float v11, v4

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->left:I

    .line 736
    iget v9, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/graphics/Rect;->right:I

    .line 737
    iput v1, v6, Landroid/graphics/Rect;->top:I

    .line 738
    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 739
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    :cond_0
    return-object v2
.end method

.method private a(Landroid/graphics/Rect;FI)V
    .locals 2

    .prologue
    .line 702
    int-to-float v0, p3

    iget v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 703
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 704
    return-void
.end method

.method private b(Landroid/graphics/Rect;FI)V
    .locals 2

    .prologue
    .line 714
    int-to-float v0, p3

    iget v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 715
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    add-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 716
    return-void
.end method

.method private g(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ae;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 939
    if-nez v0, :cond_0

    .line 940
    const-string v0, ""

    .line 942
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .prologue
    .line 248
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    .line 249
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 250
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 251
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 838
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->e:I

    if-nez v0, :cond_0

    .line 839
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 840
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 843
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cc;->a(I)V

    .line 846
    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 1

    .prologue
    .line 826
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 827
    iput p2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d:F

    .line 828
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 830
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/cc;->a(IFI)V

    .line 833
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 777
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/cc;)V

    .line 771
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v0

    if-nez v0, :cond_2

    .line 772
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_2
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    .line 775
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/cc;)V

    .line 776
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    goto :goto_0
.end method

.method public a(Landroid/support/v4/view/cc;)V
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    .line 852
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/suggestions/v;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->m:Lcom/dolphin/browser/search/suggestions/v;

    .line 283
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 284
    return-void
.end method

.method public a(Lcom/dolphin/browser/search/suggestions/x;)V
    .locals 0

    .prologue
    .line 799
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->A:Lcom/dolphin/browser/search/suggestions/x;

    .line 800
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->g:Z

    .line 316
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 317
    return-void
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 260
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->p:F

    .line 261
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 262
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 816
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->e:I

    .line 818
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b:Landroid/support/v4/view/cc;

    invoke-interface {v0, p1}, Landroid/support/v4/view/cc;->b(I)V

    .line 821
    :cond_0
    return-void
.end method

.method public c(F)V
    .locals 0

    .prologue
    .line 349
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    .line 350
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 351
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 239
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 304
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->i:I

    .line 305
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 306
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->h:I

    .line 328
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 329
    return-void
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 809
    iput p1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 810
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->invalidate()V

    .line 811
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26

    .prologue
    .line 393
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-nez v2, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->a()I

    move-result v16

    .line 399
    if-eqz v16, :cond_0

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 410
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Landroid/graphics/Paint;)Ljava/util/ArrayList;

    move-result-object v17

    .line 411
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 414
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    move/from16 v0, v18

    if-lt v2, v0, :cond_3

    .line 415
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f(I)V

    goto :goto_0

    .line 419
    :cond_3
    add-int/lit8 v5, v16, -0x1

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    div-float v19, v2, v3

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getLeft()I

    move-result v20

    .line 422
    move/from16 v0, v20

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    add-float v6, v2, v3

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getWidth()I

    move-result v21

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getHeight()I

    move-result v12

    .line 425
    add-int v22, v20, v21

    .line 426
    move/from16 v0, v22

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->u:F

    sub-float v7, v2, v3

    .line 428
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 430
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d:F

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d:F

    move v15, v3

    move v3, v2

    .line 436
    :goto_1
    const v2, 0x3ecccccd

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_8

    const/4 v2, 0x1

    move v14, v2

    .line 437
    :goto_2
    const v2, 0x3d4ccccd

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_9

    const/4 v2, 0x1

    move v10, v2

    .line 438
    :goto_3
    const v2, 0x3ecccccd

    sub-float/2addr v2, v3

    const v3, 0x3ecccccd

    div-float v23, v2, v3

    .line 442
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 443
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 444
    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    .line 446
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 448
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpl-float v4, v4, v7

    if-lez v4, :cond_5

    .line 450
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 454
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    if-lez v2, :cond_a

    .line 455
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    move v4, v2

    :goto_4
    if-ltz v4, :cond_a

    .line 456
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 458
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    .line 459
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v3, v8

    .line 461
    int-to-float v3, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v3, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->b(Landroid/graphics/Rect;FI)V

    .line 463
    add-int/lit8 v3, v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 465
    iget v9, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    add-float/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpl-float v9, v9, v11

    if-lez v9, :cond_6

    .line 466
    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v9, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    sub-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 467
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v8

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 455
    :cond_6
    add-int/lit8 v2, v4, -0x1

    move v4, v2

    goto :goto_4

    .line 433
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 434
    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->d:F

    sub-float/2addr v2, v4

    move v15, v3

    move v3, v2

    goto/16 :goto_1

    .line 436
    :cond_8
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_2

    .line 437
    :cond_9
    const/4 v2, 0x0

    move v10, v2

    goto/16 :goto_3

    .line 473
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    if-ge v2, v5, :cond_c

    .line 474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    move v4, v2

    :goto_5
    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 475
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 477
    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_b

    .line 478
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    .line 480
    int-to-float v3, v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v3, v1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a(Landroid/graphics/Rect;FI)V

    .line 482
    add-int/lit8 v3, v4, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 484
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    sub-float/2addr v6, v8

    iget v8, v3, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_b

    .line 485
    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    add-float/2addr v3, v6

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 486
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 474
    :cond_b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    .line 493
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->h:I

    ushr-int/lit8 v24, v2, 0x18

    .line 494
    const/4 v2, 0x0

    move v13, v2

    :goto_6
    move/from16 v0, v16

    if-ge v13, v0, :cond_14

    .line 496
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 498
    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v20

    if-le v2, v0, :cond_d

    iget v2, v9, Landroid/graphics/Rect;->left:I

    move/from16 v0, v22

    if-lt v2, v0, :cond_e

    :cond_d
    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v20

    if-le v2, v0, :cond_11

    iget v2, v9, Landroid/graphics/Rect;->right:I

    move/from16 v0, v22

    if-ge v2, v0, :cond_11

    .line 500
    :cond_e
    if-ne v13, v15, :cond_12

    const/4 v2, 0x1

    move v11, v2

    .line 501
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->g(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    if-eqz v11, :cond_13

    if-eqz v10, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->g:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->h:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    if-eqz v11, :cond_f

    if-eqz v14, :cond_f

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move/from16 v0, v24

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v4, v4

    sub-int v4, v24, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 514
    :cond_f
    add-int/lit8 v2, v18, -0x1

    if-ge v13, v2, :cond_10

    .line 515
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 517
    iget v4, v9, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    add-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_10

    .line 518
    iget v4, v9, Landroid/graphics/Rect;->right:I

    iget v5, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 519
    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->s:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 520
    iget v2, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 523
    :cond_10
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 527
    if-eqz v11, :cond_11

    if-eqz v14, :cond_11

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->i:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->i:I

    ushr-int/lit8 v4, v4, 0x18

    int-to-float v4, v4

    mul-float v4, v4, v23

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 530
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget v2, v9, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->t:F

    add-float/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 494
    :cond_11
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_6

    .line 500
    :cond_12
    const/4 v2, 0x0

    move v11, v2

    goto/16 :goto_7

    .line 504
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 538
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    .line 539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->p:F

    .line 540
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->n:Lcom/dolphin/browser/search/suggestions/w;

    sget-object v5, Lcom/dolphin/browser/search/suggestions/w;->b:Lcom/dolphin/browser/search/suggestions/w;

    if-ne v4, v5, :cond_15

    .line 541
    const/4 v4, 0x0

    .line 542
    neg-float v3, v3

    .line 543
    neg-float v2, v2

    move/from16 v25, v2

    move v2, v3

    move/from16 v3, v25

    .line 547
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 548
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    const/4 v6, 0x0

    int-to-float v7, v4

    const/high16 v8, 0x40000000

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 549
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v7, v4

    const/high16 v8, 0x40000000

    div-float v8, v2, v8

    sub-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 551
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->l:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 553
    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 554
    sget-object v2, Lcom/dolphin/browser/search/suggestions/u;->a:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->m:Lcom/dolphin/browser/search/suggestions/v;

    invoke-virtual {v5}, Lcom/dolphin/browser/search/suggestions/v;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 556
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    sub-float v5, v4, v3

    move/from16 v0, v19

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    add-float v5, v19, v3

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    sub-float v3, v19, v3

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 565
    :pswitch_1
    if-eqz v14, :cond_0

    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 569
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 570
    iget v5, v2, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->q:F

    add-float/2addr v5, v6

    .line 572
    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->q:F

    sub-float/2addr v2, v6

    .line 574
    sub-float v3, v4, v3

    .line 577
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 578
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 579
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000

    mul-float v3, v3, v23

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->j:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->o:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    :cond_15
    move v4, v12

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto/16 :goto_9

    .line 554
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 858
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 862
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 863
    const/high16 v2, 0x40000000

    if-ne v0, v2, :cond_1

    .line 865
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 876
    :cond_0
    :goto_0
    float-to-int v0, v0

    .line 878
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->setMeasuredDimension(II)V

    .line 879
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 869
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 870
    iget-object v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->v:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->r:F

    add-float/2addr v0, v2

    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->t:F

    add-float/2addr v0, v2

    .line 872
    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->m:Lcom/dolphin/browser/search/suggestions/v;

    sget-object v3, Lcom/dolphin/browser/search/suggestions/v;->a:Lcom/dolphin/browser/search/suggestions/v;

    if-eq v2, v3, :cond_0

    .line 873
    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->p:F

    add-float/2addr v0, v2

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 884
    check-cast p1, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;

    .line 885
    invoke-virtual {p1}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 886
    iget v0, p1, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->a:I

    iput v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    .line 887
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->requestLayout()V

    .line 888
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 893
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 894
    new-instance v1, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 895
    iget v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    iput v0, v1, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator$SavedState;->a:I

    .line 896
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 593
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ae;->a()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 597
    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 601
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 603
    :pswitch_0
    invoke-static {p1, v1}, Landroid/support/v4/view/z;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->y:I

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->x:F

    goto :goto_0

    .line 608
    :pswitch_1
    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->y:I

    invoke-static {p1, v2}, Landroid/support/v4/view/z;->a(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 610
    if-eq v2, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-lt v2, v3, :cond_5

    :cond_4
    move v0, v1

    .line 612
    goto :goto_0

    .line 614
    :cond_5
    invoke-static {p1, v2}, Landroid/support/v4/view/z;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 615
    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->x:F

    sub-float v2, v1, v2

    .line 617
    iget-boolean v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->z:Z

    if-nez v3, :cond_6

    .line 618
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->w:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 619
    iput-boolean v0, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->z:Z

    .line 623
    :cond_6
    iget-boolean v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->z:Z

    if-eqz v3, :cond_0

    .line 624
    iput v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->x:F

    .line 625
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->h()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 626
    :cond_7
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->b(F)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-boolean v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->z:Z

    if-nez v3, :cond_a

    .line 636
    iget-object v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/ae;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ae;->a()I

    move-result v3

    .line 637
    invoke-virtual {p0}, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->getWidth()I

    move-result v4

    .line 638
    int-to-float v5, v4

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    .line 639
    int-to-float v4, v4

    const/high16 v6, 0x40c00000

    div-float/2addr v4, v6

    .line 640
    sub-float v6, v5, v4

    .line 641
    add-float/2addr v4, v5

    .line 642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 644
    cmpg-float v6, v5, v6

    if-gez v6, :cond_8

    .line 645
    iget v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    if-lez v3, :cond_a

    .line 646
    if-eq v2, v7, :cond_0

    .line 647
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_0

    .line 651
    :cond_8
    cmpl-float v4, v5, v4

    if-lez v4, :cond_9

    .line 652
    iget v4, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_a

    .line 653
    if-eq v2, v7, :cond_0

    .line 654
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(I)V

    goto/16 :goto_0

    .line 660
    :cond_9
    iget-object v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->A:Lcom/dolphin/browser/search/suggestions/x;

    if-eqz v3, :cond_a

    if-eq v2, v7, :cond_a

    .line 661
    iget-object v2, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->A:Lcom/dolphin/browser/search/suggestions/x;

    iget v3, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->c:I

    invoke-interface {v2, v3}, Lcom/dolphin/browser/search/suggestions/x;->a(I)V

    .line 666
    :cond_a
    iput-boolean v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->z:Z

    .line 667
    iput v8, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->y:I

    .line 668
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/dolphin/browser/search/suggestions/SearchTabIndicator;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->g()V

    goto/16 :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
