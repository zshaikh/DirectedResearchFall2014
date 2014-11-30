.class public abstract Lc/a/a/i;
.super Ljava/lang/Object;
.source "DateTimeZone.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lc/a/a/i;

.field private static b:Lc/a/a/e/k;

.field private static c:Lc/a/a/e/j;

.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lc/a/a/i;

.field private static f:Lc/a/a/d/c;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lc/a/a/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    new-instance v0, Lc/a/a/e/i;

    const-string v1, "UTC"

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2, v3, v3}, Lc/a/a/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    .line 118
    invoke-static {v4}, Lc/a/a/i;->a(Lc/a/a/e/k;)V

    .line 119
    invoke-static {v4}, Lc/a/a/i;->a(Lc/a/a/e/j;)V

    .line 120
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    if-nez p1, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    iput-object p1, p0, Lc/a/a/i;->i:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public static a()Lc/a/a/i;
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lc/a/a/i;->e:Lc/a/a/i;

    .line 137
    if-nez v0, :cond_4

    .line 138
    const-class v1, Lc/a/a/i;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lc/a/a/i;->e:Lc/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-nez v0, :cond_3

    .line 141
    const/4 v0, 0x0

    .line 144
    :try_start_1
    const-string v2, "user.timezone"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 146
    invoke-static {v2}, Lc/a/a/i;->a(Ljava/lang/String;)Lc/a/a/i;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 151
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 152
    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 157
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 158
    :try_start_3
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    .line 160
    :cond_2
    sput-object v0, Lc/a/a/i;->e:Lc/a/a/i;

    .line 162
    :cond_3
    monitor-exit v1

    .line 164
    :cond_4
    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 154
    :catch_0
    move-exception v2

    goto :goto_1

    .line 148
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lc/a/a/i;
    .locals 5

    .prologue
    .line 207
    if-nez p0, :cond_1

    .line 208
    invoke-static {}, Lc/a/a/i;->a()Lc/a/a/i;

    move-result-object v0

    .line 223
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lc/a/a/i;->b:Lc/a/a/e/k;

    invoke-interface {v0, p0}, Lc/a/a/e/k;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    .line 214
    if-nez v0, :cond_0

    .line 217
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 218
    :cond_3
    invoke-static {p0}, Lc/a/a/i;->c(Ljava/lang/String;)I

    move-result v0

    .line 219
    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 220
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    goto :goto_0

    .line 222
    :cond_4
    invoke-static {v0}, Lc/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1, v0}, Lc/a/a/i;->a(Ljava/lang/String;I)Lc/a/a/i;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The datetime zone id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Lc/a/a/i;
    .locals 4

    .prologue
    .line 379
    const-class v1, Lc/a/a/i;

    monitor-enter v1

    if-nez p1, :cond_1

    .line 380
    :try_start_0
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 382
    :cond_1
    :try_start_1
    sget-object v0, Lc/a/a/i;->g:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/a/a/i;->g:Ljava/util/Map;

    .line 386
    :cond_2
    sget-object v0, Lc/a/a/i;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    .line 387
    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/i;

    .line 389
    if-nez v0, :cond_0

    .line 393
    :cond_3
    new-instance v0, Lc/a/a/e/i;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, p1}, Lc/a/a/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 394
    sget-object v2, Lc/a/a/i;->g:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/TimeZone;)Lc/a/a/i;
    .locals 5

    .prologue
    .line 332
    if-nez p0, :cond_1

    .line 333
    invoke-static {}, Lc/a/a/i;->a()Lc/a/a/i;

    move-result-object v0

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 335
    :cond_1
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v0, "UTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    goto :goto_0

    .line 341
    :cond_2
    const/4 v0, 0x0

    .line 342
    invoke-static {v1}, Lc/a/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    if-eqz v2, :cond_3

    .line 344
    sget-object v0, Lc/a/a/i;->b:Lc/a/a/e/k;

    invoke-interface {v0, v2}, Lc/a/a/e/k;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    .line 346
    :cond_3
    if-nez v0, :cond_4

    .line 347
    sget-object v0, Lc/a/a/i;->b:Lc/a/a/e/k;

    invoke-interface {v0, v1}, Lc/a/a/e/k;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v0

    .line 349
    :cond_4
    if-nez v0, :cond_0

    .line 354
    if-nez v2, :cond_7

    .line 355
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string v2, "GMT+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "GMT-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 357
    :cond_5
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Lc/a/a/i;->c(Ljava/lang/String;)I

    move-result v0

    .line 359
    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 360
    sget-object v0, Lc/a/a/i;->a:Lc/a/a/i;

    goto :goto_0

    .line 362
    :cond_6
    invoke-static {v0}, Lc/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    invoke-static {v1, v0}, Lc/a/a/i;->a(Ljava/lang/String;I)Lc/a/a/i;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The datetime zone id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 6

    .prologue
    const v2, 0x36ee80

    const v5, 0xea60

    const/16 v4, 0x3a

    const/4 v3, 0x2

    .line 658
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 659
    if-ltz p0, :cond_0

    .line 660
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 666
    :goto_0
    div-int v1, p0, v2

    .line 667
    invoke-static {v0, v1, v3}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    .line 668
    mul-int/2addr v1, v2

    sub-int v1, p0, v1

    .line 670
    div-int v2, v1, v5

    .line 671
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 672
    invoke-static {v0, v2, v3}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    .line 673
    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    .line 674
    if-nez v1, :cond_1

    .line 675
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 688
    :goto_1
    return-object v0

    .line 662
    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 663
    neg-int p0, p0

    goto :goto_0

    .line 678
    :cond_1
    div-int/lit16 v2, v1, 0x3e8

    .line 679
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 680
    invoke-static {v0, v2, v3}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    .line 681
    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    .line 682
    if-nez v1, :cond_2

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 686
    :cond_2
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 687
    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lc/a/a/d/x;->a(Ljava/lang/StringBuffer;II)V

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Lc/a/a/e/j;)V
    .locals 0

    .prologue
    .line 541
    if-nez p0, :cond_0

    .line 542
    invoke-static {}, Lc/a/a/i;->f()Lc/a/a/e/j;

    move-result-object p0

    .line 544
    :cond_0
    sput-object p0, Lc/a/a/i;->c:Lc/a/a/e/j;

    .line 545
    return-void
