.class public Lcom/dolphin/browser/util/bb;
.super Ljava/lang/Object;
.source "IconHelper.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/bb;


# instance fields
.field private b:Lcom/e/a/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/dolphin/browser/util/bb;

    invoke-direct {v0}, Lcom/dolphin/browser/util/bb;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bb;->a:Lcom/dolphin/browser/util/bb;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/e/a/v;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/e/a/v;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/bb;->b:Lcom/e/a/v;

    .line 29
    return-void
.end method

.method private a(III)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-virtual {p0, p3, p2}, Lcom/dolphin/browser/util/bb;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/util/bb;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 73
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v3, 0x101009e

    aput v3, v0, v4

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 76
    new-array v0, v4, [I

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->invalidateSelf()V

    .line 78
    return-object v2

    .line 73
    nop

    :array_0
    .array-data 4
        0x10100a0
        0x101009e
    .end array-data
.end method

.method public static a()Lcom/dolphin/browser/util/bb;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/util/bb;->a:Lcom/dolphin/browser/util/bb;

    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00b3

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00b2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 85
    new-array v2, v7, [[I

    .line 86
    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v2, v5

    .line 87
    new-array v3, v5, [I

    aput-object v3, v2, v6

    .line 88
    new-array v3, v7, [I

    .line 89
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    aput v4, v3, v5

    .line 90
    invoke-interface {v0, p2}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    aput v0, v3, v6

    move-object v0, v1

    .line 92
    check-cast v0, Lcom/e/a/z;

    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v4}, Lcom/e/a/z;->a(Landroid/content/res/ColorStateList;)V

    .line 96
    :cond_0
    return-object v1
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 224
    instance-of v0, p1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 225
    check-cast v0, Lcom/e/a/z;

    invoke-virtual {p0}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/e/a/z;->a(Landroid/content/res/ColorStateList;)V

    .line 227
    :cond_0
    return-object p1
.end method

.method public a(IIII)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 183
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 185
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, p4}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 187
    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 189
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, p3}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 191
    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 193
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, p2}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 194
    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    invoke-virtual {v1, v3, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 196
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 197
    new-array v0, v5, [I

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    return-object v1
.end method

.method public b()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const v6, 0x7f0a0062

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 123
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 124
    const/4 v1, 0x5

    new-array v1, v1, [[I

    .line 125
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 126
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 127
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 128
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v8

    .line 129
    const/4 v2, 0x4

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 130
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 131
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00b2

    invoke-interface {v0, v3}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    aput v3, v2, v4

    .line 132
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v5

    .line 133
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v7

    .line 134
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v8

    .line 135
    const/4 v3, 0x4

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00b3

    invoke-interface {v0, v4}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    aput v0, v2, v3

    .line 136
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public b(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a00a6

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00a5

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public b(II)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 203
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 205
    check-cast v0, Lcom/e/a/z;

    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/e/a/z;->a(I)V

    .line 207
    :cond_0
    return-object v1
.end method

.method public b(IIII)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 213
    invoke-static {p1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 214
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 215
    check-cast v0, Lcom/e/a/z;

    invoke-static {p2}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v2

    invoke-static {p3}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-static {p4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/e/a/z;->a(III)V

    .line 219
    :cond_0
    return-object v1
.end method

.method public c()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const v6, 0x7f0a0062

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 143
    const/4 v1, 0x5

    new-array v1, v1, [[I

    .line 144
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 145
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 146
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 147
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v8

    .line 148
    const/4 v2, 0x4

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 149
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 150
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00a5

    invoke-interface {v0, v3}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    aput v3, v2, v4

    .line 152
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v5

    .line 153
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v7

    .line 154
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v8

    .line 155
    const/4 v3, 0x4

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00a6

    invoke-interface {v0, v4}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    aput v0, v2, v3

    .line 156
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 158
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0012

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0013

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0011

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/dolphin/browser/util/bb;->b(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 238
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 239
    check-cast v0, Lcom/e/a/z;

    invoke-virtual {v0, p2}, Lcom/e/a/z;->a(I)V

    .line 241
    :cond_0
    return-object v1
.end method

.method public c(IIII)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 248
    instance-of v0, v1, Lcom/e/a/z;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 249
    check-cast v0, Lcom/e/a/z;

    invoke-virtual {v0, p2, p3, p4}, Lcom/e/a/z;->a(III)V

    .line 252
    :cond_0
    return-object v1
.end method

.method public d()Landroid/content/res/ColorStateList;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const v6, 0x7f0a0013

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    .line 165
    const/4 v1, 0x5

    new-array v1, v1, [[I

    .line 166
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    aput-object v2, v1, v4

    .line 167
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    aput-object v2, v1, v5

    .line 168
    new-array v2, v5, [I

    const v3, 0x101009c

    aput v3, v2, v4

    aput-object v2, v1, v7

    .line 169
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    aput-object v2, v1, v8

    .line 170
    const/4 v2, 0x4

    new-array v3, v4, [I

    aput-object v3, v1, v2

    .line 171
    const/4 v2, 0x5

    new-array v2, v2, [I

    .line 172
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0011

    invoke-interface {v0, v3}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v3

    aput v3, v2, v4

    .line 173
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v5

    .line 174
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v7

    .line 175
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v6}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    aput v3, v2, v8

    .line 176
    const/4 v3, 0x4

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0012

    invoke-interface {v0, v4}, Lcom/dolphin/browser/theme/i;->a(I)I

    move-result v0

    aput v0, v2, v3

    .line 177
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public d(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020249

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020248

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/util/bb;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02005c

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02005b

    invoke-direct {p0, v0, p1, v1}, Lcom/dolphin/browser/util/bb;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/i;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Lcom/e/a/z;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dolphin/browser/util/bb;->b:Lcom/e/a/v;

    invoke-virtual {v0, p1}, Lcom/e/a/v;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/e/a/z;

    return-object v0
.end method
