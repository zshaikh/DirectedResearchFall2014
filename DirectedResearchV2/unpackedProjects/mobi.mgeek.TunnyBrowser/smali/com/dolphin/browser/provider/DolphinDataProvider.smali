.class public Lcom/dolphin/browser/provider/DolphinDataProvider;
.super Landroid/content/ContentProvider;
.source "DolphinDataProvider.java"


# static fields
.field protected static a:[Ljava/lang/String;

.field private static b:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x6

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

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/provider/DolphinDataProvider;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 364
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 367
    :goto_0
    return p1

    .line 365
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 347
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;I)I

    move-result v0

    .line 348
    if-gtz v0, :cond_0

    .line 349
    const v0, 0x7fffffff

    .line 351
    :cond_0
    return v0
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 356
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 359
    :goto_0
    return p1

    .line 357
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a()Landroid/content/UriMatcher;
    .locals 4

    .prologue
    .line 68
    sget-object v0, Lcom/dolphin/browser/provider/DolphinDataProvider;->b:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/cr;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/cr;->a()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "DolphinDataProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authority:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/dolphin/browser/provider/DolphinDataProvider;->b:Landroid/content/UriMatcher;

    .line 72
    sget-object v1, Lcom/dolphin/browser/provider/DolphinDataProvider;->b:Landroid/content/UriMatcher;

    .line 73
    const-string v2, "most_visited"

    const/16 v3, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    const-string v2, "gestures"

    const/16 v3, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    :cond_0
    sget-object v0, Lcom/dolphin/browser/provider/DolphinDataProvider;->b:Landroid/content/UriMatcher;

    return-object v0
.end method

