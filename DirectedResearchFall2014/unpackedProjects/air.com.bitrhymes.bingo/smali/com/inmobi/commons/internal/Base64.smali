.class public Lcom/inmobi/commons/internal/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/internal/Base64$a;,
        Lcom/inmobi/commons/internal/Base64$b;,
        Lcom/inmobi/commons/internal/Base64$c;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8

.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/inmobi/commons/internal/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/inmobi/commons/internal/Base64;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/inmobi/commons/internal/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/inmobi/commons/internal/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    new-instance v0, Lcom/inmobi/commons/internal/Base64$b;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lcom/inmobi/commons/internal/Base64$b;-><init>(I[B)V

    .line 138
    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/inmobi/commons/internal/Base64$b;->a([BIIZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget v1, v0, Lcom/inmobi/commons/internal/Base64$b;->b:I

    iget-object v2, v0, Lcom/inmobi/commons/internal/Base64$b;->a:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 144
    iget-object v0, v0, Lcom/inmobi/commons/internal/Base64$b;->a:[B

    .line 151
    :goto_0
    return-object v0

    .line 149
    :cond_1
    iget v1, v0, Lcom/inmobi/commons/internal/Base64$b;->b:I

    new-array v1, v1, [B

    .line 150
    iget-object v2, v0, Lcom/inmobi/commons/internal/Base64$b;->a:[B

    iget v0, v0, Lcom/inmobi/commons/internal/Base64$b;->b:I

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 151
    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2

    .prologue
    .line 472
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/inmobi/commons/internal/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 488
    new-instance v0, Lcom/inmobi/commons/internal/Base64$c;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/inmobi/commons/internal/Base64$c;-><init>(I[B)V

    .line 491
    div-int/lit8 v1, p2, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 494
    iget-boolean v2, v0, Lcom/inmobi/commons/internal/Base64$c;->e:Z

    if-eqz v2, :cond_2

    .line 495
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 496
    add-int/lit8 v1, v1, 0x4

    .line 507
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Lcom/inmobi/commons/internal/Base64$c;->f:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 508
    sub-int v2, p2, v4

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v2, v2, 0x1

    .line 509
    iget-boolean v3, v0, Lcom/inmobi/commons/internal/Base64$c;->g:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_1
    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 512
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/inmobi/commons/internal/Base64$c;->a:[B

    .line 513
    invoke-virtual {v0, p0, p1, p2, v4}, Lcom/inmobi/commons/internal/Base64$c;->a([BIIZ)Z

    .line 515
    sget-boolean v2, Lcom/inmobi/commons/internal/Base64;->a:Z

    if-nez v2, :cond_4

    iget v2, v0, Lcom/inmobi/commons/internal/Base64$c;->b:I

    if-eq v2, v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 499
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 501
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 502
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v3, v4

    .line 509
    goto :goto_1

    .line 517
    :cond_4
    iget-object v0, v0, Lcom/inmobi/commons/internal/Base64$c;->a:[B

    return-object v0

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/inmobi/commons/internal/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 437
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 455
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/inmobi/commons/internal/Base64;->encode([BIII)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
