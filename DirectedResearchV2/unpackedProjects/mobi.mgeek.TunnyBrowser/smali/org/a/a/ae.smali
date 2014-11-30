.class public Lorg/a/a/ae;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lorg/a/a/o;


# instance fields
.field private a:Lorg/a/a/v;


# direct methods
.method constructor <init>(Lorg/a/a/v;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/a/a/ae;->a:Lorg/a/a/v;

    .line 17
    return-void
.end method


# virtual methods
.method public c()Lorg/a/a/bd;
    .locals 4

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/ae;->g()Lorg/a/a/bd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 38
    new-instance v1, Lorg/a/a/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lorg/a/a/am;

    iget-object v1, p0, Lorg/a/a/ae;->a:Lorg/a/a/v;

    invoke-direct {v0, v1}, Lorg/a/a/am;-><init>(Lorg/a/a/v;)V

    return-object v0
.end method

.method public g()Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/a/a/ac;

    invoke-virtual {p0}, Lorg/a/a/ae;->e()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/a/b/b/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/ac;-><init>([B)V

    return-object v0
.end method
