.class public final Ldolphin/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static a:J

.field static final synthetic b:Z

.field private static c:J

.field private static d:J

.field private static e:Z

.field private static f:I

.field private static g:I

.field private static h:Ldolphin/webkit/kf;

.field private static i:Ljava/io/File;

.field private static j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 54
    const-class v0, Ldolphin/webkit/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    .line 68
    const-wide/32 v2, 0x600000

    sput-wide v2, Ldolphin/webkit/CacheManager;->c:J

    .line 69
    const-wide/32 v2, 0x200000

    sput-wide v2, Ldolphin/webkit/CacheManager;->d:J

    .line 72
    sget-wide v2, Ldolphin/webkit/CacheManager;->c:J

    sget-wide v4, Ldolphin/webkit/CacheManager;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sput-wide v2, Ldolphin/webkit/CacheManager;->a:J

    .line 83
    sput v1, Ldolphin/webkit/CacheManager;->g:I

    .line 91
    sput-boolean v1, Ldolphin/webkit/CacheManager;->j:Z

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static a(ILdolphin/net/http/m;Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;
    .locals 12

    .prologue
    .line 826
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 833
    :cond_0
    invoke-virtual {p1}, Ldolphin/net/http/m;->b()J

    move-result-wide v0

    sget-wide v2, Ldolphin/webkit/CacheManager;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 835
    const/4 v0, 0x0

    .line 987
    :goto_0
    return-object v0

    .line 845
    :cond_1
    const-string v0, "text/cache-manifest"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    const/4 v0, 0x0

    goto :goto_0

    .line 851
    :cond_2
    new-instance v2, Ldolphin/webkit/CacheManager$CacheResult;

    invoke-direct {v2}, Ldolphin/webkit/CacheManager$CacheResult;-><init>()V

    .line 852
    iput p0, v2, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 853
    invoke-virtual {p1}, Ldolphin/net/http/m;->b()J

    move-result-wide v0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    .line 854
    invoke-virtual {p1}, Ldolphin/net/http/m;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 855
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    .line 856
    invoke-virtual {p1}, Ldolphin/net/http/m;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 857
    iget-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 859
    :try_start_0
    iget-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ldolphin/net/http/m;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 873
    invoke-virtual {p1}, Ldolphin/net/http/m;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 874
    invoke-virtual {p1}, Ldolphin/net/http/m;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->allowOrigin:Ljava/lang/String;

    .line 877
    invoke-virtual {p1}, Ldolphin/net/http/m;->m()Ljava/lang/String;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 879
    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 882
    :cond_4
    invoke-virtual {p1}, Ldolphin/net/http/m;->n()Ljava/lang/String;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 884
    iput-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 887
    :cond_5
    invoke-virtual {p1}, Ldolphin/net/http/m;->l()Ljava/lang/String;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_d

    .line 889
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ,;]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 890
    const/4 v1, 0x0

    .line 891
    const/4 v0, 0x0

    :goto_2
    array-length v3, v4

    if-ge v0, v3, :cond_d

    .line 892
    const-string v3, "no-store"

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 893
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 862
    const-string v0, "-1"

    iget-object v1, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "0"

    iget-object v1, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 865
    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_1

    .line 867
    :cond_7
    const-string v0, "cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal expires: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 899
    :cond_8
    const-string v3, "no-cache"

    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 900
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    .line 901
    const/4 v1, 0x1

    .line 891
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 906
    :cond_a
    aget-object v3, v4, v0

    const-string v5, "max-age"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-nez v1, :cond_9

    .line 907
    aget-object v3, v4, v0

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 908
    if-gez v3, :cond_b

    .line 909
    aget-object v3, v4, v0

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 911
    :cond_b
    if-lez v3, :cond_9

    .line 912
    aget-object v5, v4, v0

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 914
    :try_start_1
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 915
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_9

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    iput-wide v6, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 918
    :catch_1
    move-exception v6

    .line 919
    const-string v6, "1d"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    add-long/2addr v5, v7

    iput-wide v5, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3

    .line 923
    :cond_c
    const-string v5, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception in parseHeaders for max-age:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-wide/16 v5, 0x0

    iput-wide v5, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3

    .line 935
    :cond_d
    const-string v0, "no-cache"

    invoke-virtual {p1}, Ldolphin/net/http/m;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 936
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    .line 941
    :cond_e
    iget-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_f

    .line 942
    iget v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 v1, 0x12d

    if-ne v0, v1, :cond_10

    .line 945
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    :cond_f
    :goto_4
    move-object v0, v2

    .line 987
    goto/16 :goto_0

    .line 946
    :cond_10
    iget v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_11

    iget v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 v1, 0x133

    if-ne v0, v1, :cond_12

    .line 948
    :cond_11
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_4

    .line 949
    :cond_12
    iget-object v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 956
    const-string v0, "text/html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    add-long/2addr v0, v3

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_4

    .line 961
    :cond_13
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_4

    .line 970
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    add-long/2addr v0, v3

    .line 972
    :try_start_2
    iget-object v3, v2, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v0

    .line 976
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 977
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_15

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v5, 0x5

    div-long/2addr v3, v5

    add-long/2addr v0, v3

    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_4

    .line 973
    :catch_2
    move-exception v3

    .line 974
    const-string v3, "cache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal lastModified: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 982
    :cond_15
    iput-wide v0, v2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_4
