.class public Lcom/dolphin/browser/tablist/ay;
.super Lcom/dolphin/browser/tablist/g;
.source "RecentTablistView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# static fields
.field private static h:[Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/dolphin/browser/tablist/bc;

.field private f:Landroid/content/Context;

.field private g:Lcom/dolphin/browser/tablist/bb;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 221
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/tablist/ay;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/g;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/ay;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;I)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ay;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->n()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v5, "date DESC"

    .line 229
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 230
    sget-object v2, Lcom/dolphin/browser/tablist/ay;->h:[Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 282
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/tablist/bc;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    .line 297
    check-cast p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;

    .line 298
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e065d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    :cond_0
    iget-object v2, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->a(Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x3

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 308
    if-eqz v2, :cond_1

    .line 309
    invoke-direct {p0, v2}, Lcom/dolphin/browser/tablist/ay;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 313
    :goto_0
    if-eqz v0, :cond_2

    .line 314
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 315
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :goto_1
    iget-object v0, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->c:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    iget-object v0, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ee

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    iget-object v0, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->a:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 325
    return-void

    .line 311
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p1, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/tablist/ay;->a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/tablist/ay;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/ay;->i:Z

    return p1
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/bc;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/ay;I)J
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/ay;->c(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/ay;)Lcom/dolphin/browser/tablist/bc;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/tablist/ay;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/dolphin/browser/tablist/ay;->j:Z

    return p1
.end method

.method private c(I)J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/tablist/bc;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/dolphin/browser/tablist/ay;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->m()V

    return-void
.end method

.method private d(I)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->g()Landroid/database/Cursor;

    move-result-object v0

    .line 274
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 275
    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/tablist/ay;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ay;->j:Z

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/tablist/ay;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->k()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/dolphin/browser/tablist/ay;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->l()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v3, -0x2

    const/16 v6, 0x11

    const/4 v5, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 100
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 103
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 105
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    .line 106
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/ay;->c:Landroid/widget/ImageView;

    .line 110
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/ay;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    .line 113
    iget-object v3, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0615

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v2}, Lcom/dolphin/browser/tablist/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 123
    :cond_0
    return-void
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isEnableSearchSuggestion()Z

    move-result v0

    return v0
.end method

.method private k()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bc;->a()I

    move-result v0

    return v0
.end method

.method private l()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bc;->b()I

    move-result v0

    return v0
.end method

.method private m()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method private n()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/ay;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->a(Landroid/content/Context;)V

    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/dolphin/browser/tablist/ba;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/tablist/ba;-><init>(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/ay;->addView(Landroid/view/View;)V

    .line 77
    new-instance v0, Lcom/dolphin/browser/tablist/bc;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/tablist/bc;-><init>(Lcom/dolphin/browser/tablist/ay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->i()V

    .line 83
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->h()V

    .line 84
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->c()V

    .line 86
    new-instance v0, Lcom/dolphin/browser/tablist/bb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/bb;-><init>(Lcom/dolphin/browser/tablist/ay;)V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/ay;->g:Lcom/dolphin/browser/tablist/bb;

    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dolphin/browser/tablist/ay;->g:Lcom/dolphin/browser/tablist/bb;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    return-void
.end method

.method protected a(Lcom/dolphin/browser/tablist/bz;)V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/dolphin/browser/tablist/g;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 94
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->h()V

    .line 95
    return-void
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 127
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->a:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0201c0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0096

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/tablist/ay;->c:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202d5

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method protected f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    invoke-static {v0, v1, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public g()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ay;->e:Lcom/dolphin/browser/tablist/bc;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bc;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 239
    invoke-direct {p0}, Lcom/dolphin/browser/tablist/ay;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/tablist/ay;->i:Z

    if-eqz v0, :cond_1

    .line 243
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/ay;->j:Z

    goto :goto_0

    .line 247
    :cond_1
    iput-boolean v1, p0, Lcom/dolphin/browser/tablist/ay;->i:Z

    .line 249
    new-instance v0, Lcom/dolphin/browser/tablist/az;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/tablist/az;-><init>(Lcom/dolphin/browser/tablist/ay;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p3}, Lcom/dolphin/browser/tablist/ay;->d(I)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/ay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e065d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 161
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 163
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->openUrl(Ljava/lang/String;Z)V

    .line 165
    :cond_1
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    .line 166
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
