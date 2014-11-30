.class public Lorg/a/a/c/e;
.super Lorg/a/a/d;
.source "GeneralNames.java"


# instance fields
.field private final a:[Lorg/a/a/c/d;


# direct methods
.method public constructor <init>(Lorg/a/a/r;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/a/a/r;->f()I

    move-result v0

    new-array v0, v0, [Lorg/a/a/c/d;

    iput-object v0, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    .line 53
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/a/a/r;->f()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 55
    iget-object v1, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    invoke-virtual {p1, v0}, Lorg/a/a/r;->a(I)Lorg/a/a/ar;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/c/d;->a(Ljava/lang/Object;)Lorg/a/a/c/d;

    move-result-object v2

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/c/e;
    .locals 3

    .prologue
    .line 17
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/c/e;

    if-eqz v0, :cond_1

    .line 19
    :cond_0
    check-cast p0, Lorg/a/a/c/e;

    .line 24
    :goto_0
    return-object p0

    .line 22
    :cond_1
    instance-of v0, p0, Lorg/a/a/r;

    if-eqz v0, :cond_2

    .line 24
    new-instance v0, Lorg/a/a/c/e;

    check-cast p0, Lorg/a/a/r;

    invoke-direct {v0, p0}, Lorg/a/a/c/e;-><init>(Lorg/a/a/r;)V

    move-object p0, v0

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/c/e;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/a/a/r;->a(Lorg/a/a/x;Z)Lorg/a/a/r;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/c/e;->a(Ljava/lang/Object;)Lorg/a/a/c/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lorg/a/a/bj;

    iget-object v1, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    invoke-direct {v0, v1}, Lorg/a/a/bj;-><init>([Lorg/a/a/d;)V

    return-object v0
.end method

.method public e()[Lorg/a/a/c/d;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    array-length v0, v0

    new-array v0, v0, [Lorg/a/a/c/d;

    .line 63
    iget-object v1, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    iget-object v2, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    const-string v0, "GeneralNames:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    array-length v3, v3

    if-eq v0, v3, :cond_0

    .line 89
    const-string v3, "    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object v3, p0, Lorg/a/a/c/e;->a:[Lorg/a/a/c/d;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