.end method

.method private static a(Lc/a/a/e/k;)V
    .locals 3

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    invoke-static {}, Lc/a/a/i;->e()Lc/a/a/e/k;

    move-result-object p0

    .line 448
    :cond_0
    invoke-interface {p0}, Lc/a/a/e/k;->a()Ljava/util/Set;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 450
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t have any available ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_2
    const-string v1, "UTC"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t support UTC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_3
    sget-object v1, Lc/a/a/i;->a:Lc/a/a/i;

    const-string v2, "UTC"

    invoke-interface {p0, v2}, Lc/a/a/e/k;->a(Ljava/lang/String;)Lc/a/a/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTC zone provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_4
    sput-object p0, Lc/a/a/i;->b:Lc/a/a/e/k;

    .line 460
    sput-object v0, Lc/a/a/i;->d:Ljava/util/Set;

    .line 461
    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 585
    const-class v1, Lc/a/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc/a/a/i;->h:Ljava/util/Map;

    .line 586
    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 589
    const-string v2, "GMT"

    const-string v3, "UTC"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const-string v2, "WET"

    const-string v3, "WET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string v2, "CET"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v2, "MET"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v2, "ECT"

    const-string v3, "CET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    const-string v2, "EET"

    const-string v3, "EET"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    const-string v2, "MIT"

    const-string v3, "Pacific/Apia"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v2, "HST"

    const-string v3, "Pacific/Honolulu"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v2, "AST"

    const-string v3, "America/Anchorage"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    const-string v2, "PST"

    const-string v3, "America/Los_Angeles"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v2, "MST"

    const-string v3, "America/Denver"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v2, "PNT"

    const-string v3, "America/Phoenix"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v2, "CST"

    const-string v3, "America/Chicago"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v2, "EST"

    const-string v3, "America/New_York"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v2, "IET"

    const-string v3, "America/Indiana/Indianapolis"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v2, "PRT"

    const-string v3, "America/Puerto_Rico"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v2, "CNT"

    const-string v3, "America/St_Johns"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v2, "BET"

    const-string v3, "America/Sao_Paulo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v2, "ART"

    const-string v3, "Africa/Cairo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v2, "CAT"

    const-string v3, "Africa/Harare"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v2, "EAT"

    const-string v3, "Africa/Addis_Ababa"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v2, "NET"

    const-string v3, "Asia/Yerevan"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "PLT"

    const-string v3, "Asia/Karachi"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v2, "IST"

    const-string v3, "Asia/Kolkata"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v2, "BST"

    const-string v3, "Asia/Dhaka"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v2, "VST"

    const-string v3, "Asia/Ho_Chi_Minh"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v2, "CTT"

    const-string v3, "Asia/Shanghai"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v2, "JST"

    const-string v3, "Asia/Tokyo"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v2, "ACT"

    const-string v3, "Australia/Darwin"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v2, "AET"

    const-string v3, "Australia/Sydney"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "SST"

    const-string v3, "Pacific/Guadalcanal"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "NST"

    const-string v3, "Pacific/Auckland"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sput-object v0, Lc/a/a/i;->h:Ljava/util/Map;

    .line 624
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    sget-object v0, Lc/a/a/i;->d:Ljava/util/Set;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 630
    new-instance v0, Lc/a/a/j;

    invoke-direct {v0}, Lc/a/a/j;-><init>()V

    .line 645
    invoke-static {}, Lc/a/a/i;->g()Lc/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/a/a/d/c;->a(Lc/a/a/a;)Lc/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/d/c;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method private static e()Lc/a/a/e/k;
    .locals 3

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 476
    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 477
    if-eqz v0, :cond_2

    .line 479
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/e/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v1, v0

    .line 488
    :goto_1
    if-nez v1, :cond_1

    .line 490
    :try_start_2
    new-instance v0, Lb/a/a/a/d;

    invoke-direct {v0}, Lb/a/a/a/d;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 496
    :goto_2
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lc/a/a/e/l;

    invoke-direct {v0}, Lc/a/a/e/l;-><init>()V

    .line 500
    :cond_0
    return-object v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    .line 484
    :catch_1
    move-exception v0

    goto :goto_1

    .line 491
    :catch_2
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static f()Lc/a/a/e/j;
    .locals 3

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 558
    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.NameProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 559
    if-eqz v0, :cond_1

    .line 561
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/e/j;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 570
    :goto_0
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lc/a/a/e/h;

    invoke-direct {v0}, Lc/a/a/e/h;-><init>()V

    .line 574
    :cond_0
    return-object v0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 566
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized g()Lc/a/a/d/c;
    .locals 6

    .prologue
    .line 697
    const-class v1, Lc/a/a/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc/a/a/i;->f:Lc/a/a/d/c;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Lc/a/a/d/d;

    invoke-direct {v0}, Lc/a/a/d/d;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v0, v2, v3, v4, v5}, Lc/a/a/d/d;->a(Ljava/lang/String;ZII)Lc/a/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/d/d;->a()Lc/a/a/d/c;

    move-result-object v0

    sput-object v0, Lc/a/a/i;->f:Lc/a/a/d/c;

    .line 702
    :cond_0
    sget-object v0, Lc/a/a/i;->f:Lc/a/a/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(JZ)J
    .locals 12

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x0

    .line 1001
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v5

    .line 1003
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lc/a/a/i;->b(J)I

    move-result v4

    .line 1005
    if-eq v5, v4, :cond_4

    .line 1009
    if-nez p3, :cond_0

    if-gez v5, :cond_4

    .line 1011
    :cond_0
    int-to-long v0, v5

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Lc/a/a/i;->e(J)J

    move-result-wide v0

    .line 1012
    int-to-long v6, v5

    sub-long v6, p1, v6

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    move-wide v0, v2

    .line 1015
    :cond_1
    int-to-long v6, v4

    sub-long v6, p1, v6

    invoke-virtual {p0, v6, v7}, Lc/a/a/i;->e(J)J

    move-result-wide v6

    .line 1016
    int-to-long v8, v4

    sub-long v8, p1, v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_5

    .line 1019
    :goto_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 1021
    if-eqz p3, :cond_2

    .line 1023
    new-instance v0, Lc/a/a/p;

    invoke-virtual {p0}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lc/a/a/p;-><init>(JLjava/lang/String;)V

    throw v0

    :cond_2
    move v0, v5

    .line 1034
    :goto_1
    int-to-long v1, v0

    sub-long v1, p1, v1

    .line 1036
    xor-long v3, p1, v1

    cmp-long v3, v3, v10

    if-gez v3, :cond_3

    int-to-long v3, v0

    xor-long/2addr v3, p1

    cmp-long v0, v3, v10

    if-gez v0, :cond_3

    .line 1037
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_3
    return-wide v1

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move-wide v2, v6

    goto :goto_0
