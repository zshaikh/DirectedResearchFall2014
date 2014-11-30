.class public Lcom/dolphin/browser/pagedrop/b/a;
.super Ljava/lang/Object;
.source "DataBaseOperation.java"


# static fields
.field private static a:Lcom/dolphin/browser/pagedrop/b/a;


# instance fields
.field private b:Lcom/dolphin/browser/pagedrop/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/pagedrop/b/a;->a:Lcom/dolphin/browser/pagedrop/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static a()Lcom/dolphin/browser/pagedrop/b/a;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/pagedrop/b/a;->a:Lcom/dolphin/browser/pagedrop/b/a;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/dolphin/browser/pagedrop/b/a;

    invoke-direct {v0}, Lcom/dolphin/browser/pagedrop/b/a;-><init>()V

    sput-object v0, Lcom/dolphin/browser/pagedrop/b/a;->a:Lcom/dolphin/browser/pagedrop/b/a;

    .line 25
    :cond_0
    sget-object v0, Lcom/dolphin/browser/pagedrop/b/a;->a:Lcom/dolphin/browser/pagedrop/b/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 204
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where del != 1 order by _id desc limit ?,?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 172
    if-nez v0, :cond_2

    move-object v0, v1

    .line 173
    goto :goto_0

    :cond_2
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 175
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lcom/dolphin/browser/pagedrop/b/b;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/pagedrop/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v9

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    const-string v1, "user_table"

    const-string v3, "userID=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    if-ne v8, v1, :cond_2

    move v0, v8

    :goto_1
    move v9, v0

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 128
    const/4 v2, -0x1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v1}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 107
    const-wide/16 v3, -0x1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 250
    const-string v8, ""

    .line 251
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 275
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    if-nez v0, :cond_2

    move-object v0, v8

    .line 256
    goto :goto_0

    .line 258
    :cond_2
    const-string v1, "user_table"

    const-string v3, "userID=?"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 261
    if-nez v1, :cond_3

    move-object v0, v8

    .line 262
    goto :goto_0

    .line 263
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 265
    goto :goto_0

    .line 268
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v9, v0, :cond_5

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 270
    goto :goto_0

    .line 272
    :cond_5
    const-string v0, "imageName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 273
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 279
    const-string v8, ""

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 304
    :goto_0
    return-object v0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/b/a;->b:Lcom/dolphin/browser/pagedrop/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 284
    if-nez v0, :cond_2

    move-object v0, v8

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    const-string v1, "user_table"

    const-string v3, "userID=?"

    new-array v4, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 290
    if-nez v1, :cond_3

    move-object v0, v8

    .line 291
    goto :goto_0

    .line 292
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 294
    goto :goto_0

    .line 297
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v9, v0, :cond_5

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 299
    goto :goto_0

    .line 301
    :cond_5
    const-string v0, "userName"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 302
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
