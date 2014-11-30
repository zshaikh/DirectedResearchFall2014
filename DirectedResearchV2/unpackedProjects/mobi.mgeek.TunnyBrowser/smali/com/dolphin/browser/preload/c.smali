.class public Lcom/dolphin/browser/preload/c;
.super Ljava/lang/Object;
.source "BuiltinDataUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://sp.mbga.jp/AFdol7x00001/_lp"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "http://sp.mbga.jp/AFdol7x00002/_lp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://sp.mbga.jp/AFdol7x00003/_lp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://sp.mbga.jp/AFdol7x00004/_lp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/preload/c;->a:[Ljava/lang/String;

    .line 44
    sput-boolean v3, Lcom/dolphin/browser/preload/c;->b:Z

    return-void
.end method

.method private static a(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/be;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v1, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, v6}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 208
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/a/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 209
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v3

    .line 211
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 212
    invoke-virtual {v3, v6}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 213
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 215
    goto :goto_0
.end method

.method private static a(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;)Lcom/dolphin/browser/launcher/be;
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/dolphin/browser/preload/e;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/preload/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bv;)Ljava/util/List;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/be;

    goto :goto_0
.end method

.method private static a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/bi;
    .locals 4

    .prologue
    .line 220
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e018a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Lcom/dolphin/browser/ui/launcher/a/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 223
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    .line 227
    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 228
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    move-object v0, v1

    .line 232
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)Lcom/dolphin/browser/launcher/bi;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 173
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 174
    if-nez v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/preload/c;->j()Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_0

    .line 184
    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/g;->I()Ljava/util/Set;

    move-result-object v3

    .line 185
    const-string v4, "http://dolphin.com/updatenotes/"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "http://www.dolphin-browser.jp/update-notes.html"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 191
    invoke-static {}, Lcom/dolphin/browser/preload/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->b(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/dolphin/browser/preload/c;->b:Z

    .line 192
    if-nez p0, :cond_2

    sget-boolean v0, Lcom/dolphin/browser/preload/c;->b:Z

    if-nez v0, :cond_2

    .line 193
    invoke-static {v2}, Lcom/dolphin/browser/preload/c;->a(Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/be;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {v1, v2}, Lcom/dolphin/browser/preload/c;->a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/ui/launcher/a/b;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "mobage"

    return-object v0
.end method

.method public static a(Lcom/dolphin/browser/launcher/bi;Z)V
    .locals 2

    .prologue
    .line 258
    if-nez p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_0

    .line 265
    instance-of v1, p0, Lcom/dolphin/browser/launcher/be;

    if-eqz v1, :cond_2

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    goto :goto_0

    .line 268
    :cond_2
    check-cast p0, Lcom/dolphin/browser/launcher/cl;

    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/preload/c;->a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;Z)V

    goto :goto_0
.end method

.method private static a(Lcom/dolphin/browser/ui/launcher/g;Lcom/dolphin/browser/launcher/cl;Z)V
    .locals 3

    .prologue
    .line 276
    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/dolphin/browser/preload/c;->b:Z

    if-eqz v0, :cond_0

    .line 277
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 278
    invoke-static {}, Lcom/dolphin/browser/preload/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/dolphin/browser/preload/c;->a(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;)Lcom/dolphin/browser/launcher/be;

    move-result-object v1

    .line 280
    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 281
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/be;->d()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 283
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 48
    if-eqz p0, :cond_0

    const-string v0, "sp.mbga.jp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/dolphin/browser/ui/launcher/a/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 340
    :goto_0
    return-object v0

    .line 327
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->e()Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    .line 329
    if-nez v0, :cond_1

    move-object v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    .line 334
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 335
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 340
    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "http://sp.mbga.jp/AFdob0000001/_t"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "Game Folder"

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "\u30b2\u30fc\u30e0"

    return-object v0
.end method

.method public static e()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "ja"

    invoke-static {}, Lcom/dolphin/browser/search/i;->a()Lcom/dolphin/browser/search/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/search/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/dolphin/browser/preload/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/preload/c;->g()V

    .line 93
    invoke-static {}, Lcom/dolphin/browser/preload/c;->h()V

    goto :goto_0
.end method

.method public static g()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 98
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    sget-object v2, Lcom/dolphin/browser/preload/c;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 100
    invoke-static {v1, v4}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, v9, :cond_0

    .line 102
    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 103
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v7, "url"

    const-string v8, "http://sp.mbga.jp/AFdob0000001/_t"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {v1, v4, v5, v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public static h()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 111
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 112
    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/dolphin/browser/preload/d;

    invoke-direct {v0}, Lcom/dolphin/browser/preload/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/launcher/g;->b(Lcom/dolphin/browser/launcher/bv;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    .line 132
    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/dolphin/browser/preload/c;->i()Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    new-instance v2, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v2}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 139
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2, v7}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 141
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 142
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v4

    .line 143
    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 144
    invoke-virtual {v4, v7}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 145
    invoke-virtual {v2, v4}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_1

    .line 147
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    goto :goto_0
.end method

.method public static i()Lcom/dolphin/browser/ui/launcher/a/b;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/d;->e()Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    .line 155
    if-nez v0, :cond_0

    move-object v0, v1

    .line 167
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    .line 160
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 161
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 167
    goto :goto_0
.end method

.method private static j()Lcom/dolphin/browser/ui/launcher/a/b;
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/dolphin/browser/preload/c;->k()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Lcom/dolphin/browser/preload/c;->b(Ljava/lang/String;)Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v0

    return-object v0
.end method

.method private static k()Ljava/lang/String;
    .locals 6

    .prologue
    .line 297
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 299
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0181

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0182

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 305
    const-string v5, "mobi.mgeek.TunnyBrowser"

    invoke-static {v2, v5}, Lcom/dolphin/browser/preload/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 307
    sget-object v2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 310
    goto :goto_0

    .line 312
    :cond_2
    const-string v1, "com.dolphin.browser.android.jp"

    invoke-static {v2, v1}, Lcom/dolphin/browser/preload/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0180

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
