.class public Lcom/dolphin/browser/util/bn;
.super Ljava/lang/Object;
.source "LocalizationConfiger.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Z


# instance fields
.field private d:Ljava/util/Locale;

.field private e:Ljava/util/Locale;

.field private f:Z

.field private g:Ljava/util/Locale;

.field private h:Ljava/lang/String;

.field private i:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bn;->a:Ljava/lang/Object;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/util/bn;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/util/bn;->i()V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/util/bo;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/util/bn;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/util/bn;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/util/bp;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 238
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v2, "Config"

    const-string v3, "Loaded config from file %s: %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    invoke-static {v0}, Lcom/dolphin/browser/util/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    const-string v1, "Config"

    const-string v2, "Failed to read config file: %s."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 221
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 222
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 225
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 226
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 227
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v1

    .line 229
    const-string v4, "Config"

    const-string v5, "Failed to merge config item: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 230
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 233
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Locale;Lcom/dolphin/browser/util/ao;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 352
    invoke-virtual {p2}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/dolphin/browser/util/ao;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    const-string v0, ""

    .line 359
    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "%s_%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "%s_%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "%s@%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "%s_%s@%s"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "%s_%s@%s"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 366
    return-object v1
.end method

.method private b(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 287
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 288
    invoke-direct {p0}, Lcom/dolphin/browser/util/bn;->j()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ofw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    :cond_0
    const-string v0, ""

    .line 292
    :cond_1
    invoke-static {p2}, Lcom/dolphin/browser/util/bk;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 297
    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    .line 299
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    .line 300
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x1

    .line 301
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const/4 v4, 0x1

    .line 302
    :goto_3
    if-eqz v1, :cond_6

    .line 312
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 313
    const-string v1, "%s_%s@%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v1, v10}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_2
    if-eqz v2, :cond_3

    .line 316
    const-string v1, "%s_%s@%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v6, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v1, v10}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_3
    if-eqz v4, :cond_4

    .line 319
    const-string v1, "%s_%s@%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v1, v10}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    if-eqz v3, :cond_5

    .line 322
    const-string v1, "%s_%s@%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v1, v10}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_5
    const-string v1, "%s@%s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v0, v10, v11

    invoke-static {v1, v10}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 336
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v1, v10

    const/4 v10, 0x1

    aput-object v5, v1, v10

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_7
    if-eqz v2, :cond_8

    .line 339
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_8
    if-eqz v3, :cond_9

    .line 342
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_9
    if-eqz v4, :cond_a

    .line 345
    const-string v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/cn;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_a
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-object v9

    .line 298
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 299
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 300
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 301
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;Z)Ljava/util/Locale;
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    const/16 v0, 0x5f

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    if-nez p2, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/bn;->e(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 129
    :goto_1
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static final b(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 261
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    .line 264
    :catch_0
    move-exception v0

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/util/Locale;
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->g()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->h()V

    .line 148
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    goto :goto_0

    .line 151
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 152
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v0, v2, v1

    .line 154
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 152
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 161
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/util/Locale;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 590
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 591
    array-length v0, v1

    if-le v0, v3, :cond_0

    .line 592
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static h()V
    .locals 6

    .prologue
    .line 95
    sget-object v1, Lcom/dolphin/browser/util/bn;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/util/bn;->c:Z

    if-eqz v0, :cond_0

    .line 97
    monitor-exit v1

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    .line 100
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "en"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "ja"

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "de"

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "it"

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "ko"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "zh_CN"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "zh_TW"

    sget-object v3, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/dolphin/browser/util/bn;->b:Ljava/util/HashMap;

    const-string v2, "zh_HK"

    new-instance v3, Ljava/util/Locale;

    const-string v4, "zh"

    const-string v5, "HK"

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/util/bn;->c:Z

    .line 109
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private i()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 187
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 189
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 191
    const-string v0, "config.json"

    invoke-direct {p0, v3, v0}, Lcom/dolphin/browser/util/bn;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 192
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 193
    if-eqz v4, :cond_0

    .line 195
    invoke-direct {p0, v2, v4}, Lcom/dolphin/browser/util/bn;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 197
    const-string v5, "locale"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const-string v5, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/bn;->f(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 199
    iput-object v0, p0, Lcom/dolphin/browser/util/bn;->e:Ljava/util/Locale;

    .line 200
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/dolphin/browser/util/bn;->f:Z

    .line 204
    :cond_0
    const-string v4, "config.json"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Ljava/util/Locale;Lcom/dolphin/browser/util/ao;)[Ljava/lang/String;

    move-result-object v4

    .line 205
    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 206
    invoke-direct {p0, v3, v6}, Lcom/dolphin/browser/util/bn;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 207
    if-eqz v6, :cond_1

    .line 208
    invoke-direct {p0, v2, v6}, Lcom/dolphin/browser/util/bn;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_2
    const-string v0, "Config"

    const-string v3, "Product config: %s."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    iput-object v2, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    .line 217
    :goto_1
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    const-string v0, "Config"

    const-string v3, "Product config: %s."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    iput-object v2, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    const-string v3, "Config"

    const-string v4, "Product config: %s."

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    iput-object v2, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    throw v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "builtin/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/util/bn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 379
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/util/bn;->b(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    .line 381
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    invoke-static {v2, v1}, Lcom/dolphin/browser/util/bn;->b(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 270
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 271
    const/4 v1, 0x0

    .line 272
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/util/bn;->b(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 275
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 281
    :goto_1
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public b()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->d:Ljava/util/Locale;

    .line 401
    if-nez v0, :cond_1

    .line 403
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->e()Ljava/util/Locale;

    move-result-object v0

    .line 404
    if-nez v0, :cond_0

    .line 405
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 406
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/util/bn;->b(Ljava/lang/String;Z)Ljava/util/Locale;

    move-result-object v0

    .line 410
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/util/bn;->d:Ljava/util/Locale;

    .line 412
    :cond_1
    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 425
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 426
    iget-object v1, p0, Lcom/dolphin/browser/util/bn;->h:Ljava/lang/String;

    .line 427
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/util/bn;->g:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 430
    :cond_0
    iput-object v0, p0, Lcom/dolphin/browser/util/bn;->h:Ljava/lang/String;

    .line 431
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/util/bn;->b(Ljava/lang/String;Z)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/util/bn;->g:Ljava/util/Locale;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->g:Ljava/util/Locale;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 442
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 453
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->e:Ljava/util/Locale;

    .line 454
    iget-boolean v1, p0, Lcom/dolphin/browser/util/bn;->f:Z

    if-nez v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    const-string v2, "locale"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    invoke-direct {p0, v1}, Lcom/dolphin/browser/util/bn;->f(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 458
    iput-object v0, p0, Lcom/dolphin/browser/util/bn;->e:Ljava/util/Locale;

    .line 460
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dolphin/browser/util/bn;->f:Z

    .line 462
    :cond_1
    return-object v0
.end method

.method public f()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 474
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/util/bn;->i:Lorg/json/JSONObject;

    const-string v1, "countryIso"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/ce;->a()Lcom/dolphin/browser/util/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/ce;->b()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/dolphin/browser/util/bn;->d()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
