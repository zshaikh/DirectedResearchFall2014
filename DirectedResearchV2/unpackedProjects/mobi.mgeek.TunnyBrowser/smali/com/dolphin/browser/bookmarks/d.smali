.class public Lcom/dolphin/browser/bookmarks/d;
.super Ljava/lang/Object;
.source "BookmarkManager.java"


# static fields
.field private static a:Z

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dolphin/browser/bookmarks/d;->a:Z

    .line 176
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dolphin/browser/bookmarks/d;->b:J

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;JJI)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 267
    if-nez p0, :cond_0

    .line 268
    const/4 v0, -0x1

    .line 291
    :goto_0
    return v0

    .line 271
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 272
    const-string v1, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v1, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 275
    const-string v1, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    const-string v1, "sync_status"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 278
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 279
    if-lez v1, :cond_1

    .line 281
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v1

    .line 282
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 283
    const-string v3, "folder"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 284
    const-string v3, "_order"

    const-string v4, "_order"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 285
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onMoved(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 291
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JI)I
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 212
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    const/4 v0, -0x1

    .line 250
    :goto_0
    return v0

    .line 216
    :cond_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "title=? AND folder=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    const/4 v0, -0x2

    goto :goto_0

    .line 226
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->a()J

    move-result-wide v0

    .line 227
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 230
    :cond_3
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 231
    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(J)V

    .line 234
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 235
    const-string v3, "title"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    const-string v3, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 238
    const-string v3, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string v3, "_order"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 240
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_4

    .line 243
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v1

    .line 244
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v6

    .line 248
    goto/16 :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 250
    :cond_4
    const/4 v0, -0x3

    goto/16 :goto_0
.end method

.method public static a()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 178
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_init_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/dolphin/browser/bookmarks/d;->b:J

    .line 179
    sget-wide v0, Lcom/dolphin/browser/bookmarks/d;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/dolphin/browser/bookmarks/d;->b:J

    .line 181
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_init_time"

    sget-wide v2, Lcom/dolphin/browser/bookmarks/d;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    :cond_0
    sget-wide v0, Lcom/dolphin/browser/bookmarks/d;->b:J

    return-wide v0
.end method

.method public static a(Landroid/content/ContentResolver;J[Ljava/lang/String;IZ)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    const-string v0, "is_folder DESC, "

    .line 446
    if-eqz p5, :cond_0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE UNICODE ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 449
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;J[Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    const-string v0, "is_folder DESC, "

    .line 431
    if-eqz p4, :cond_0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " COLLATE UNICODE ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 437
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 434
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_order"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Lcom/dolphin/browser/bookmarks/f;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 479
    new-instance v0, Lcom/dolphin/browser/bookmarks/f;

    invoke-direct {v0, v3}, Lcom/dolphin/browser/bookmarks/f;-><init>(I)V

    .line 481
    const/4 v1, 0x1

    and-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    .line 482
    invoke-static {p0}, Lcom/dolphin/browser/bookmarks/o;->a(Landroid/content/Context;)Lcom/dolphin/browser/bookmarks/a;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 484
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_0
    const/4 v1, 0x2

    and-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_1

    .line 489
    new-instance v1, Lcom/dolphin/browser/bookmarks/p;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmarks/p;-><init>(Landroid/content/Context;)V

    .line 490
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-ne v3, v1, :cond_2

    .line 496
    new-instance v1, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;-><init>(Landroid/content/Context;)V

    .line 497
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 498
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_2
    const/16 v1, 0x8

    and-int/lit8 v2, p1, 0x8

    if-ne v1, v2, :cond_3

    .line 503
    new-instance v1, Lcom/dolphin/browser/bookmarks/l;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmarks/l;-><init>(Landroid/content/Context;)V

    .line 504
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 505
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_3
    const/16 v1, 0x10

    and-int/lit8 v2, p1, 0x10

    if-ne v1, v2, :cond_4

    .line 510
    new-instance v1, Lcom/dolphin/browser/bookmarks/m;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/bookmarks/m;-><init>(Landroid/content/Context;)V

    .line 511
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmarks/a;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 512
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/f;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_4
    return-object v0
.end method

.method public static a(J)V
    .locals 4

    .prologue
    .line 190
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 191
    sput-wide p0, Lcom/dolphin/browser/bookmarks/d;->b:J

    .line 192
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_init_time"

    sget-wide v2, Lcom/dolphin/browser/bookmarks/d;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 198
    :cond_0
    return-void
.end method

.method public static final a(Landroid/content/ContentResolver;I)V
    .locals 3

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t use this API to delete Dolphin bookmarks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    if-nez p0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentResolver might not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 464
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;JJJJ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 302
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->REORDER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 303
    const-string v1, "bookmark_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 304
    const-string v1, "bookmark_folder"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 305
    const-string v1, "from_order"

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 306
    const-string v1, "to_order"

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 309
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 310
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 311
    const-string v2, "bookmark_id"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 312
    const-string v2, "from_order"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    const-string v2, "to_order"

    invoke-virtual {v1, v2, p7, p8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onChildReordered(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dolphin/browser/bookmarks/k;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmarks/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/bookmarks/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmarks/g;-><init>(Landroid/content/Context;Lcom/dolphin/browser/bookmarks/k;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmarks/g;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;J)Z
    .locals 1

    .prologue
    .line 321
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/bookmarks/d;->b(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 152
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "is_folder = 0 AND url=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 158
    if-eqz v1, :cond_4

    .line 159
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 164
    :goto_0
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    move v0, v6

    .line 173
    :goto_2
    return v0

    .line 161
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 162
    :goto_3
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-eqz v1, :cond_3

    .line 165
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_1

    .line 165
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move v0, v7

    .line 173
    goto :goto_2

    .line 164
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 161
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_0
.end method

.method public static b(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 329
    .line 332
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 335
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 339
    :cond_0
    if-eqz v1, :cond_1

    .line 340
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 344
    :cond_1
    return-object v6

    .line 339
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    if-eqz v1, :cond_2

    .line 340
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 339
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 591
    new-instance v0, Lcom/dolphin/browser/bookmarks/e;

    invoke-direct {v0}, Lcom/dolphin/browser/bookmarks/e;-><init>()V

    .line 599
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/f;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 600
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 603
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 604
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 606
    const/16 v1, 0xc0

    invoke-static {v1}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v1

    .line 608
    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d()V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->e()V

    return-void
.end method

.method private static e()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 579
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "chrome_sync_version"

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/s;->b(Ljava/lang/String;J)V

    .line 581
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "firefox_sync_version"

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/s;->b(Ljava/lang/String;J)V

    .line 584
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 586
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;I)V

    .line 587
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;I)V

    .line 588
    return-void
.end method