.end method

.method static a(Ljava/lang/String;ILdolphin/net/http/m;Ljava/lang/String;JZ)Ldolphin/webkit/CacheManager$CacheResult;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 506
    sget-boolean v1, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 509
    :cond_0
    if-nez p6, :cond_2

    sget-boolean v1, Ldolphin/webkit/CacheManager;->e:Z

    if-eqz v1, :cond_2

    .line 563
    :cond_1
    :goto_0
    return-object v0

    .line 514
    :cond_2
    invoke-static {p0, p4, p5}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 518
    const/16 v1, 0x12f

    if-ne p1, v1, :cond_3

    .line 521
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1, v2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 526
    :cond_3
    invoke-static {p1}, Ldolphin/webkit/CacheManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ldolphin/net/http/m;->o()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 529
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1, v2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_4
    invoke-static {p1, p2, p3}, Ldolphin/webkit/CacheManager;->a(ILdolphin/net/http/m;Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 534
    if-nez v1, :cond_5

    .line 538
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0, v2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    .line 563
    goto :goto_0

    .line 540
    :cond_5
    invoke-static {v2, v1}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;Ldolphin/webkit/CacheManager$CacheResult;)V

    .line 542
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_2
    iput-object p3, v1, Ldolphin/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_1

    .line 543
    :catch_0
    move-exception v2

    .line 546
    invoke-static {}, Ldolphin/webkit/CacheManager;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 549
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;JLjava/util/Map;)Ldolphin/webkit/CacheManager$CacheResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ldolphin/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 389
    sget-boolean v1, Ldolphin/webkit/CacheManager;->e:Z

    if-eqz v1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-object v0

    .line 394
    :cond_1
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-static {p0}, Ldolphin/webkit/CacheManager;->nativeGetCacheResult(Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 401
    new-instance v2, Ljava/io/File;

    sget-object v3, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    iget-object v4, v1, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 412
    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    const-string v2, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCacheFile(): Failed to open file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 415
    :cond_2
    invoke-static {p0, p1, p2}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 418
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1, v2}, Ldolphin/webkit/kf;->c(Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_0

    .line 424
    iget-wide v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_3

    .line 425
    iget v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v3}, Ldolphin/webkit/CacheManager;->a(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 428
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1, v2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v4, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    iget-object v5, v1, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v1, Ldolphin/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :cond_4
    iget-wide v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_8

    iget-wide v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8

    .line 447
    const/4 v2, 0x1

    .line 458
    :goto_1
    if-eqz p3, :cond_7

    if-eqz v2, :cond_7

    .line 459
    iget-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 465
    :cond_5
    iget-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 466
    const-string v0, "if-none-match"

    iget-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_6
    iget-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 469
    const-string v0, "if-modified-since"

    iget-object v2, v1, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v0, v1

    .line 474
    goto/16 :goto_0

    .line 437
    :catch_1
    move-exception v1

    .line 440
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1, v2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_8
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 741
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 742
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(ILjava/lang/StringBuffer;)V
    .locals 2

    .prologue
    .line 796
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 798
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 822
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 823
    return-void

    .line 801
    :pswitch_0
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 804
    :pswitch_1
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 807
    :pswitch_2
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 810
    :pswitch_3
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 813
    :pswitch_4
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 816
    :pswitch_5
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 819
    :pswitch_6
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 799
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 204
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "webviewCacheChromiumStaging"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    .line 208
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/kf;->a(Landroid/content/Context;)Ldolphin/webkit/kf;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    .line 216
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    .line 217
    invoke-static {}, Ldolphin/webkit/CacheManager;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Ldolphin/webkit/CacheManager;->j:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Ldolphin/webkit/CacheManager;->e()Z

    .line 219
    const/4 v0, 0x0

    sput-boolean v0, Ldolphin/webkit/CacheManager;->j:Z

    goto :goto_0
.end method

.method static a(Ljava/lang/String;JLdolphin/webkit/CacheManager$CacheResult;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 578
    const-string v0, "cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CacheManager::saveCacheFile]url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    iget-object v0, p3, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p3, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 605
    :cond_2
    iget v0, p3, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v0}, Ldolphin/webkit/CacheManager;->a(I)Z

    move-result v0

    .line 606
    if-eqz v0, :cond_3

    .line 608
    iput-wide v4, p3, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    .line 609
    const-string v1, ""

    iput-object v1, p3, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 611
    :cond_3
    if-nez v0, :cond_4

    iget-wide v1, p3, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p3, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    .line 613
    const-string v1, "cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delete failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_5
    if-nez v0, :cond_6

    iget-wide v0, p3, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 623
    :cond_6
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-static {p0, p1, p2}, Ldolphin/webkit/CacheManager;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ldolphin/webkit/kf;->a(Ljava/lang/String;Ldolphin/webkit/CacheManager$CacheResult;)V

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ldolphin/webkit/CacheManager$CacheResult;)V
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 747
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 757
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 758
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 759
    invoke-static {v3, v0}, Ldolphin/webkit/CacheManager;->a(ILjava/lang/StringBuffer;)V

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 761
    new-instance v1, Ljava/io/File;

    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x1

    .line 770
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 771
    if-eqz v0, :cond_4

    .line 772
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0, p0}, Ldolphin/webkit/kf;->c(Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 773
    if-eqz v0, :cond_3

    iget-wide v4, v0, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 774
    iget-object v3, v0, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 775
    iget-object v2, v0, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 790
    :cond_1
    :goto_1
    iput-object v2, p1, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 791
    iput-object v1, p1, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 793
    return-void

    .line 777
    :cond_2
    iget-object v2, v0, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 778
    new-instance v1, Ljava/io/File;

    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_3
    const/4 v0, 0x0

    .line 784
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 785
    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Ldolphin/webkit/CacheManager;->a(ILjava/lang/StringBuffer;)V

    .line 786
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    new-instance v1, Ljava/io/File;

    sget-object v4, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-direct {v1, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 304
    sget-boolean v1, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 306
    :cond_0
    sget v1, Ldolphin/webkit/CacheManager;->f:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ldolphin/webkit/CacheManager;->f:I

    if-ne v1, v0, :cond_1

    .line 307
    sget-object v1, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v1}, Ldolphin/webkit/kf;->a()Z

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 730
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x133

    if-ne p0, v0, :cond_1

    .line 732
    :cond_0
    const/4 v0, 0x1

    .line 734
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ldolphin/webkit/CacheManager$CacheResult;)Z
    .locals 1

    .prologue
    .line 629
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 632
    :cond_0
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    iget-object v0, p0, Ldolphin/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_0
    return v0

    .line 633
    :catch_0
    move-exception v0

    .line 634
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 317
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 319
    :cond_0
    sget v0, Ldolphin/webkit/CacheManager;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ldolphin/webkit/CacheManager;->f:I

    if-nez v0, :cond_1

    .line 320
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->b()Z

    .line 321
    const/4 v0, 0x1

    .line 323
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c()Z
    .locals 1

    .prologue
    .line 329
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 332
    :cond_0
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->a()Z

    move-result v0

    return v0
