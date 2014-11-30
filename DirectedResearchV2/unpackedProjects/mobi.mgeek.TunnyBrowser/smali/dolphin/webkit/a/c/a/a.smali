.class public Ldolphin/webkit/a/c/a/a;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final a:Ldolphin/webkit/a/c/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ldolphin/webkit/a/c/a/b;

    invoke-direct {v0}, Ldolphin/webkit/a/c/a/b;-><init>()V

    sput-object v0, Ldolphin/webkit/a/c/a/a;->a:Ldolphin/webkit/a/c/a/c;

    return-void
.end method

.method public static a([B)[B
    .locals 4

    .prologue
    .line 19
    array-length v0, p0

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 20
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 24
    :try_start_0
    sget-object v0, Ldolphin/webkit/a/c/a/a;->a:Ldolphin/webkit/a/c/a/c;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-interface {v0, p0, v2, v3, v1}, Ldolphin/webkit/a/c/a/c;->a([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encoding base64 string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
