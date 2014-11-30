.class public Ldolphin/util/a/a;
.super Ldolphin/util/a/e;
.source "FilePart.java"


# static fields
.field private static final i:[B


# instance fields
.field private j:Ldolphin/util/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Ldolphin/util/a/a;->i:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldolphin/util/a/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    if-nez p3, :cond_0

    const-string p3, "application/octet-stream"

    :cond_0
    if-nez p4, :cond_1

    const-string p4, "ISO-8859-1"

    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p3, p4, v0}, Ldolphin/util/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p2, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iput-object p2, p0, Ldolphin/util/a/a;->j:Ldolphin/util/a/f;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Ldolphin/util/a/b;

    invoke-direct {v0, p2}, Ldolphin/util/a/b;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0, v1, v1}, Ldolphin/util/a/a;-><init>(Ljava/lang/String;Ldolphin/util/a/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method


# virtual methods
.method protected a()J
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Ldolphin/util/a/a;->j:Ldolphin/util/a/f;

    invoke-interface {v0}, Ldolphin/util/a/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0, p1}, Ldolphin/util/a/e;->a(Ljava/io/OutputStream;)V

    .line 187
    iget-object v0, p0, Ldolphin/util/a/a;->j:Ldolphin/util/a/f;

    invoke-interface {v0}, Ldolphin/util/a/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    sget-object v1, Ldolphin/util/a/a;->i:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 190
    sget-object v1, Ldolphin/util/a/a;->c:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 191
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 192
    sget-object v0, Ldolphin/util/a/a;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 194
    :cond_0
    return-void
.end method

.method protected b(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 204
    invoke-virtual {p0}, Ldolphin/util/a/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 212
    :cond_0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 213
    iget-object v1, p0, Ldolphin/util/a/a;->j:Ldolphin/util/a/f;

    invoke-interface {v1}, Ldolphin/util/a/f;->c()Ljava/io/InputStream;

    move-result-object v1

    .line 216
    :goto_1
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0
.end method
