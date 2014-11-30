.class public abstract Ldolphin/webkit/a/a/m;
.super Ldolphin/webkit/a/a/k;
.source "ASN1OctetString.java"

# interfaces
.implements Ldolphin/webkit/a/a/n;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 71
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "string cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Ldolphin/webkit/a/a/m;->a:[B

    .line 76
    return-void
.end method


# virtual methods
.method abstract a(Ldolphin/webkit/a/a/bf;)V
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 2

    .prologue
    .line 114
    instance-of v0, p1, Ldolphin/webkit/a/a/m;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 119
    :cond_0
    check-cast p1, Ldolphin/webkit/a/a/m;

    .line 121
    iget-object v0, p0, Ldolphin/webkit/a/a/m;->a:[B

    iget-object v1, p1, Ldolphin/webkit/a/a/m;->a:[B

    invoke-static {v0, v1}, Ldolphin/webkit/a/c/a;->a([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ldolphin/webkit/a/a/m;->a:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ldolphin/webkit/a/a/m;->a:[B

    return-object v0
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Ldolphin/webkit/a/a/m;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Ldolphin/webkit/a/a/m;->f()[B

    move-result-object v0

    invoke-static {v0}, Ldolphin/webkit/a/c/a;->a([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Ldolphin/webkit/a/a/m;->a:[B

    invoke-static {v2}, Ldolphin/webkit/a/c/a/d;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
