.class public Lcom/dolphin/browser/theme/ba;
.super Ljava/lang/Object;
.source "ThemePromotionManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/theme/ba;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ba;->g()V

    .line 72
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ba;->d()V

    .line 74
    :cond_0
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/theme/ba;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/dolphin/browser/theme/ba;->a:Lcom/dolphin/browser/theme/ba;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/dolphin/browser/theme/ba;

    invoke-direct {v0}, Lcom/dolphin/browser/theme/ba;-><init>()V

    sput-object v0, Lcom/dolphin/browser/theme/ba;->a:Lcom/dolphin/browser/theme/ba;

    .line 66
    :cond_0
    sget-object v0, Lcom/dolphin/browser/theme/ba;->a:Lcom/dolphin/browser/theme/ba;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 103
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 105
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ak;->A()Ljava/util/Locale;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 110
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "src"

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "cv"

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "mt"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "lc"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "pn"

    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/a;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "vn"

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->G()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;)I

    .line 119
    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 124
    const-string v1, "skins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/dolphin/browser/theme/b/f;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->j()Ljava/util/List;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/ba;->b(Ljava/util/List;Ljava/util/List;)V

    .line 129
    invoke-direct {p0, v1}, Lcom/dolphin/browser/theme/ba;->b(Ljava/util/List;)V

    .line 132
    :cond_0
    return-object v1
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/theme/data/a;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0, p2, p1}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)V

    .line 403
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ba;->f()V

    .line 404
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->i()V

    .line 405
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    if-nez p1, :cond_1

    .line 231
    :cond_0
    return-void

    .line 224
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    .line 226
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->c_()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 228
    add-int/lit8 v1, v1, -0x1

    .line 224
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 152
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 154
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    .line 155
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->c_()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/theme/ba;->b(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)Lcom/dolphin/browser/theme/data/a;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 161
    :cond_3
    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 165
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private b(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)Lcom/dolphin/browser/theme/data/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Lcom/dolphin/browser/theme/data/a;",
            ")",
            "Lcom/dolphin/browser/theme/data/a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 169
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    .line 177
    :goto_0
    return-object v0

    .line 172
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 173
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 177
    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 137
    const-string v1, "wallpapers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/dolphin/browser/theme/b/f;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->k()Ljava/util/List;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/theme/ba;->b(Ljava/util/List;Ljava/util/List;)V

    .line 144
    :cond_0
    return-object v1
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_1

    .line 250
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 238
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 239
    instance-of v2, v0, Lcom/dolphin/browser/theme/data/s;

    if-eqz v2, :cond_2

    .line 240
    check-cast v0, Lcom/dolphin/browser/theme/data/q;

    .line 241
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/q;->c_()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 244
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/q;->x()I

    move-result v0

    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ak;->d()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 245
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 246
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 261
    :cond_0
    return-void

    .line 256
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 257
    invoke-direct {p0, p2, v0}, Lcom/dolphin/browser/theme/ba;->c(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Lcom/dolphin/browser/theme/data/a;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 264
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 272
    :goto_0
    return v0

    .line 267
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 268
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 269
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 272
    goto :goto_0
.end method


# virtual methods
.method public a(II)Ljava/io/File;
    .locals 4

    .prologue
    .line 392
    invoke-static {p1}, Lcom/dolphin/browser/theme/b/a;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 398
    :goto_0
    return-object v0

    .line 396
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/theme/a;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 397
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon_cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/theme/data/a;)V
    .locals 1

    .prologue
    .line 408
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    .line 410
    packed-switch v0, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 415
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/theme/ba;->a(Lcom/dolphin/browser/theme/data/a;Ljava/util/List;)V

    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/theme/ba;->a(Lcom/dolphin/browser/theme/data/a;Ljava/util/List;)V

    goto :goto_0

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;Lcom/dolphin/browser/theme/data/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;",
            "Lcom/dolphin/browser/theme/data/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 374
    if-ltz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 379
    invoke-virtual {p2}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v2

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/dolphin/browser/theme/ba;->a(II)Ljava/io/File;

    move-result-object v2

    .line 380
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->deleteFile(Ljava/io/File;)V

    .line 383
    :cond_2
    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->g_()V

    .line 384
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/dolphin/browser/theme/bb;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/bb;-><init>(Lcom/dolphin/browser/theme/ba;)V

    .line 99
    sget-object v1, Lcom/dolphin/browser/util/t;->b:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 100
    return-void
.end method

.method public e()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 182
    const/4 v0, 0x0

    .line 183
    new-instance v2, Lcom/dolphin/browser/Network/h;

    iget-wide v3, p0, Lcom/dolphin/browser/theme/ba;->d:J

    invoke-direct {p0, v3, v4}, Lcom/dolphin/browser/theme/ba;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dolphin/browser/Network/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dolphin/browser/Network/h;->a()Lcom/dolphin/browser/Network/d;

    move-result-object v2

    .line 185
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/Network/d;->b(Z)Lcom/dolphin/browser/Network/n;

    move-result-object v2

    .line 186
    iget-object v3, v2, Lcom/dolphin/browser/Network/n;->b:Lorg/apache/http/StatusLine;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 187
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 188
    iget-object v2, v2, Lcom/dolphin/browser/Network/n;->c:Lorg/apache/http/HttpEntity;

    invoke-static {v2}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 195
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    .line 217
    :goto_1
    return v0

    .line 190
    :catch_0
    move-exception v2

    .line 191
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v2

    .line 193
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 198
    :cond_1
    const-string v2, "last_modified"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 200
    iput-wide v2, p0, Lcom/dolphin/browser/theme/ba;->d:J

    .line 202
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    if-nez v2, :cond_2

    .line 203
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ba;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    .line 204
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;)V

    .line 209
    :goto_2
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    if-nez v2, :cond_3

    .line 210
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ba;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;)V

    .line 216
    :goto_3
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ba;->f()V

    move v0, v1

    .line 217
    goto :goto_1

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ba;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ba;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/dolphin/browser/theme/ba;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_3
.end method

.method public f()V
    .locals 10

    .prologue
    .line 304
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 305
    const-string v1, "theme_promotion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 306
    iget-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    .line 307
    iget-object v2, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;

    .line 308
    iget-wide v3, p0, Lcom/dolphin/browser/theme/ba;->d:J

    .line 309
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 310
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 311
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 312
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 315
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 318
    :cond_0
    if-eqz v2, :cond_1

    .line 319
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 320
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->q()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 324
    :cond_1
    :try_start_0
    const-string v0, "last_modified"

    invoke-virtual {v5, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 325
    const-string v0, "wallpapers"

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    const-string v0, "skins"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v0, "fonts"

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/util/IOUtilities;->saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 334
    :goto_2
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 331
    :catch_1
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public g()V
    .locals 4

    .prologue
    .line 337
    invoke-static {}, Lcom/dolphin/browser/theme/a;->getInstance()Lcom/dolphin/browser/theme/a;

    move-result-object v0

    .line 338
    const-string v1, "theme_promotion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    const-string v0, "last_modified"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/dolphin/browser/theme/ba;->d:J

    .line 344
    const-string v0, "wallpapers"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 345
    const-string v2, "skins"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 346
    invoke-static {v0}, Lcom/dolphin/browser/theme/b/f;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ba;->b:Ljava/util/List;

    .line 347
    invoke-static {v1}, Lcom/dolphin/browser/theme/b/f;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ba;->c:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
