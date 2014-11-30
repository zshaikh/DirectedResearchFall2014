.class public Ldolphin/webkit/a/c/a/d;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final a:Ldolphin/webkit/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ldolphin/webkit/a/c/a/e;

    invoke-direct {v0}, Ldolphin/webkit/a/c/a/e;-><init>()V

    sput-object v0, Ldolphin/webkit/a/c/a/d;->a:Ldolphin/webkit/a/c/a/c;

    return-void
.end method

.method public static a([B)[B
    .locals 2

    .prologue
    .line 19
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ldolphin/webkit/a/c/a/d;->a([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)[B
    .locals 4

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    :try_start_0
    sget-object v1, Ldolphin/webkit/a/c/a/d;->a:Ldolphin/webkit/a/c/a/c;

    invoke-interface {v1, p0, p1, p2, v0}, Ldolphin/webkit/a/c/a/c;->a([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encoding Hex string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
