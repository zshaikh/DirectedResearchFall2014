.class public final Lcom/a/a/g;
.super Ljava/lang/Object;
.source "TrackMonitor.java"


# static fields
.field private static a:[Lorg/apache/http/Header;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I


# instance fields
.field private volatile h:Z

.field private volatile i:Z

.field private final j:I

.field private k:Landroid/os/Handler;

.field private l:Lcom/a/a/c;

.field private m:Lcom/a/a/b;

.field private n:Lcom/a/a/e;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/Header;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Encoding"

    const-string v4, "gzip"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/g;->a:[Lorg/apache/http/Header;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/a/a/g;->h:Z

    .line 58
    iput-boolean v1, p0, Lcom/a/a/g;->i:Z

    .line 62
    iput-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    .line 63
    iput-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    .line 64
    iput-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    .line 207
    new-instance v0, Lcom/a/a/i;

    invoke-direct {v0, p0}, Lcom/a/a/i;-><init>(Lcom/a/a/g;)V

    iput-object v0, p0, Lcom/a/a/g;->o:Ljava/lang/Runnable;

    .line 67
    iput p2, p0, Lcom/a/a/g;->j:I

    .line 68
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0, p1, p3}, Lcom/a/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    .line 69
    invoke-static {p1}, Lcom/a/a/e;->a(Landroid/content/Context;)Lcom/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    .line 70
    new-instance v0, Lcom/a/a/c;

    invoke-direct {v0}, Lcom/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    .line 71
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "\\t"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\n\\f\\r]"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\u0000-\u001f]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 185
    :cond_0
    return-object p0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8

    .prologue
    .line 294
    sget-boolean v0, Lcom/a/a/g;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/a/g;->b:Z

    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/a/a/g;->c:I

    const-string v0, "type"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/a/a/g;->d:I

    const-string v0, "content"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/a/a/g;->e:I

    const-string v0, "recordtime"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/a/a/g;->f:I

    const-string v0, "appid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/a/a/g;->g:I

    .line 296
    :cond_0
    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 297
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    sget v0, Lcom/a/a/g;->c:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    sget v0, Lcom/a/a/g;->d:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 301
    sget v0, Lcom/a/a/g;->e:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    sget v0, Lcom/a/a/g;->f:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    sget v4, Lcom/a/a/g;->g:I

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 310
    :goto_1
    new-instance v0, Lcom/a/a/a;

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 312
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_1

    .line 315
    :cond_1
    return-object v7
.end method

.method private a(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/e;->a()I

    move-result v0

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(I)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, p1}, Lcom/a/a/e;->a(Landroid/content/ContentValues;)Z

    .line 205
    return-void
.end method

