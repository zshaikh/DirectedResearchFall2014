.class Lcom/dolphin/browser/sidebar/a;
.super Ljava/lang/Object;
.source "AddonBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/dolphin/browser/sidebar/c;

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/dolphin/browser/extensions/ax;

.field private l:Lcom/dolphin/browser/sidebar/d;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sidebar/e;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/dolphin/browser/sidebar/c;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/dolphin/browser/sidebar/a;->b:Lcom/dolphin/browser/sidebar/c;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 253
    invoke-interface {p2}, Lcom/dolphin/browser/sidebar/c;->a()Landroid/widget/ListView;

    move-result-object v1

    .line 254
    iput-object v1, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/sidebar/a;->b(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;

    .line 258
    invoke-static {p1}, Lcom/dolphin/browser/extensions/ax;->a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/a;->k:Lcom/dolphin/browser/extensions/ax;

    .line 259
    new-instance v0, Lcom/dolphin/browser/sidebar/d;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/dolphin/browser/sidebar/d;-><init>(Lcom/dolphin/browser/sidebar/a;Lcom/dolphin/browser/sidebar/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    .line 261
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 263
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 264
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->k:Lcom/dolphin/browser/extensions/ax;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ax;->getCount()I

    move-result v0

    .line 269
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;)J

    move-result-wide v1

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 271
    const-wide/32 v5, 0x5265c00

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 272
    const-string v1, "add-ons"

    const-string v2, "installed"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;J)V

    .line 275
    :cond_0
    if-nez v0, :cond_1

    .line 276
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->b()V

    .line 278
    :cond_1
    return-void
.end method

.method private a(Landroid/content/res/Resources;)I
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    const/high16 v0, 0x40400000

    .line 389
    :goto_0
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b004a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 386
    :cond_0
    const/high16 v0, 0x3fc00000

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 228
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201c3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v4, 0x11

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 342
    invoke-direct {p0, p2}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/content/res/Resources;)I

    move-result v0

    .line 345
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    iput-object v1, p0, Lcom/dolphin/browser/sidebar/a;->i:Landroid/widget/LinearLayout;

    .line 347
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 349
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 352
    iput-object v2, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    .line 353
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 354
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e01ff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 355
    const/4 v3, 0x2

    const/high16 v4, 0x41700000

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 356
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 357
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMinLines(I)V

    .line 359
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 360
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 361
    sget-object v0, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v0, 0x7f0b00e7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 362
    iget v0, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 364
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    return-object v1
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/sidebar/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/a;->m:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/dolphin/browser/extensions/n;)V
    .locals 4

    .prologue
    .line 445
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, "addon bar"

    const-string v2, "click"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->o()Ljava/lang/String;

    move-result-object v0

    .line 448
    const-string v1, "addon bar"

    const-string v2, "active"

    invoke-static {v0}, Lcom/dolphin/browser/util/cf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v1, v2, v0, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 450
    return-void
.end method

