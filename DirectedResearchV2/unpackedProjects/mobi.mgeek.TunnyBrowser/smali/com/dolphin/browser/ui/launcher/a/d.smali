.class public Lcom/dolphin/browser/ui/launcher/a/d;
.super Ljava/lang/Object;
.source "HomeWorkspaceManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/dolphin/browser/ui/launcher/a/c;

.field private e:Lcom/dolphin/browser/ui/launcher/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    const-class v0, Lcom/dolphin/browser/ui/launcher/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    .line 481
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "twitter.com"

    aput-object v1, v0, v2

    const-string v1, "mbga.jp"

    aput-object v1, v0, v3

    const-string v1, "youtube.com"

    aput-object v1, v0, v4

    const-string v1, "amazon.co.jp"

    aput-object v1, v0, v5

    const-string v1, "www.dolphin-browser.com/apps/aphone.htm"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->f:[Ljava/lang/String;

    .line 488
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://opsen.dolphin-browser.com/resources/icon/topsite/twitter_1.png"

    aput-object v1, v0, v2

    const-string v1, "http://opsen.dolphin-browser.com/resources/icon/mobage_new.png"

    aput-object v1, v0, v3

    const-string v1, "http://opsen.dolphin-browser.com/resources/icon/topsite/youtube_1.png"

    aput-object v1, v0, v4

    const-string v1, "http://opsen.dolphin-browser.com/resources/icon/topsite/amazon.png"

    aput-object v1, v0, v5

    const-string v1, "http://opsen.dolphin-browser.com/resources/icon/topsite/hotapps.png"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->g:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->b:Z

    .line 78
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/ui/launcher/a/e;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/a/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v0

    .line 445
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 446
    const-string v2, "home_icons/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 448
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/AppContext;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_0

    .line 450
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 267
    if-nez p1, :cond_0

    .line 279
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 271
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/preload/c;->e()Z

    move-result v0

    .line 275
    const-string v1, "jp"

    invoke-static {}, Lcom/dolphin/browser/util/ao;->a()Lcom/dolphin/browser/util/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/ao;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 276
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 277
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/a/d;->c(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_2
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/a/d;->b(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/dolphin/browser/ui/launcher/a/d;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/f;->a()Lcom/dolphin/browser/ui/launcher/a/d;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/dolphin/browser/ui/launcher/a/c;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p2}, Lcom/dolphin/browser/ui/launcher/a/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    .line 180
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 181
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/a/d;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    .line 145
    const-string v0, "preload_data"

    const-string v1, "getdata_failed"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 148
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 459
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasMigrateSpeedDialDataFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    const-string v1, "has_migrate_speed_dial_data_once"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 464
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v0, 0x1

    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 13

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 285
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 287
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v2, "begin generate HomeShortcut"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->e()Ljava/lang/String;

    move-result-object v7

    move v4, v1

    move v0, v3

    move v2, v3

    .line 293
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 294
    invoke-static {p1}, Lcom/dolphin/browser/provider/ac;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/provider/ac;

    move-result-object v5

    .line 295
    if-eqz v5, :cond_0

    .line 299
    sget-object v8, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v9, "item.title: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, v5, Lcom/dolphin/browser/provider/ac;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    iget-object v8, v5, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v1

    .line 304
    :cond_1
    iget-object v8, v5, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/dolphin/browser/preload/c;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v1

    .line 307
    :cond_2
    new-instance v8, Lcom/dolphin/browser/ui/launcher/a/b;

    iget-object v9, v5, Lcom/dolphin/browser/provider/ac;->b:Ljava/lang/String;

    iget-object v10, v5, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v4, v11}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 308
    goto :goto_0

    .line 310
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 311
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v4, "shortcut is not null, begin add hot apps"

    invoke-static {v1, v4}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-nez v2, :cond_4

    .line 315
    new-instance v1, Lcom/dolphin/browser/ui/launcher/a/b;

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    sget-object v4, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v4, 0x7f0e030d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v7, v4, v5}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 317
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Lcom/dolphin/browser/preload/c;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/b;

    invoke-static {}, Lcom/dolphin/browser/preload/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/preload/c;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 323
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_5
    invoke-static {}, Lcom/dolphin/browser/preload/c;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    invoke-static {}, Lcom/dolphin/browser/preload/c;->i()Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_6

    .line 329
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_6
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 335
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v1, v3

    move v2, v3

    .line 340
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 341
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v2, v2, 0x1

    .line 343
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_7

    add-int/lit8 v8, v7, -0x1

    if-ne v2, v8, :cond_8

    .line 344
    :cond_7
    new-instance v2, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/ui/launcher/a/a;-><init>(ILjava/util/List;)V

    .line 345
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 v1, v1, 0x1

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 340
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 352
    :cond_9
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/c;

    invoke-direct {v0, v5}, Lcom/dolphin/browser/ui/launcher/a/c;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz p1, :cond_a

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_a
    :goto_2
    return-object v0

    .line 358
    :cond_b
    if-eqz p1, :cond_c

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 363
    :cond_c
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 355
    :catch_0
    move-exception v0

    .line 356
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    if-eqz p1, :cond_c

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 358
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_d

    .line 359
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 496
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 504
    :goto_0
    return-object v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/dolphin/browser/ui/launcher/a/d;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 500
    sget-object v2, Lcom/dolphin/browser/ui/launcher/a/d;->f:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->g:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    .line 499
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 504
    goto :goto_0
.end method

