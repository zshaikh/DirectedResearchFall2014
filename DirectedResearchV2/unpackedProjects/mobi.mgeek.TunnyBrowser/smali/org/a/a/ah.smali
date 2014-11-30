.class public Lorg/a/a/ah;
.super Ljava/lang/Object;
.source "BERSequenceParser.java"

# interfaces
.implements Lorg/a/a/s;


# instance fields
.field private a:Lorg/a/a/v;


# direct methods
.method constructor <init>(Lorg/a/a/v;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/a/a/ah;->a:Lorg/a/a/v;

    .line 13
    return-void
.end method


# virtual methods
.method public c()Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Lorg/a/a/ah;->g()Lorg/a/a/bd;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public g()Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lorg/a/a/ag;

    iget-object v1, p0, Lorg/a/a/ah;->a:Lorg/a/a/v;

    invoke-virtual {v1}, Lorg/a/a/v;->b()Lorg/a/a/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/a/a/ag;-><init>(Lorg/a/a/e;)V

    return-object v0
.end method