.method private a(Lcom/dolphin/browser/extensions/n;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sidebar/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method private static a(Lcom/dolphin/browser/extensions/a;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 208
    instance-of v1, p0, Lcom/dolphin/browser/extensions/s;

    if-eqz v1, :cond_0

    .line 209
    check-cast p0, Lcom/dolphin/browser/extensions/s;

    .line 210
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/s;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 213
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/sidebar/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f080020

    const/16 v7, 0xf

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 394
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 395
    invoke-static {p1}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/sidebar/a;->h:Landroid/view/View;

    .line 397
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00e7

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 399
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 400
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/a;->d:Landroid/widget/RelativeLayout;

    .line 401
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b004a

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v3, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 406
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 407
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 408
    iget-object v3, p0, Lcom/dolphin/browser/sidebar/a;->h:Landroid/view/View;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 411
    iput-object v2, p0, Lcom/dolphin/browser/sidebar/a;->e:Landroid/widget/TextView;

    .line 412
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 413
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 414
    invoke-virtual {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 415
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 416
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e003b

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 417
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v4, 0x7f0f003c

    invoke-virtual {v2, v1, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 418
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 421
    iput-object v1, p0, Lcom/dolphin/browser/sidebar/a;->g:Landroid/widget/ImageView;

    .line 422
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 423
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 424
    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 426
    const v3, 0x4262ae14

    invoke-static {v3}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 427
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setId(I)V

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 431
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 432
    iput-object v1, p0, Lcom/dolphin/browser/sidebar/a;->f:Landroid/widget/ImageView;

    .line 433
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 434
    const/4 v3, 0x0

    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v2, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 435
    invoke-virtual {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 436
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080021

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    return-object v0
.end method

.method private b(Lcom/dolphin/browser/extensions/n;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/extensions/n;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sidebar/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/n/a;->b:Lmobi/mgeek/TunnyBrowser/R$array;

    const v3, 0x7f070007

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {p1}, Lcom/dolphin/browser/extensions/n;->b()Lcom/dolphin/browser/extensions/a;

    move-result-object v4

    .line 498
    invoke-virtual {v4}, Lcom/dolphin/browser/extensions/a;->l()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    .line 499
    :goto_0
    invoke-static {v4}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/extensions/a;)Z

    move-result v4

    .line 500
    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/dolphin/browser/sidebar/h;

    aget-object v2, v3, v2

    invoke-direct {v0, p0, v2, p1}, Lcom/dolphin/browser/sidebar/h;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_0
    new-instance v0, Lcom/dolphin/browser/sidebar/f;

    aget-object v1, v3, v1

    invoke-direct {v0, p0, v1, p1}, Lcom/dolphin/browser/sidebar/f;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    if-eqz v4, :cond_1

    .line 505
    new-instance v0, Lcom/dolphin/browser/sidebar/g;

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-direct {v0, p0, v1, p1}, Lcom/dolphin/browser/sidebar/g;-><init>(Lcom/dolphin/browser/sidebar/a;Ljava/lang/CharSequence;Lcom/dolphin/browser/extensions/n;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 498
    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 537
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    .line 538
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    .line 539
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 540
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    instance-of v4, v0, Lcom/dolphin/browser/ui/y;

    if-eqz v4, :cond_0

    .line 542
    check-cast v0, Lcom/dolphin/browser/ui/y;

    invoke-interface {v0}, Lcom/dolphin/browser/ui/y;->a()V

    .line 539
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 545
    :cond_1
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->k:Lcom/dolphin/browser/extensions/ax;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 324
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 325
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 327
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/a;->f()V

    .line 328
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/a;->b()V

    .line 329
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 453
    instance-of v0, p1, Lcom/dolphin/browser/ui/fake/a;

    if-eqz v0, :cond_0

    .line 454
    check-cast p1, Lcom/dolphin/browser/ui/fake/a;

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/fake/a;->c()Lcom/dolphin/browser/extensions/n;

    move-result-object v0

    .line 455
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->a(I)V

    .line 456
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->b:Lcom/dolphin/browser/sidebar/c;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/sidebar/c;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 457
    invoke-static {v2}, Lcom/dolphin/browser/test/c;->b(I)V

    .line 458
    invoke-direct {p0, v0}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->b:Lcom/dolphin/browser/sidebar/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/sidebar/c;->a(Z)V

    .line 461
    :cond_0
    return-void
.end method

.method varargs a([Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/a;->n:Z

    if-eqz v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sidebar/a;->n:Z

    .line 309
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    .line 310
    array-length v3, p1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    .line 311
    invoke-virtual {v2, v4, v5, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v5, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 332
    iget-boolean v1, p0, Lcom/dolphin/browser/sidebar/a;->n:Z

    if-nez v1, :cond_0

    .line 333
    new-array v1, v0, [Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/sidebar/a;->a([Landroid/view/View;)V

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->k:Lcom/dolphin/browser/extensions/ax;

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/ax;->isEmpty()Z

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_1
    return-void

    .line 337
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method b(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 464
    instance-of v1, p1, Lcom/dolphin/browser/ui/fake/a;

    if-eqz v1, :cond_1

    .line 465
    check-cast p1, Lcom/dolphin/browser/ui/fake/a;

    invoke-virtual {p1}, Lcom/dolphin/browser/ui/fake/a;->c()Lcom/dolphin/browser/extensions/n;

    move-result-object v1

    .line 466
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/ui/x;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 468
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->h()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 469
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-direct {p0, v1, v4}, Lcom/dolphin/browser/sidebar/a;->a(Lcom/dolphin/browser/extensions/n;Ljava/util/List;)V

    .line 471
    invoke-direct {p0, v1, v4}, Lcom/dolphin/browser/sidebar/a;->b(Lcom/dolphin/browser/extensions/n;Ljava/util/List;)V

    .line 472
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/CharSequence;

    .line 474
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/sidebar/e;

    .line 475
    add-int/lit8 v2, v1, 0x1

    iget-object v0, v0, Lcom/dolphin/browser/sidebar/e;->b:Ljava/lang/CharSequence;

    aput-object v0, v5, v1

    move v1, v2

    goto :goto_0

    .line 477
    :cond_0
    iput-object v4, p0, Lcom/dolphin/browser/sidebar/a;->m:Ljava/util/List;

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    invoke-virtual {v3, v5, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->l:Lcom/dolphin/browser/sidebar/d;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 480
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 483
    const/4 v0, 0x1

    .line 485
    :cond_1
    return v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 510
    new-instance v0, Lcom/dolphin/browser/c/p;

    invoke-direct {v0}, Lcom/dolphin/browser/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/p;->a()Z

    .line 511
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->b:Lcom/dolphin/browser/sidebar/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/sidebar/c;->a(Z)V

    .line 512
    return-void
.end method

.method d()V
    .locals 3

    .prologue
    .line 515
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    const-class v2, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->b:Lcom/dolphin/browser/sidebar/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/sidebar/c;->a(Z)V

    .line 518
    return-void
.end method

.method e()V
    .locals 6

    .prologue
    const v5, 0x7f0a0036

    .line 521
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 522
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->d:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 523
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 524
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->h:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->g:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201e4

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v3, v5}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f02000a

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v3, v5}, Lcom/dolphin/browser/util/bb;->b(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 529
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->c:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201b8

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 530
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/a;->g()V

    .line 532
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0062

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    return-void
.end method

.method f()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 549
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/a;->j:Landroid/widget/TextView;

    .line 550
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 551
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/sidebar/a;->a(Landroid/content/res/Resources;)I

    move-result v2

    .line 552
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 553
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e04fa

    .line 560
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 562
    :cond_0
    return-void

    .line 558
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01f7

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f080021

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 283
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080020

    if-ne v0, v1, :cond_1

    .line 284
    const-string v0, "rightsidebar"

    const-string v1, "click"

    const-string v2, "addonsettings"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/a;->d()V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-eq v0, v2, :cond_2

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08001d

    if-ne v0, v1, :cond_0

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/a;->c()V

    .line 289
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    if-ne v0, v2, :cond_3

    .line 290
    const-string v0, "rightsidebar"

    const-string v1, "click"

    const-string v2, "moreaddon"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_3
    const-string v0, "rightsidebar"

    const-string v1, "click"

    const-string v2, "getmoretips"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 566
    instance-of v0, p1, Lcom/dolphin/browser/k/k;

    if-eqz v0, :cond_0

    .line 567
    invoke-static {p2}, Lcom/dolphin/browser/k/k;->a(Ljava/lang/Object;)I

    move-result v0

    .line 568
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/dolphin/browser/sidebar/a;->f()V

    .line 572
    :cond_0
    return-void
.end method