.end method

.method static d()Z
    .locals 3

    .prologue
    .line 338
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 341
    :cond_0
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->b()Z

    move-result v0

    .line 342
    sget v1, Ldolphin/webkit/CacheManager;->g:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ldolphin/webkit/CacheManager;->g:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 343
    const/4 v1, 0x0

    sput v1, Ldolphin/webkit/CacheManager;->g:I

    .line 344
    invoke-static {}, Ldolphin/webkit/CacheManager;->f()V

    .line 346
    :cond_1
    return v0
.end method

.method static e()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 648
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    if-nez v0, :cond_1

    .line 651
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 654
    :cond_0
    sput-boolean v2, Ldolphin/webkit/CacheManager;->j:Z

    .line 682
    :goto_0
    return v2

    .line 658
    :cond_1
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_2

    .line 659
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ldolphin/webkit/kv;->sendEmptyMessage(I)Z

    .line 662
    :cond_2
    new-instance v0, Ldolphin/webkit/ac;

    invoke-direct {v0}, Ldolphin/webkit/ac;-><init>()V

    .line 681
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static f()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 686
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 689
    :cond_0
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->d()J

    move-result-wide v2

    sget-wide v4, Ldolphin/webkit/CacheManager;->c:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 690
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    sget-wide v2, Ldolphin/webkit/CacheManager;->d:J

    invoke-virtual {v0, v2, v3}, Ldolphin/webkit/kf;->a(J)Ljava/util/List;

    move-result-object v3

    .line 691
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 692
    :goto_0
    if-ge v2, v4, :cond_2

    .line 693
    new-instance v5, Ljava/io/File;

    sget-object v6, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 694
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    const-string v0, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " delete failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 699
    :cond_2
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->e()Ljava/util/List;

    move-result-object v0

    .line 700
    if-nez v0, :cond_4

    .line 719
    :cond_3
    return-void

    .line 701
    :cond_4
    sget-object v2, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    new-instance v3, Ldolphin/webkit/ad;

    invoke-direct {v3, v0}, Ldolphin/webkit/ad;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 710
    if-eqz v2, :cond_3

    .line 711
    array-length v3, v2

    move v0, v1

    .line 712
    :goto_1
    if-ge v0, v3, :cond_3

    .line 713
    new-instance v1, Ljava/io/File;

    sget-object v4, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    aget-object v5, v2, v0

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 714
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_5

    .line 715
    const-string v4, "cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " delete failed."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static g()V
    .locals 1

    .prologue
    .line 722
    sget-boolean v0, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 726
    :cond_0
    sget-object v0, Ldolphin/webkit/CacheManager;->h:Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ldolphin/webkit/kf;->c()V

    .line 727
    return-void
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 1
    .annotation build Ldolphin/webkit/annotation/CalledByJNI;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    return-object v0
.end method

.method static synthetic h()Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    return-object v0
.end method

.method private static i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 229
    sget-boolean v1, Ldolphin/webkit/CacheManager;->b:Z

    if-nez v1, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 231
    :cond_0
    sget-object v1, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    sget-object v1, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2

    .line 233
    const-string v1, "cache"

    const-string v2, "Unable to create webviewCache directory"

    invoke-static {v1, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    :goto_0
    return v0

    .line 236
    :cond_2
    sget-object v0, Ldolphin/webkit/CacheManager;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f8

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 245
    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ldolphin/webkit/kv;->sendEmptyMessage(I)Z

    .line 247
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static native nativeGetCacheResult(Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;
.end method
