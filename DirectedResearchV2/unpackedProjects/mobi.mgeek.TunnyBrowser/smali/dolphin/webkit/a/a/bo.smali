.class public Ldolphin/webkit/a/a/bo;
.super Ldolphin/webkit/a/a/k;
.source "DERUTF8String.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 67
    :try_start_0
    invoke-static {p1}, Ldolphin/webkit/a/c/d;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldolphin/webkit/a/a/bo;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTF8 encoding invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Ldolphin/webkit/a/a/bf;)V
    .locals 2

    .prologue
    .line 113
    const/16 v0, 0xc

    iget-object v1, p0, Ldolphin/webkit/a/a/bo;->a:Ljava/lang/String;

    invoke-static {v1}, Ldolphin/webkit/a/c/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ldolphin/webkit/a/a/bf;->a(I[B)V

    .line 114
    return-void
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 100
    instance-of v0, p1, Ldolphin/webkit/a/a/bo;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/bo;

    .line 107
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ldolphin/webkit/a/a/bo;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Ldolphin/webkit/a/a/bo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Ldolphin/webkit/a/a/bo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Ldolphin/webkit/a/a/bo;->a:Ljava/lang/String;

    return-object v0
.end method