.method private static a(Lcom/dolphin/browser/gesture/a/a;)Lcom/dolphin/browser/provider/s;
    .locals 6

    .prologue
    .line 335
    new-instance v1, Lcom/dolphin/browser/provider/s;

    invoke-direct {v1}, Lcom/dolphin/browser/provider/s;-><init>()V

    .line 336
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/provider/s;->a(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/provider/s;->b(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/a/a;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/provider/s;->c(Ljava/lang/String;)V

    .line 339
    instance-of v0, p0, Lcom/dolphin/browser/gesture/a/e;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 340
    check-cast v0, Lcom/dolphin/browser/gesture/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/e;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/provider/s;->a(Ljava/lang/Object;)V

    .line 342
    :cond_0
    const-string v0, "DolphinDataProvider"

    const-string v2, "Action: %s."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 343
    return-object v1
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/dolphin/browser/provider/v;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/dolphin/browser/provider/v;

    invoke-direct {v0}, Lcom/dolphin/browser/provider/v;-><init>()V

    .line 199
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/provider/v;->a(J)V

    .line 200
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/v;->b(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/provider/v;->a(Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/v;->a([B)V

    .line 203
    const/4 v1, 0x5

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/v;->b([B)V

    .line 204
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/provider/v;->b(J)V

    .line 205
    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/dolphin/browser/gesture/a/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Lcom/dolphin/browser/provider/s;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/dolphin/browser/provider/s;"
        }
    .end annotation

    .prologue
    const v6, 0x3f333333

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/dolphin/browser/util/aa;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 269
    invoke-static {p3}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;)I

    move-result v5

    .line 270
    invoke-static {p1, v6}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;F)F

    move-result v2

    .line 271
    invoke-static {p2, v6}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;F)F

    move-result v6

    .line 274
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolphin/browser/core/AppContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/dolphin/browser/util/aq;->a([BLjava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/Gesture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    if-nez v0, :cond_0

    move-object v0, v1

    .line 320
    :goto_1
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/gesture/a;->a()Lcom/dolphin/browser/gesture/a;

    move-result-object v7

    .line 283
    invoke-static {}, Lcom/dolphin/browser/gesture/i;->a()Lcom/dolphin/browser/gesture/i;

    move-result-object v8

    .line 284
    invoke-virtual {v8, v0, v2, v6, v3}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;FFZ)Ljava/lang/String;

    move-result-object v6

    .line 285
    if-eqz p4, :cond_1

    const-string v2, "load url:"

    invoke-interface {p4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    .line 286
    :goto_2
    if-eqz v6, :cond_4

    .line 289
    invoke-static {p4, v6, v2}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 290
    invoke-virtual {v7, v6}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_3

    .line 292
    invoke-static {v0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Lcom/dolphin/browser/gesture/a/a;)Lcom/dolphin/browser/provider/s;

    move-result-object v1

    .line 295
    const-wide/16 v5, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/dolphin/browser/provider/s;->a(J)V

    .line 296
    new-array v0, v4, [Lcom/dolphin/browser/provider/s;

    aput-object v1, v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    .line 285
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 299
    goto :goto_1

    .line 301
    :cond_4
    invoke-virtual {v8, v0}, Lcom/dolphin/browser/gesture/i;->a(Lcom/dolphin/browser/gesture/Gesture;)Ljava/util/Set;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    invoke-static {p4, v0, v2}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    .line 306
    const-string v8, "DolphinDataProvider"

    const-string v9, "Skipping unsupported action: %s."

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static {v8, v9, v10}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 309
    :cond_6
    invoke-virtual {v7, v0}, Lcom/dolphin/browser/gesture/a;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_5

    .line 311
    invoke-static {v0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Lcom/dolphin/browser/gesture/a/a;)Lcom/dolphin/browser/provider/s;

    move-result-object v0

    .line 312
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/dolphin/browser/provider/s;->a(J)V

    .line 314
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v5, :cond_5

    .line 319
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/provider/s;

    .line 320
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/provider/s;

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Lcom/dolphin/browser/provider/v;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x2

    .line 154
    invoke-static {p0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;)I

    move-result v6

    .line 155
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 156
    const-string v3, "visits != 0"

    .line 157
    const-string v5, "visits DESC, date DESC"

    .line 158
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    .line 159
    sget-object v2, Lcom/dolphin/browser/provider/DolphinDataProvider;->a:[Ljava/lang/String;

    .line 160
    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v7

    .line 164
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/provider/BrowserProvider;

    .line 165
    if-nez v0, :cond_0

    .line 166
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 167
    const-string v0, "DolphinDataProvider"

    const-string v1, "Local provider not created."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-object v4

    .line 170
    :cond_0
    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/provider/BrowserProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 173
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 174
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v6, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3, p1}, Lcom/dolphin/browser/provider/DolphinDataProvider;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    if-eqz v4, :cond_1

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 182
    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/dolphin/browser/provider/v;

    move-result-object v5

    .line 184
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v8, "DolphinDataProvider"

    const-string v9, "Item: %s(%s), key=%s."

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/dolphin/browser/provider/v;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v12

    aput-object v3, v10, v13

    aput-object v4, v10, v11

    invoke-static {v8, v9, v10}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v7}, Landroid/content/ContentProviderClient;->release()Z

    .line 190
    const-string v0, "DolphinDataProvider"

    const-string v2, "Item(s) found %d (limit=%d)."

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v0, v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/dolphin/browser/provider/v;

    .line 193
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/provider/v;

    move-object v4, v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-object p0

    .line 219
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    const-string v1, "domain"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-static {p0}, Lcom/dolphin/browser/util/URIUtil;->getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 223
    :cond_2
    const-string v1, "site"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/dolphin/browser/util/URIUtil;->getTopLevelDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    .line 227
    :cond_4
    const-string v1, "host"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_5
    const-string v1, "hostPort"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    goto :goto_2

    .line 234
    :cond_7
    const-string v1, "authority"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 237
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 238
    :cond_8
    const-string v1, "index"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 242
    :cond_9
    const-string v1, "simplePath"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 246
    :cond_a
    const-string v1, "path"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 248
    invoke-static {v0}, Lcom/dolphin/browser/util/URIUtil;->clearQuery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 249
    :cond_b
    const-string v1, "query"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 261
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 89
    sparse-switch v0, :sswitch_data_0

    .line 95
    const-string v0, "DolphinDataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 91
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/dolphin-most-visited-history"

    goto :goto_0

    .line 93
    :sswitch_1
    const-string v0, "vnd.android.cursor.dir/dolphin-gesture-recognition-result"

    goto :goto_0

    .line 89
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 122
    const-string v1, "limit"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    const/4 v1, 0x0

    .line 125
    sparse-switch v0, :sswitch_data_0

    .line 141
    :try_start_0
    const-string v0, "DolphinDataProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v0, v1

    .line 148
    :goto_1
    return-object v0

    .line 127
    :sswitch_0
    const-string v0, "flv"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;Ljava/lang/String;)[Lcom/dolphin/browser/provider/v;

    move-result-object v2

    .line 129
    new-instance v0, Lcom/dolphin/browser/provider/ArrayCursor;

    const-class v3, Lcom/dolphin/browser/provider/v;

    invoke-direct {v0, v2, v3}, Lcom/dolphin/browser/provider/ArrayCursor;-><init>([Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    :sswitch_1
    :try_start_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    const-string v3, "precision"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v4, "multiPrecision"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    const-string v5, "gestureData"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 136
    invoke-static {v5, v3, v4, v2, v0}, Lcom/dolphin/browser/provider/DolphinDataProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[Lcom/dolphin/browser/provider/s;

    move-result-object v2

    .line 138
    new-instance v0, Lcom/dolphin/browser/provider/ArrayCursor;

    const-class v3, Lcom/dolphin/browser/provider/s;

    invoke-direct {v0, v2, v3}, Lcom/dolphin/browser/provider/ArrayCursor;-><init>([Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method
