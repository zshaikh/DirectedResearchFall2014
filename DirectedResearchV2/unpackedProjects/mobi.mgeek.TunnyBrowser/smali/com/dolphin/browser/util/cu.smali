.class public Lcom/dolphin/browser/util/cu;
.super Ljava/lang/Object;
.source "ThemeUtil.java"


# static fields
.field public static final a:Lcom/e/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/dolphin/browser/util/cv;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-direct {v0, v1}, Lcom/dolphin/browser/util/cv;-><init>(I)V

    sput-object v0, Lcom/dolphin/browser/util/cu;->a:Lcom/e/a/a;

    return-void
.end method

.method public static a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/dolphin/browser/util/cu;->a:Lcom/e/a/a;

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/cu;->a(ILcom/e/a/a;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 125
    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    new-instance v2, Lcom/dolphin/browser/theme/a/a;

    invoke-direct {v2, v0, v1}, Lcom/dolphin/browser/theme/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public static a(ILcom/e/a/a;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 58
    invoke-interface {v0, p0}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 60
    check-cast v0, Lcom/e/a/z;

    invoke-virtual {v0, p1}, Lcom/e/a/z;->b(Lcom/e/a/a;)V

    .line 62
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 256
    invoke-static {p0, p1, p2, p1}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 268
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 269
    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 270
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 271
    invoke-static {p3}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 273
    if-eqz p4, :cond_0

    .line 274
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 277
    :cond_0
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 280
    new-array v3, v7, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 283
    new-array v0, v6, [I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 284
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 287
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 288
    return-object v1
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 308
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 309
    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 310
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 313
    new-array v2, v4, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 314
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 315
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 316
    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 413
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    const/4 p0, 0x0

    .line 425
    :goto_0
    return-object p0

    .line 421
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 422
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->f(I)Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 423
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 424
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 8

    .prologue
    const v5, 0x7f0202e4

    const v4, 0x7f0202e3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 136
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202e5

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 138
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    :goto_0
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 146
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 147
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 151
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v3, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 155
    new-array v1, v7, [I

    const v5, 0x10100a1

    aput v5, v1, v6

    invoke-virtual {v3, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 159
    new-array v0, v7, [I

    const v1, 0x101009d

    aput v1, v0, v6

    invoke-virtual {v3, v0, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 163
    new-array v0, v6, [I

    invoke-virtual {v3, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 167
    return-object v3

    .line 141
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202e6

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 142
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v5}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 151
    :array_0
    .array-data 4
        0x10100a7
        0x10100a1
    .end array-data
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    return v0
.end method

.method public static b()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0098

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 90
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201c2

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const v3, 0x7f02026c

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 172
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02026b

    .line 173
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 174
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 175
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 176
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 177
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 179
    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 181
    new-array v4, v6, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 184
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v4, 0x101009e

    aput v4, v0, v5

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 190
    new-array v0, v5, [I

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 194
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 195
    return-object v1

    .line 181
    :array_0
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data
.end method

.method public static b(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 293
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 294
    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 295
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 296
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 300
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 302
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 303
    return-object v0
.end method

.method private static b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 390
    if-nez p0, :cond_0

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/theme/a/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/a/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static c(I)Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/theme/i;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static c()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0124

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 99
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0125

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const v3, 0x7f020246

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 200
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020247

    .line 201
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 202
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 203
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 204
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 205
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 206
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 207
    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 208
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 209
    new-array v4, v7, [I

    const v5, 0x10100a0

    aput v5, v4, v6

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 212
    new-array v4, v7, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 215
    new-array v0, v7, [I

    const v4, 0x101009e

    aput v4, v0, v6

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 218
    new-array v0, v6, [I

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 219
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 222
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 223
    return-object v1
.end method

.method public static c(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 322
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 323
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 324
    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 325
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 328
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 330
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 331
    return-object v0
.end method

.method public static d(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const v7, 0x7f02026d

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 228
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02026e

    .line 229
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02026f

    .line 230
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 231
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 232
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 233
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 234
    new-instance v4, Lcom/dolphin/browser/theme/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/dolphin/browser/theme/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 236
    invoke-static {v7}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 239
    new-array v3, v6, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 242
    new-array v3, v6, [I

    fill-array-data v3, :array_1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 245
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x101009e

    aput v4, v3, v5

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 248
    new-array v1, v5, [I

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 249
    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 250
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 251
    return-object v2

    .line 239
    :array_0
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data

    .line 242
    :array_1
    .array-data 4
        0x10100a1
        0x101009e
    .end array-data
.end method

.method public static d(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 336
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 337
    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 338
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 339
    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v0, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 342
    new-array v2, v5, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 345
    return-object v0
.end method

.method private static e(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 430
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 431
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/theme/ar;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11

    .prologue
    const v10, 0x7f0202db

    const v9, 0x7f0202dd

    const v6, 0x7f0202dc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 350
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 351
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202da

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v10}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    .line 353
    new-instance v2, Lcom/dolphin/browser/theme/a/a;

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v9}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dolphin/browser/theme/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 356
    new-instance v3, Lcom/dolphin/browser/theme/a/a;

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v9}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/dolphin/browser/theme/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 359
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 360
    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v10}, Lcom/dolphin/browser/util/cu;->e(I)Landroid/graphics/drawable/Drawable;

    .line 361
    new-instance v4, Lcom/dolphin/browser/theme/a/a;

    sget-object v5, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v9}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dolphin/browser/theme/a/a;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 366
    new-array v5, v8, [I

    const v6, 0x10100a1

    aput v6, v5, v7

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 369
    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    invoke-virtual {v0, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 373
    new-array v2, v8, [I

    const v4, 0x101009c

    aput v4, v2, v7

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 377
    new-array v2, v8, [I

    const v3, 0x101009d

    aput v3, v2, v7

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 381
    new-array v2, v7, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 385
    :cond_0
    return-object v0
.end method

.method private static f(I)Landroid/graphics/ColorMatrixColorFilter;
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 436
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v0

    .line 437
    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const p0, -0xc76300

    .line 438
    :cond_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 439
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 440
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 441
    new-instance v3, Landroid/graphics/ColorMatrix;

    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v8, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    aput v1, v4, v5

    const/4 v1, 0x5

    aput v7, v4, v1

    const/4 v1, 0x6

    aput v8, v4, v1

    const/4 v1, 0x7

    aput v7, v4, v1

    const/16 v1, 0x8

    aput v7, v4, v1

    const/16 v1, 0x9

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    aput v2, v4, v1

    const/16 v1, 0xa

    aput v7, v4, v1

    const/16 v1, 0xb

    aput v7, v4, v1

    const/16 v1, 0xc

    aput v8, v4, v1

    const/16 v1, 0xd

    aput v7, v4, v1

    const/16 v1, 0xe

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    aput v0, v4, v1

    const/16 v0, 0xf

    aput v7, v4, v0

    const/16 v0, 0x10

    aput v7, v4, v0

    const/16 v0, 0x11

    aput v7, v4, v0

    const/16 v0, 0x12

    aput v8, v4, v0

    const/16 v0, 0x13

    aput v7, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 451
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v0
.end method