.method static synthetic a(Lcom/a/a/g;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/a/a/g;->a(Landroid/content/ContentValues;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 4

    .prologue
    .line 151
    invoke-static {p1}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/f;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-static {p3}, Lcom/a/a/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/f;->b(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, p4}, Lcom/a/a/f;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p6, p7}, Lcom/a/a/f;->a(J)V

    .line 160
    invoke-virtual {v0}, Lcom/a/a/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 161
    :goto_1
    const-string v2, "TrackMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "track event "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p8, :cond_3

    const-string v1, "[sync]"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 164
    const-string v2, "_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v2, "type"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "recordtime"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "appid"

    iget-object v2, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    invoke-virtual {v2}, Lcom/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-nez p8, :cond_1

    iget-boolean v0, p0, Lcom/a/a/g;->h:Z

    if-nez v0, :cond_4

    .line 171
    :cond_1
    invoke-direct {p0, v1}, Lcom/a/a/g;->a(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_3
    const-string v1, "[async]"

    goto :goto_2

    .line 173
    :cond_4
    new-instance v0, Lcom/a/a/h;

    invoke-direct {v0, p0, v1}, Lcom/a/a/h;-><init>(Lcom/a/a/g;Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    invoke-virtual {v1, v0}, Lcom/a/a/c;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/a/a/g;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/a/a/g;->h:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 334
    :try_start_0
    const-string v2, "TrackMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[postToUri] post to url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {p2}, Lcom/a/a/g;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    new-instance v3, Lcom/a/a/a/e;

    invoke-direct {v3, p1}, Lcom/a/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/a/a/a/e;->a(Lorg/apache/http/HttpEntity;)Lcom/a/a/a/e;

    move-result-object v2

    sget-object v3, Lcom/a/a/g;->a:[Lorg/apache/http/Header;

    invoke-virtual {v2, v3}, Lcom/a/a/a/e;->a([Lorg/apache/http/Header;)Lcom/a/a/a/e;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lcom/a/a/a/e;->a(Ljava/lang/String;)Lcom/a/a/a/e;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/a/a/a/e;->a(Z)Lcom/a/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/a/a/e;->a()Lcom/a/a/a/a;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/a/a/a/a;->a(Z)Lcom/a/a/a/h;

    move-result-object v2

    invoke-static {v2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/h;)V

    invoke-virtual {v2}, Lcom/a/a/a/h;->b()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/a/a/a/a;->a(Lorg/apache/http/HttpEntity;)V

    .line 335
    if-nez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    invoke-virtual {v2}, Lcom/a/a/a/h;->a()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 340
    if-eqz v3, :cond_0

    .line 343
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 344
    const-string v4, "TrackMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[request] responseCode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Lcom/a/a/a/h;->c()Lcom/a/a/k;

    move-result-object v2

    .line 346
    const-string v4, "TrackMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[request] result status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/k;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "TrackMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[request] result data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/a/k;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/a/a/k;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 350
    :catch_0
    move-exception v1

    .line 351
    const-string v2, "TrackMonitor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/a/g;)Lcom/a/a/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 369
    .line 374
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 376
    :try_start_2
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 396
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 397
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 401
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 404
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 409
    :cond_0
    :goto_0
    return-object v0

    .line 398
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 399
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 401
    if-eqz v2, :cond_1

    .line 402
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 404
    :cond_1
    if-eqz v3, :cond_0

    .line 405
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    .line 402
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 404
    :cond_2
    if-eqz v3, :cond_3

    .line 405
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v0

    .line 401
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 398
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/a/a/g;)Lcom/a/a/e;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/g;)V
    .locals 7

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/a/a/g;->i:Z

    if-nez v0, :cond_0

    const-string v0, "TrackMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[postTrack] is posting track: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/a/a/g;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->i:Z

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    iget-object v3, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    invoke-virtual {v3}, Lcom/a/a/b;->a()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Lcom/a/a/e;->a(Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/a/a/g;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    :goto_1
    invoke-static {}, Lcom/a/a;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    :try_start_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/a/f;->a(Ljava/lang/String;)Lcom/a/a/f;

    move-result-object v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0}, Lcom/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/a/a/e;->b(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "TrackMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[postTrack] post track local params: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v5, "header"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "body"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "TrackMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "[postTrack] post self define track content: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "TrackMonitor"

    const-string v2, "[postTrack] post track content succeed."

    invoke-static {v0, v2}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/a/g;->n:Lcom/a/a/e;

    invoke-virtual {v0, v1}, Lcom/a/a/e;->a(Ljava/util/List;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->i:Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "TrackMonitor"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/a/b/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v1, v0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_5
    invoke-virtual {v5}, Lcom/a/a/f;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v1, "TrackMonitor"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/a/a/g;)Lcom/a/a/c;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    return-object v0
.end method

.method static synthetic f(Lcom/a/a/g;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/a/a/g;->j:I

    return v0
.end method

.method static synthetic g(Lcom/a/a/g;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/a/a/g;->m:Lcom/a/a/b;

    invoke-virtual {v0}, Lcom/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 123
    invoke-virtual/range {v0 .. v7}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 124
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 141
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 142
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/g;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/g;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 132
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 133
    return-void
.end method

.method public final declared-synchronized c()V
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    const-string v0, "TrackMonitor"

    const-string v1, "start ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->a()V

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/g;->h:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->i:Z

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    .line 97
    iget-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/g;->o:Ljava/lang/Runnable;

    iget v2, p0, Lcom/a/a/g;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/a/g;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 115
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    const-string v0, "TrackMonitor"

    const-string v1, "stop ..."

    invoke-static {v0, v1}, Lcom/a/b/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/a/a/g;->l:Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->b()V

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/a/a/g;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/a/a/g;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->h:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/g;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
