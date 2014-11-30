.class public final Lcom/d/c;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final o:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/d/h;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "[a-z0-9_]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/d/c;->a:Ljava/util/regex/Pattern;

    .line 695
    new-instance v0, Lcom/d/e;

    invoke-direct {v0}, Lcom/d/e;-><init>()V

    sput-object v0, Lcom/d/c;->o:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v4, p0, Lcom/d/c;->i:J

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    .line 158
    iput-wide v4, p0, Lcom/d/c;->m:J

    .line 161
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/d/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 163
    new-instance v0, Lcom/d/d;

    invoke-direct {v0, p0}, Lcom/d/d;-><init>(Lcom/d/c;)V

    iput-object v0, p0, Lcom/d/c;->n:Ljava/util/concurrent/Callable;

    .line 180
    iput-object p1, p0, Lcom/d/c;->c:Ljava/io/File;

    .line 181
    iput p2, p0, Lcom/d/c;->f:I

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/d/c;->d:Ljava/io/File;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/d/c;->e:Ljava/io/File;

    .line 184
    iput p3, p0, Lcom/d/c;->h:I

    .line 185
    iput-wide p4, p0, Lcom/d/c;->g:J

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/d/c;I)I
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/d/c;->l:I

    return p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/d/c;
    .locals 6

    .prologue
    .line 200
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    if-gtz p2, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    new-instance v0, Lcom/d/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/d/c;-><init>(Ljava/io/File;IIJ)V

    .line 209
    iget-object v1, v0, Lcom/d/c;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :try_start_0
    invoke-direct {v0}, Lcom/d/c;->d()V

    .line 212
    invoke-direct {v0}, Lcom/d/c;->e()V

    .line 213
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/d/c;->d:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/d/c;->j:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Lcom/d/c;->b()V

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Lcom/d/c;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/d/c;-><init>(Ljava/io/File;IIJ)V

    .line 225
    invoke-direct {v0}, Lcom/d/c;->f()V

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/d/f;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 411
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/d/c;->h()V

    .line 412
    invoke-direct {p0, p1}, Lcom/d/c;->e(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 414
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/d/h;->e(Lcom/d/h;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 431
    :goto_0
    monitor-exit p0

    return-object v0

    .line 418
    :cond_1
    if-nez v0, :cond_2

    .line 419
    :try_start_1
    new-instance v0, Lcom/d/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/d/h;-><init>(Lcom/d/c;Ljava/lang/String;Lcom/d/d;)V

    .line 420
    iget-object v1, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 425
    :goto_1
    new-instance v0, Lcom/d/f;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/d/f;-><init>(Lcom/d/c;Lcom/d/h;Lcom/d/d;)V

    .line 426
    invoke-static {v1, v0}, Lcom/d/h;->a(Lcom/d/h;Lcom/d/f;)Lcom/d/f;

    .line 429
    iget-object v1, p0, Lcom/d/c;->j:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/d/c;->j:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 421
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 422
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/d/c;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Lcom/d/c;Lcom/d/f;Z)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/d/c;->a(Lcom/d/f;Z)V

    return-void
.end method

.method private declared-synchronized a(Lcom/d/f;Z)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 468
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/d/f;->a(Lcom/d/f;)Lcom/d/h;

    move-result-object v2

    .line 469
    invoke-static {v2}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 474
    :cond_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-static {v2}, Lcom/d/h;->d(Lcom/d/h;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    .line 475
    :goto_0
    iget v3, p0, Lcom/d/c;->h:I

    if-ge v1, v3, :cond_4

    .line 476
    invoke-static {p1}, Lcom/d/f;->b(Lcom/d/f;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-nez v3, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/d/f;->b()V

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_1
    invoke-virtual {v2, v1}, Lcom/d/h;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 481
    invoke-virtual {p1}, Lcom/d/f;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 475
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_4
    :goto_2
    :try_start_2
    iget v1, p0, Lcom/d/c;->h:I

    if-ge v0, v1, :cond_7

    .line 488
    invoke-virtual {v2, v0}, Lcom/d/h;->b(I)Ljava/io/File;

    move-result-object v1

    .line 489
    if-eqz p2, :cond_6

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 491
    invoke-virtual {v2, v0}, Lcom/d/h;->a(I)Ljava/io/File;

    move-result-object v3

    .line 492
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 493
    invoke-static {v2}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 494
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 495
    invoke-static {v2}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 496
    iget-wide v8, p0, Lcom/d/c;->i:J

    sub-long v3, v8, v4

    add-long/2addr v3, v6

    iput-wide v3, p0, Lcom/d/c;->i:J

    .line 487
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 499
    :cond_6
    invoke-static {v1}, Lcom/d/c;->a(Ljava/io/File;)V

    goto :goto_3

    .line 503
    :cond_7
    iget v0, p0, Lcom/d/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/c;->l:I

    .line 504
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/d/h;->a(Lcom/d/h;Lcom/d/f;)Lcom/d/f;

    .line 505
    invoke-static {v2}, Lcom/d/h;->d(Lcom/d/h;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_a

    .line 506
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/d/h;->a(Lcom/d/h;Z)Z

    .line 507
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/d/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 508
    if-eqz p2, :cond_8

    .line 509
    iget-wide v0, p0, Lcom/d/c;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/d/c;->m:J

    invoke-static {v2, v0, v1}, Lcom/d/h;->a(Lcom/d/h;J)J

    .line 516
    :cond_8
    :goto_4
    iget-wide v0, p0, Lcom/d/c;->i:J

    iget-wide v2, p0, Lcom/d/c;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_9

    invoke-direct {p0}, Lcom/d/c;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 517
    :cond_9
    iget-object v0, p0, Lcom/d/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/d/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private static a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 357
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/d/c;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/d/c;->i()V

    return-void
.end method

.method static synthetic c()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/d/c;->o:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic c(Lcom/d/c;)Z
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/d/c;->g()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 8

    .prologue
    .line 230
    new-instance v1, Lcom/d/k;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/d/c;->d:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/d/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/d/k;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 233
    :try_start_0
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v5

    .line 238
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/d/c;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/d/c;->h:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/d/j;->a(Ljava/io/Closeable;)V

    throw v0

    .line 249
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/d/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/d/c;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 255
    invoke-static {v1}, Lcom/d/j;->a(Ljava/io/Closeable;)V

    .line 257
    return-void
.end method

.method static synthetic d(Lcom/d/c;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/d/c;->f()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 260
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 261
    array-length v0, v2

    if-ge v0, v4, :cond_0

    .line 262
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    aget-object v1, v2, v7

    .line 266
    aget-object v0, v2, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    array-length v0, v2

    if-ne v0, v4, :cond_2

    .line 267
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 272
    if-nez v0, :cond_6

    .line 273
    new-instance v0, Lcom/d/h;

    invoke-direct {v0, p0, v1, v6}, Lcom/d/h;-><init>(Lcom/d/c;Ljava/lang/String;Lcom/d/d;)V

    .line 274
    iget-object v3, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 277
    :goto_1
    aget-object v0, v2, v5

    const-string v3, "CLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    array-length v0, v2

    iget v3, p0, Lcom/d/c;->h:I

    add-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_3

    .line 278
    invoke-static {v1, v7}, Lcom/d/h;->a(Lcom/d/h;Z)Z

    .line 279
    invoke-static {v1, v6}, Lcom/d/h;->a(Lcom/d/h;Lcom/d/f;)Lcom/d/f;

    .line 280
    array-length v0, v2

    invoke-static {v2, v4, v0}, Lcom/d/a;->a([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/d/h;->a(Lcom/d/h;[Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_3
    aget-object v0, v2, v5

    const-string v3, "DIRTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, v2

    if-ne v0, v4, :cond_4

    .line 282
    new-instance v0, Lcom/d/f;

    invoke-direct {v0, p0, v1, v6}, Lcom/d/f;-><init>(Lcom/d/c;Lcom/d/h;Lcom/d/d;)V

    invoke-static {v1, v0}, Lcom/d/h;->a(Lcom/d/h;Lcom/d/f;)Lcom/d/f;

    goto :goto_0

    .line 283
    :cond_4
    aget-object v0, v2, v5

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    array-length v0, v2

    if-eq v0, v4, :cond_1

    .line 286
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic e(Lcom/d/c;)I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/d/c;->h:I

    return v0
.end method

.method private e()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/d/c;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/d/c;->a(Ljava/io/File;)V

    .line 296
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 298
    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    .line 299
    :goto_1
    iget v4, p0, Lcom/d/c;->h:I

    if-ge v1, v4, :cond_0

    .line 300
    iget-wide v4, p0, Lcom/d/c;->i:J

    invoke-static {v0}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/d/c;->i:J

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/d/h;->a(Lcom/d/h;Lcom/d/f;)Lcom/d/f;

    move v1, v2

    .line 304
    :goto_2
    iget v4, p0, Lcom/d/c;->h:I

    if-ge v1, v4, :cond_2

    .line 305
    invoke-virtual {v0, v1}, Lcom/d/h;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/d/c;->a(Ljava/io/File;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/d/h;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/d/c;->a(Ljava/io/File;)V

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 308
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 311
    :cond_3
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 622
    sget-object v0, Lcom/d/c;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_]{1,64}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/d/c;)Ljava/io/File;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/d/c;->c:Ljava/io/File;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 322
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/d/c;->e:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 323
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 325
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lcom/d/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 329
    iget v0, p0, Lcom/d/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 331
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 334
    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/d/h;->c(Lcom/d/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/d/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 342
    iget-object v0, p0, Lcom/d/c;->e:Ljava/io/File;

    iget-object v1, p0, Lcom/d/c;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 343
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/d/c;->d:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    monitor-exit p0

    return-void
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 526
    .line 527
    iget v0, p0, Lcom/d/c;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/d/c;->l:I

    iget-object v1, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 605
    :goto_0
    iget-wide v0, p0, Lcom/d/c;->i:J

    iget-wide v2, p0, Lcom/d/c;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/d/c;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 609
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/d/i;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 365
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/d/c;->h()V

    .line 366
    invoke-direct {p0, p1}, Lcom/d/c;->e(Ljava/lang/String;)V

    .line 367
    iget-object v1, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/d/h;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    if-nez v2, :cond_0

    move-object v1, v3

    .line 399
    :goto_0
    monitor-exit p0

    return-object v1

    .line 372
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/d/h;->d(Lcom/d/h;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v3

    .line 373
    goto :goto_0

    .line 381
    :cond_1
    iget v1, p0, Lcom/d/c;->h:I

    new-array v7, v1, [Ljava/io/InputStream;

    .line 382
    iget v1, p0, Lcom/d/c;->h:I

    new-array v6, v1, [Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 384
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    iget v4, p0, Lcom/d/c;->h:I

    if-ge v1, v4, :cond_2

    .line 385
    invoke-virtual {v2, v1}, Lcom/d/h;->a(I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v6, v1

    .line 386
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v2, v1}, Lcom/d/h;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v7, v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 390
    goto :goto_0

    .line 393
    :cond_2
    :try_start_3
    iget v1, p0, Lcom/d/c;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/d/c;->l:I

    .line 394
    iget-object v1, p0, Lcom/d/c;->j:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 395
    invoke-direct {p0}, Lcom/d/c;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    iget-object v1, p0, Lcom/d/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/d/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 399
    :cond_3
    new-instance v1, Lcom/d/i;

    invoke-static {v2}, Lcom/d/h;->e(Lcom/d/h;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/d/i;-><init>(Lcom/d/c;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/d/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 582
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/d/c;->h()V

    .line 583
    invoke-direct {p0}, Lcom/d/c;->i()V

    .line 584
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/d/f;
    .locals 2

    .prologue
    .line 407
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/d/c;->a(Ljava/lang/String;J)Lcom/d/f;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/d/c;->close()V

    .line 618
    iget-object v0, p0, Lcom/d/c;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/d/j;->a(Ljava/io/File;)V

    .line 619
    return-void
.end method

.method public declared-synchronized c(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 538
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/d/c;->h()V

    .line 539
    invoke-direct {p0, p1}, Lcom/d/c;->e(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 541
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 562
    :goto_0
    monitor-exit p0

    return v0

    .line 550
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/d/c;->i:J

    invoke-static {v0}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/d/c;->i:J

    .line 551
    invoke-static {v0}, Lcom/d/h;->b(Lcom/d/h;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 545
    add-int/lit8 v1, v1, 0x1

    :cond_2
    iget v2, p0, Lcom/d/c;->h:I

    if-ge v1, v2, :cond_3

    .line 546
    invoke-virtual {v0, v1}, Lcom/d/h;->a(I)Ljava/io/File;

    move-result-object v2

    .line 547
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 554
    :cond_3
    :try_start_2
    iget v0, p0, Lcom/d/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/c;->l:I

    .line 555
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 556
    iget-object v0, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-direct {p0}, Lcom/d/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 559
    iget-object v0, p0, Lcom/d/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/d/c;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 562
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 602
    :goto_0
    monitor-exit p0

    return-void

    .line 594
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/d/c;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/h;

    .line 595
    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 596
    invoke-static {v0}, Lcom/d/h;->a(Lcom/d/h;)Lcom/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/f;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 599
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/d/c;->i()V

    .line 600
    iget-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/c;->j:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
