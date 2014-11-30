.class public Lcom/dolphin/browser/titlebar/u;
.super Landroid/app/Dialog;
.source "UrlOptionsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:F


# instance fields
.field private b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/view/ViewGroup;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->dipToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/dolphin/browser/titlebar/u;->a:F

    return-void
.end method

.method public constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v0, 0x7f0f0041

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 55
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/u;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030118

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->setContentView(I)V

    .line 59
    iput-object p2, p0, Lcom/dolphin/browser/titlebar/u;->c:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/dolphin/browser/titlebar/u;->d:Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/u;->a(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 267
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v6

    const-string v3, "url_key=?"

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 276
    if-eqz v1, :cond_0

    .line 277
    array-length v2, v1

    invoke-static {v1, v6, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 280
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_1
    return-object v5
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/dolphin/browser/titlebar/u;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/titlebar/u;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/u;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/u;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    const-string v0, "touch_icon"

    .line 256
    const-string v0, "touch_icon"

    invoke-static {v1, p1, v0}, Lcom/dolphin/browser/titlebar/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 258
    const-string v0, "favicon"

    invoke-static {v1, p1, v0}, Lcom/dolphin/browser/titlebar/u;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->e:Landroid/view/ViewGroup;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    .line 69
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c7

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    .line 70
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803c8

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    .line 71
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->i:Landroid/view/View;

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->j:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/titlebar/u;->setCanceledOnTouchOutside(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/u;->a()V

    .line 79
    return-void
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    if-nez p0, :cond_1

    move-object p0, v0

    .line 242
    :cond_0
    :goto_0
    return-object p0

    .line 222
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/DisplayManager;->getShortcutIconPixelSize()F

    move-result v2

    .line 223
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 224
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 226
    sget v5, Lcom/dolphin/browser/titlebar/u;->a:F

    sub-float v5, v2, v5

    .line 227
    int-to-float v6, v3

    cmpg-float v6, v6, v5

    if-ltz v6, :cond_2

    int-to-float v6, v4

    cmpg-float v5, v6, v5

    if-gez v5, :cond_3

    :cond_2
    move-object p0, v0

    .line 229
    goto :goto_0

    .line 232
    :cond_3
    int-to-float v0, v3

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    int-to-float v0, v4

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 233
    :cond_4
    int-to-float v0, v3

    div-float v0, v2, v0

    .line 234
    int-to-float v5, v4

    div-float/2addr v2, v5

    .line 235
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 236
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 237
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 238
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/titlebar/u;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/u;->c()V

    .line 145
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    .line 146
    iget-object v3, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    return-void

    :cond_2
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->d:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/dolphin/browser/t/l;->a()Lcom/dolphin/browser/t/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/t/l;->D()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/titlebar/u;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const v6, 0x7f0a014d

    const v5, 0x7f0a01b9

    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 83
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->e:Landroid/view/ViewGroup;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020303

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ad

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 92
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200ac

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->i:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 103
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/u;->j:Landroid/view/View;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 105
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 111
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803c6

    if-ne v0, v1, :cond_1

    .line 112
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "addbookmark"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddBookmark2()Z

    .line 115
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/u;->dismiss()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803c7

    if-ne v0, v1, :cond_2

    .line 118
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "addspeeddial"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/u;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->actionAddSpeeddial3()V

    .line 121
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/u;->dismiss()V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f0803c8

    if-ne v0, v1, :cond_0

    .line 124
    const-string v0, "address bar"

    const-string v1, "clickbtn"

    const-string v2, "addtohome"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/dolphin/browser/titlebar/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/titlebar/x;-><init>(Lcom/dolphin/browser/titlebar/u;Lcom/dolphin/browser/titlebar/v;)V

    .line 127
    invoke-virtual {v0}, Lcom/dolphin/browser/titlebar/x;->a()V

    .line 128
    invoke-virtual {p0}, Lcom/dolphin/browser/titlebar/u;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/dolphin/browser/titlebar/u;->b()V

    .line 138
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 139
    return-void
.end method