.method private c(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 368
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 370
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v2, "begin generate HomeShortcut"

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v6, "http://win.auone.jp/r/pass/sp/pass_r7207000040.php"

    move v2, v1

    move v0, v3

    .line 375
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 376
    invoke-static {p1}, Lcom/dolphin/browser/provider/ac;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/provider/ac;

    move-result-object v4

    .line 377
    if-eqz v4, :cond_0

    .line 381
    sget-object v7, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v8, "item.title: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/dolphin/browser/provider/ac;->b:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 382
    iget-object v7, v4, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v1

    .line 385
    :cond_1
    new-instance v7, Lcom/dolphin/browser/ui/launcher/a/b;

    iget-object v8, v4, Lcom/dolphin/browser/provider/ac;->b:Ljava/lang/String;

    iget-object v9, v4, Lcom/dolphin/browser/provider/ac;->c:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    const/4 v10, 0x1

    invoke-direct {v7, v8, v9, v2, v10}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 386
    invoke-virtual {v7}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_2

    const-string v8, "http://win.auone.jp/r/pass/sp/pass_r7207000037.php"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const-string v2, "http://opsen.dolphin-browser.com/resources/icon/desktop/kddi.png"

    invoke-virtual {v7, v2}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Ljava/lang/String;)V

    .line 390
    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 391
    goto :goto_0

    .line 392
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 393
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v2, "shortcut is not null, begin add hot apps"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez v0, :cond_4

    .line 397
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0752

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/dolphin/browser/ui/launcher/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 399
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/preload/c;->i()Lcom/dolphin/browser/ui/launcher/a/b;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_5

    .line 403
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_5
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 408
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 409
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    move v1, v3

    move v2, v3

    .line 413
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 414
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v2, v2, 0x1

    .line 416
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_6

    add-int/lit8 v8, v7, -0x1

    if-ne v2, v8, :cond_7

    .line 417
    :cond_6
    new-instance v2, Lcom/dolphin/browser/ui/launcher/a/a;

    invoke-direct {v2, v1, v0}, Lcom/dolphin/browser/ui/launcher/a/a;-><init>(ILjava/util/List;)V

    .line 418
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v1, v1, 0x1

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 413
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 425
    :cond_8
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/c;

    invoke-direct {v0, v6}, Lcom/dolphin/browser/ui/launcher/a/c;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    if-eqz p1, :cond_9

    .line 432
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_9
    :goto_2
    return-object v0

    .line 431
    :cond_a
    if-eqz p1, :cond_b

    .line 432
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_b
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 428
    :catch_0
    move-exception v0

    .line 429
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    if-eqz p1, :cond_b

    .line 432
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 431
    :catchall_0
    move-exception v0

    if-eqz p1, :cond_c

    .line 432
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0
.end method

.method public static c()Ljava/io/File;
    .locals 3

    .prologue
    .line 82
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "launcher"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    .line 106
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/dolphin/browser/search/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home.json_yandex"

    .line 108
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/bn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    return-object v0

    .line 107
    :cond_0
    const-string v0, "home.json"

    goto :goto_0
.end method

.method private k()Z
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    invoke-static {v0}, Ldolphin/preference/z;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "has_migrate_speed_dial_data_once"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Z
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    invoke-virtual {v1}, Lcom/dolphin/browser/ui/launcher/a/g;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/io/File;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/ui/launcher/a/d;->c()Ljava/io/File;

    move-result-object v1

    const-string v2, "home.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/a/d;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 94
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    invoke-static {v2}, Lcom/dolphin/browser/ui/launcher/a/c;->a(Lorg/json/JSONArray;)Lcom/dolphin/browser/ui/launcher/a/c;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    sget-object v2, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public f()Lcom/dolphin/browser/ui/launcher/a/g;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/dolphin/browser/ui/launcher/a/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/a/g;-><init>(Lcom/dolphin/browser/ui/launcher/a/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    return-object v0
.end method

.method public g()Lcom/dolphin/browser/ui/launcher/a/c;
    .locals 6

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v1, "getHomeShortcuts - waiting for data..."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->e:Lcom/dolphin/browser/ui/launcher/a/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/g;->h()V

    .line 197
    :cond_0
    sget-object v0, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v1, "getHomeShortcuts"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->d:Lcom/dolphin/browser/ui/launcher/a/c;

    if-eqz v0, :cond_5

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->d:Lcom/dolphin/browser/ui/launcher/a/c;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/c;->a()Ljava/util/List;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 202
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    const-string v2, "return mOldSpeeddialHomeWorkspace"

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/a/d;->e()Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v1

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/a;

    .line 206
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/a/b;

    .line 207
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Ljava/lang/String;Lcom/dolphin/browser/ui/launcher/a/c;)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 210
    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/launcher/a/b;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/dolphin/browser/ui/launcher/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 216
    invoke-virtual {v0, v4}, Lcom/dolphin/browser/ui/launcher/a/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->d:Lcom/dolphin/browser/ui/launcher/a/c;

    .line 242
    :goto_1
    return-object v0

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/a/d;->d()Ljava/io/File;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 230
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "utf-8"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/a/c;->a(Lorg/json/JSONArray;)Lcom/dolphin/browser/ui/launcher/a/c;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/a/d;->e()Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 236
    :catch_2
    move-exception v0

    .line 237
    sget-object v1, Lcom/dolphin/browser/ui/launcher/a/d;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public h()V
    .locals 2

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/a/d;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lcom/dolphin/browser/provider/y;->a()Lcom/dolphin/browser/provider/y;

    move-result-object v0

    .line 473
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/y;->a(I)V

    .line 474
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/y;->b(I)V

    .line 475
    invoke-virtual {v0}, Lcom/dolphin/browser/provider/y;->b()Landroid/database/Cursor;

    move-result-object v0

    .line 476
    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/ui/launcher/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/a/d;->d:Lcom/dolphin/browser/ui/launcher/a/c;

    .line 477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/launcher/a/d;->a(Z)V

    .line 479
    :cond_0
    return-void
.end method
