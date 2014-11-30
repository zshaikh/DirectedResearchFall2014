.class public abstract Lorg/a/a/l;
.super Lorg/a/a/bd;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lorg/a/a/bd;-><init>()V

    return-void
.end method

.method public static a([B)Lorg/a/a/l;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lorg/a/a/i;

    invoke-direct {v0, p0}, Lorg/a/a/i;-><init>([B)V

    .line 22
    :try_start_0
    invoke-virtual {v0}, Lorg/a/a/i;->c()Lorg/a/a/bd;

    move-result-object v0

    check-cast v0, Lorg/a/a/l;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 26
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot recognise object in stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a(Lorg/a/a/bh;)V
.end method

.method abstract a(Lorg/a/a/bd;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 32
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lorg/a/a/ar;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/a/a/ar;

    invoke-interface {p1}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/a/a/l;->a(Lorg/a/a/bd;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract hashCode()I
.end method
