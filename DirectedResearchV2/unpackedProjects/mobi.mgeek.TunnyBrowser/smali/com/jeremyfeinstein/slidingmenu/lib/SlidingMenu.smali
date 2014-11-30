.class public Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
.super Landroid/widget/RelativeLayout;
.source "SlidingMenu.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

.field private e:Lcom/jeremyfeinstein/slidingmenu/lib/j;

.field private f:Lcom/jeremyfeinstein/slidingmenu/lib/j;

.field private g:Lcom/jeremyfeinstein/slidingmenu/lib/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v6, 0x3ea8f5c3

    const/high16 v5, -0x40800000

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 213
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b:Z

    .line 215
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 216
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-direct {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    .line 217
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 219
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-direct {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 220
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p0, v1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;)V

    .line 223
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V

    .line 224
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/e;

    invoke-direct {v1, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/e;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lcom/jeremyfeinstein/slidingmenu/lib/c;)V

    .line 244
    sget-object v0, Lcom/jeremyfeinstein/slidingmenu/lib/R$styleable;->SlidingMenu:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 247
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c(I)V

    .line 248
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 249
    if-eq v1, v3, :cond_0

    .line 250
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(I)V

    .line 254
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 255
    if-eq v1, v3, :cond_1

    .line 256
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(I)V

    .line 260
    :goto_1
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 261
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->h(I)V

    .line 262
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 263
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->i(I)V

    .line 265
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 266
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    .line 267
    if-eq v1, v3, :cond_2

    if-eq v2, v3, :cond_2

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set both behindOffset and behindWidth for a SlidingMenu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    goto :goto_0

    .line 258
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Landroid/view/View;)V

    goto :goto_1

    .line 269
    :cond_2
    if-eq v1, v3, :cond_5

    .line 270
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(I)V

    .line 275
    :goto_2
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 276
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(F)V

    .line 277
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 278
    if-eq v1, v3, :cond_3

    .line 279
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->j(I)V

    .line 281
    :cond_3
    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    .line 282
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l(I)V

    .line 283
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 284
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e(Z)V

    .line 285
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 286
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(F)V

    .line 287
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 288
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f(Z)V

    .line 289
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 290
    if-eq v1, v3, :cond_4

    .line 291
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->m(I)V

    .line 292
    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 293
    return-void

    .line 271
    :cond_5
    if-eq v2, v3, :cond_6

    .line 272
    invoke-virtual {p0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e(I)V

    goto :goto_2

    .line 274
    :cond_6
    invoke-virtual {p0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(I)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e:Lcom/jeremyfeinstein/slidingmenu/lib/j;

    return-object v0
.end method

.method static synthetic b(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/g;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->g:Lcom/jeremyfeinstein/slidingmenu/lib/g;

    return-object v0
.end method

.method static synthetic c(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)Lcom/jeremyfeinstein/slidingmenu/lib/j;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f:Lcom/jeremyfeinstein/slidingmenu/lib/j;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->e()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(F)V
    .locals 2

    .prologue
    .line 697
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollScale must be between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(F)V

    .line 700
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;IZ)V

    .line 303
    return-void
.end method

.method public a(Landroid/app/Activity;IZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 313
    if-eqz p2, :cond_0

    if-eq p2, v1, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "slideStyle must be either SLIDING_WINDOW or SLIDING_CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SlidingMenu appears to already be attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v1, [I

    const v2, 0x1010054

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 321
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 322
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 324
    packed-switch p2, :pswitch_data_0

    .line 348
    :cond_2
    :goto_0
    return-void

    .line 326
    :pswitch_0
    iput-boolean v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b:Z

    .line 327
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 328
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 330
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    goto :goto_0

    .line 336
    :pswitch_1
    iput-boolean p3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b:Z

    .line 338
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 339
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 341
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    invoke-virtual {p0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    .line 344
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 345
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/graphics/drawable/Drawable;)V

    .line 772
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Landroid/view/View;)V

    .line 367
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d()V

    .line 368
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/f;)V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lcom/jeremyfeinstein/slidingmenu/lib/f;)V

    .line 713
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lcom/jeremyfeinstein/slidingmenu/lib/k;)V

    .line 953
    return-void
.end method

.method public a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Lcom/jeremyfeinstein/slidingmenu/lib/l;)V

    .line 910
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(Z)V

    .line 441
    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(F)V

    .line 845
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/graphics/drawable/Drawable;)V

    .line 790
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/view/View;)V

    .line 395
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZ)V

    .line 504
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(F)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 457
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SlidingMenu mode must be LEFT, RIGHT, or LEFT_RIGHT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c(I)V

    .line 461
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZ)V

    .line 522
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(Z)V

    .line 529
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(I)V

    .line 599
    return-void
.end method

.method public d(Z)V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(IZ)V

    .line 538
    return-void
.end method

.method public e(I)V
    .locals 5

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 642
    :try_start_0
    const-class v1, Landroid/view/Display;

    .line 643
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Point;

    aput-object v4, v2, v3

    .line 644
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 645
    const-string v4, "getSize"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 646
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget v0, v3, Landroid/graphics/Point;->x:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d(I)V

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v1

    .line 649
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(Z)V

    .line 835
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 662
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->e(I)V

    .line 663
    return-void
.end method

.method public f(Z)V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->c(Z)V

    .line 854
    return-void
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1029
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1030
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 1031
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 1032
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 1033
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->b:Z

    if-nez v4, :cond_0

    .line 1034
    sget-object v4, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a:Ljava/lang/String;

    const-string v5, "setting padding!"

    invoke-static {v4, v5}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setPadding(IIII)V

    .line 1037
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->b(I)V

    .line 688
    return-void
.end method

.method public h(I)V
    .locals 2

    .prologue
    .line 732
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->c(I)V

    .line 738
    return-void
.end method

.method public i(I)V
    .locals 2

    .prologue
    .line 748
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TouchMode must be set to eitherTOUCHMODE_FULLSCREEN or TOUCHMODE_MARGIN or TOUCHMODE_NONE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->f(I)V

    .line 754
    return-void
.end method

.method public j(I)V
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->a(Landroid/graphics/drawable/Drawable;)V

    .line 763
    return-void
.end method

.method public k(I)V
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->l(I)V

    .line 799
    return-void
.end method

.method public l(I)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->d(I)V

    .line 808
    return-void
.end method

.method public m(I)V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->a(Landroid/graphics/Bitmap;)V

    .line 872
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1018
    check-cast p1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    .line 1019
    invoke-virtual {p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1020
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->a(I)V

    .line 1021
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1008
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1009
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->c:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->b()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1010
    return-object v1
.end method