.end method

.method public a(JZJ)J
    .locals 4

    .prologue
    .line 978
    invoke-virtual {p0, p4, p5}, Lc/a/a/i;->b(J)I

    move-result v2

    .line 979
    int-to-long v0, v2

    sub-long v0, p1, v0

    .line 980
    invoke-virtual {p0, v0, v1}, Lc/a/a/i;->b(J)I

    move-result v3

    .line 981
    if-ne v3, v2, :cond_0

    .line 984
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/i;->a(JZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public abstract a(J)Ljava/lang/String;
.end method

.method public a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 771
    if-nez p3, :cond_0

    .line 772
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 774
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 775
    if-nez v0, :cond_2

    .line 776
    iget-object v0, p0, Lc/a/a/i;->i:Ljava/lang/String;

    .line 782
    :cond_1
    :goto_0
    return-object v0

    .line 778
    :cond_2
    sget-object v1, Lc/a/a/i;->c:Lc/a/a/e/j;

    iget-object v2, p0, Lc/a/a/i;->i:Ljava/lang/String;

    invoke-interface {v1, p3, v2, v0}, Lc/a/a/e/j;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    if-nez v0, :cond_1

    .line 782
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v0

    invoke-static {v0}, Lc/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract b(J)I
.end method

.method public b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    if-nez p3, :cond_0

    .line 812
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 814
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 815
    if-nez v0, :cond_2

    .line 816
    iget-object v0, p0, Lc/a/a/i;->i:Ljava/lang/String;

    .line 822
    :cond_1
    :goto_0
    return-object v0

    .line 818
    :cond_2
    sget-object v1, Lc/a/a/i;->c:Lc/a/a/e/j;

    iget-object v2, p0, Lc/a/a/i;->i:Ljava/lang/String;

    invoke-interface {v1, p3, v2, v0}, Lc/a/a/e/j;->b(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    if-nez v0, :cond_1

    .line 822
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v0

    invoke-static {v0}, Lc/a/a/i;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(J)I
    .locals 7

    .prologue
    .line 909
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v0

    .line 911
    int-to-long v1, v0

    sub-long v3, p1, v1

    .line 912
    invoke-virtual {p0, v3, v4}, Lc/a/a/i;->b(J)I

    move-result v2

    .line 914
    if-eq v0, v2, :cond_0

    .line 917
    sub-int v1, v0, v2

    if-gez v1, :cond_1

    .line 921
    invoke-virtual {p0, v3, v4}, Lc/a/a/i;->e(J)J

    move-result-wide v3

    .line 922
    int-to-long v5, v2

    sub-long v5, p1, v5

    invoke-virtual {p0, v5, v6}, Lc/a/a/i;->e(J)J

    move-result-wide v5

    .line 923
    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 937
    :goto_0
    return v0

    .line 927
    :cond_0
    if-ltz v0, :cond_1

    .line 928
    invoke-virtual {p0, v3, v4}, Lc/a/a/i;->f(J)J

    move-result-wide v5

    .line 929
    cmp-long v1, v5, v3

    if-gez v1, :cond_1

    .line 930
    invoke-virtual {p0, v5, v6}, Lc/a/a/i;->b(J)I

    move-result v1

    .line 931
    sub-int v0, v1, v0

    .line 932
    sub-long/2addr v3, v5

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    move v0, v1

    .line 933
    goto :goto_0

    :cond_1
    move v0, v2

    .line 937
    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lc/a/a/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(J)J
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 951
    invoke-virtual {p0, p1, p2}, Lc/a/a/i;->b(J)I

    move-result v0

    .line 952
    int-to-long v1, v0

    add-long/2addr v1, p1

    .line 954
    xor-long v3, p1, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    int-to-long v3, v0

    xor-long/2addr v3, p1

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 955
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_0
    return-wide v1
.end method

.method public abstract d()Z
.end method

.method public abstract e(J)J
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f(J)J
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1275
    invoke-virtual {p0}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1283
    invoke-virtual {p0}, Lc/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
