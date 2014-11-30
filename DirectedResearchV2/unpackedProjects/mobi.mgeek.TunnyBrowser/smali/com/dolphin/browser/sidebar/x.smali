.class public Lcom/dolphin/browser/sidebar/x;
.super Ljava/lang/Object;
.source "RightBarController.java"

# interfaces
.implements Lcom/dolphin/browser/sidebar/c;
.implements Ljava/util/Observer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/dolphin/browser/sidebar/aa;

.field private g:Landroid/view/View;

.field private h:Lcom/dolphin/browser/sidebar/a;

.field private i:Landroid/widget/ListView;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/x;->a:Landroid/content/Context;

    .line 192
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->b:Landroid/widget/FrameLayout;

    .line 193
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 233
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 234
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00e5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sidebar/x;->a(Landroid/content/Context;)Lcom/dolphin/browser/sidebar/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/sidebar/x;->f:Lcom/dolphin/browser/sidebar/aa;

    .line 237
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00e3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 238
    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b00e4

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 239
    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b00e6

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 240
    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b00e2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 241
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 242
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->f:Lcom/dolphin/browser/sidebar/aa;

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 243
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    .line 225
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080121

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->d:Landroid/widget/LinearLayout;

    .line 226
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080122

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->e:Landroid/widget/TextView;

    .line 227
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->g:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->g:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/dolphin/browser/sidebar/aa;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 248
    new-instance v2, Lcom/dolphin/browser/sidebar/aa;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/sidebar/aa;-><init>(Lcom/dolphin/browser/sidebar/x;Landroid/content/Context;)V

    .line 249
    sget-object v0, Lcom/dolphin/browser/menu/v;->a:[I

    aget v3, v0, v1

    move v0, v1

    .line 251
    :goto_0
    if-ge v0, v3, :cond_1

    .line 252
    sget-object v4, Lcom/dolphin/browser/menu/v;->d:[[I

    aget-object v4, v4, v1

    aget v4, v4, v0

    .line 253
    const/4 v5, 0x2

    if-ne v5, v4, :cond_0

    .line 254
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v5

    .line 255
    invoke-virtual {v5}, Lcom/dolphin/browser/ui/a/a;->d()Lcom/dolphin/browser/ui/a/c;

    move-result-object v5

    .line 256
    sget-object v6, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    if-eq v6, v5, :cond_0

    .line 251
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v5, Lcom/dolphin/browser/menu/ae;

    invoke-direct {v5, v4}, Lcom/dolphin/browser/menu/ae;-><init>(I)V

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v6, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v6, 0x7f0b00cb

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/menu/ae;->b(I)V

    .line 264
    new-instance v4, Lcom/dolphin/browser/sidebar/z;

    invoke-virtual {v5}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v6

    invoke-direct {v4, p0, v6}, Lcom/dolphin/browser/sidebar/z;-><init>(Lcom/dolphin/browser/sidebar/x;I)V

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/menu/ae;->a(Lcom/dolphin/browser/c/a;)V

    .line 265
    const/4 v4, -0x1

    invoke-virtual {v5, v4}, Lcom/dolphin/browser/menu/ae;->a(I)V

    .line 266
    new-instance v4, Lcom/dolphin/browser/sidebar/y;

    invoke-direct {v4, p0, p1}, Lcom/dolphin/browser/sidebar/y;-><init>(Lcom/dolphin/browser/sidebar/x;Landroid/content/Context;)V

    .line 267
    invoke-virtual {v4, v5}, Lcom/dolphin/browser/sidebar/y;->a(Lcom/dolphin/browser/menu/ae;)V

    .line 268
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/sidebar/aa;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 270
    :cond_1
    return-object v2
.end method

.method static synthetic a(IZ)V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/dolphin/browser/sidebar/x;->b(IZ)V

    return-void
.end method

.method private static final b(IZ)V
    .locals 4

    .prologue
    .line 165
    if-ltz p0, :cond_0

    sget-object v0, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    if-eqz p1, :cond_2

    .line 169
    const-string v0, "rightsidebar"

    const-string v1, "click"

    sget-object v2, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    aget-object v2, v2, p0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "rightsidebar"

    const-string v1, "click"

    sget-object v2, Lcom/dolphin/browser/menu/v;->h:[[Ljava/lang/String;

    aget-object v2, v2, p0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    const v3, 0x7f0a0035

    .line 278
    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/x;->j:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/x;->g()V

    .line 281
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->c:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->d:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 285
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->g:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->f:Lcom/dolphin/browser/sidebar/aa;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/aa;->a()V

    .line 289
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/a;->e()V

    .line 291
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/x;->j:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/x;->g()V

    .line 302
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->d:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 307
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0037

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/a;->f()V

    .line 323
    :cond_0
    return-void
.end method

.method public a(Lcom/dolphin/browser/extensions/n;)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->a:Landroid/content/Context;

    check-cast v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 354
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->a:Landroid/content/Context;

    check-cast v0, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 348
    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->showMiddlePageView(Z)V

    .line 349
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 203
    iget-boolean v0, p0, Lcom/dolphin/browser/sidebar/x;->j:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/x;->a:Landroid/content/Context;

    .line 205
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 206
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300d2

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 207
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->c:Landroid/widget/LinearLayout;

    .line 209
    invoke-direct {p0, v2, v1}, Lcom/dolphin/browser/sidebar/x;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    .line 210
    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/sidebar/x;->a(Landroid/content/Context;Landroid/content/res/Resources;)Landroid/view/View;

    move-result-object v3

    .line 211
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08029c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 212
    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->i:Landroid/widget/ListView;

    .line 213
    new-instance v0, Lcom/dolphin/browser/sidebar/a;

    invoke-direct {v0, v2, p0}, Lcom/dolphin/browser/sidebar/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/sidebar/c;)V

    iput-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    .line 214
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    new-array v1, v5, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sidebar/a;->a([Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/x;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->h:Lcom/dolphin/browser/sidebar/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sidebar/a;->a()V

    .line 218
    iput-boolean v5, p0, Lcom/dolphin/browser/sidebar/x;->j:Z

    .line 219
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/x;->e()V

    .line 220
    invoke-static {}, Lcom/dolphin/browser/ui/a/a;->a()Lcom/dolphin/browser/ui/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/ui/a/a;->addObserver(Ljava/util/Observer;)V

    .line 222
    :cond_0
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/x;->b:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/x;->e()V

    .line 296
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 313
    instance-of v0, p1, Lcom/dolphin/browser/ui/a/a;

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/dolphin/browser/sidebar/x;->f()V

    .line 316
    :cond_0
    return-void
.end method
