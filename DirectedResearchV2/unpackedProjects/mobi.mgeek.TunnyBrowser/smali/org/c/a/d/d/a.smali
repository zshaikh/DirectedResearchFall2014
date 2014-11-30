.class Lorg/c/a/d/d/a;
.super Lorg/c/a/d/d/g;
.source "BadResource.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lorg/c/a/d/d/g;-><init>(Ljava/net/URL;Ljava/net/URLConnection;)V

    .line 40
    iput-object v0, p0, Lorg/c/a/d/d/a;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/c/a/d/d/a;->a:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/c/a/d/d/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/c/a/d/d/g;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; BadResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/d/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
