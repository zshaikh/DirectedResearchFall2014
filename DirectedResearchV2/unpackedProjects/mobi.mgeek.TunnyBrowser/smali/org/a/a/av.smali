.class public Lorg/a/a/av;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lorg/a/a/ar;
.implements Lorg/a/a/bw;


# instance fields
.field private a:Lorg/a/a/v;


# direct methods
.method public constructor <init>(Lorg/a/a/v;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/a/a/av;->a:Lorg/a/a/v;

    .line 16
    return-void
.end method


# virtual methods
.method public c()Lorg/a/a/bd;
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/av;->g()Lorg/a/a/bd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lorg/a/a/q;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 47
    :catch_1
    move-exception v0

    .line 49
    new-instance v1, Lorg/a/a/q;

    const-string v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lorg/a/a/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g()Lorg/a/a/bd;
    .locals 3

    .prologue
    .line 29
    :try_start_0
    new-instance v0, Lorg/a/a/au;

    iget-object v1, p0, Lorg/a/a/av;->a:Lorg/a/a/v;

    invoke-virtual {v1}, Lorg/a/a/v;->b()Lorg/a/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/au;-><init>(Lorg/a/a/e;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Lorg/a/a/g;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/a/a/g;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
