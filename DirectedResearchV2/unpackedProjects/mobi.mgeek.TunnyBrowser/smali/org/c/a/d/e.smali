.class public Lorg/c/a/d/e;
.super Ljava/lang/Object;
.source "IO.java"


# static fields
.field public static final a:[B

.field public static b:I

.field private static final c:Lorg/c/a/d/c/d;

.field private static d:Lorg/c/a/d/h;

.field private static e:Lorg/c/a/d/g;

.field private static f:Lorg/c/a/d/i;

.field private static g:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lorg/c/a/d/e;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/e;->c:Lorg/c/a/d/c/d;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/c/a/d/e;->a:[B

    .line 55
    const/high16 v0, 0x10000

    sput v0, Lorg/c/a/d/e;->b:I

    .line 474
    new-instance v0, Lorg/c/a/d/h;

    invoke-direct {v0, v1}, Lorg/c/a/d/h;-><init>(Lorg/c/a/d/f;)V

    sput-object v0, Lorg/c/a/d/e;->d:Lorg/c/a/d/h;

    .line 487
    new-instance v0, Lorg/c/a/d/g;

    invoke-direct {v0, v1}, Lorg/c/a/d/g;-><init>(Lorg/c/a/d/f;)V

    sput-object v0, Lorg/c/a/d/e;->e:Lorg/c/a/d/g;

    .line 526
    new-instance v0, Lorg/c/a/d/i;

    invoke-direct {v0, v1}, Lorg/c/a/d/i;-><init>(Lorg/c/a/d/f;)V

    sput-object v0, Lorg/c/a/d/e;->f:Lorg/c/a/d/i;

    .line 527
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Lorg/c/a/d/e;->f:Lorg/c/a/d/i;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v0, Lorg/c/a/d/e;->g:Ljava/io/PrintWriter;

    return-void

    .line 52
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    return-void
.end method

.method public static a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 456
    sget-object v0, Lorg/c/a/d/e;->e:Lorg/c/a/d/g;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 370
    if-eqz p0, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    sget-object v1, Lorg/c/a/d/e;->c:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 143
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/c/a/d/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 144
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 181
    sget v0, Lorg/c/a/d/e;->b:I

    new-array v1, v0, [B

    .line 182
    sget v0, Lorg/c/a/d/e;->b:I

    .line 184
    cmp-long v0, p2, v5

    if-ltz v0, :cond_4

    .line 186
    :goto_0
    cmp-long v0, p2, v5

    if-lez v0, :cond_0

    .line 188
    sget v0, Lorg/c/a/d/e;->b:I

    int-to-long v2, v0

    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    long-to-int v0, p2

    .line 189
    :goto_1
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 191
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 208
    :cond_0
    :goto_2
    return-void

    .line 188
    :cond_1
    sget v0, Lorg/c/a/d/e;->b:I

    goto :goto_1

    .line 194
    :cond_2
    int-to-long v2, v0

    sub-long/2addr p2, v2

    .line 195
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1, v1, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 202
    :cond_4
    sget v0, Lorg/c/a/d/e;->b:I

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 203
    if-gez v0, :cond_3

    goto :goto_2
.end method
