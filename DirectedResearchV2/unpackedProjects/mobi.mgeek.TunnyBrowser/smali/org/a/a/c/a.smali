.class public Lorg/a/a/c/a;
.super Lorg/a/a/d;
.source "CRLDistPoint.java"


# instance fields
.field a:Lorg/a/a/r;


# direct methods
.method public constructor <init>(Lorg/a/a/r;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    .line 40
    iput-object p1, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    .line 41
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/c/a;
    .locals 3

    .prologue
    .line 25
    instance-of v0, p0, Lorg/a/a/c/a;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 27
    :cond_0
    check-cast p0, Lorg/a/a/c/a;

    .line 31
    :goto_0
    return-object p0

    .line 29
    :cond_1
    instance-of v0, p0, Lorg/a/a/r;

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lorg/a/a/c/a;

    check-cast p0, Lorg/a/a/r;

    invoke-direct {v0, p0}, Lorg/a/a/c/a;-><init>(Lorg/a/a/r;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    return-object v0
.end method

.method public e()[Lorg/a/a/c/b;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    invoke-virtual {v0}, Lorg/a/a/r;->f()I

    move-result v0

    new-array v1, v0, [Lorg/a/a/c/b;

    .line 65
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    invoke-virtual {v2}, Lorg/a/a/r;->f()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 67
    iget-object v2, p0, Lorg/a/a/c/a;->a:Lorg/a/a/r;

    invoke-virtual {v2, v0}, Lorg/a/a/r;->a(I)Lorg/a/a/ar;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/c/b;->a(Ljava/lang/Object;)Lorg/a/a/c/b;

    move-result-object v2

    aput-object v2, v1, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v0, "CRLDistPoint:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p0}, Lorg/a/a/c/a;->e()[Lorg/a/a/c/b;

    move-result-object v3

    .line 92
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-eq v0, v4, :cond_0

    .line 94
    const-string v4, "    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    aget-object v4, v3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
