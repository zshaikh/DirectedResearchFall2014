.class public Ldolphin/webkit/a/a/be;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Ldolphin/webkit/a/a/n;


# instance fields
.field private a:Ldolphin/webkit/a/a/bs;


# direct methods
.method constructor <init>(Ldolphin/webkit/a/a/bs;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Ldolphin/webkit/a/a/be;->a:Ldolphin/webkit/a/a/bs;

    .line 15
    return-void
.end method


# virtual methods
.method public c()Ldolphin/webkit/a/a/bb;
    .locals 4

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Ldolphin/webkit/a/a/be;->g()Ldolphin/webkit/a/a/bb;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ldolphin/webkit/a/a/p;

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

    invoke-direct {v1, v2, v0}, Ldolphin/webkit/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public e()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ldolphin/webkit/a/a/be;->a:Ldolphin/webkit/a/a/bs;

    return-object v0
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ldolphin/webkit/a/a/bd;

    iget-object v1, p0, Ldolphin/webkit/a/a/be;->a:Ldolphin/webkit/a/a/bs;

    invoke-virtual {v1}, Ldolphin/webkit/a/a/bs;->b()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ldolphin/webkit/a/a/bd;-><init>([B)V

    return-object v0
.end method
