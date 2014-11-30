.class public Lorg/a/a/b/c;
.super Lorg/a/a/d;
.source "X500Name.java"

# interfaces
.implements Lorg/a/a/c;


# static fields
.field private static a:Lorg/a/a/b/d;


# instance fields
.field private b:Z

.field private c:I

.field private d:Lorg/a/a/b/d;

.field private e:[Lorg/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lorg/a/a/b/a/a;->a:Lorg/a/a/b/d;

    sput-object v0, Lorg/a/a/b/c;->a:Lorg/a/a/b/d;

    return-void
.end method

.method private constructor <init>(Lorg/a/a/b/d;Lorg/a/a/r;)V
    .locals 5

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/a/a/d;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/a/a/b/c;->d:Lorg/a/a/b/d;

    .line 98
    invoke-virtual {p2}, Lorg/a/a/r;->f()I

    move-result v0

    new-array v0, v0, [Lorg/a/a/b/b;

    iput-object v0, p0, Lorg/a/a/b/c;->e:[Lorg/a/a/b/b;

    .line 100
    const/4 v0, 0x0

    .line 102
    invoke-virtual {p2}, Lorg/a/a/r;->e()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v3, p0, Lorg/a/a/b/c;->e:[Lorg/a/a/b/b;

    add-int/lit8 v1, v0, 0x1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/a/a/b/b;->a(Ljava/lang/Object;)Lorg/a/a/b/b;

    move-result-object v4

    aput-object v4, v3, v0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/a/a/r;)V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lorg/a/a/b/c;->a:Lorg/a/a/b/d;

    invoke-direct {p0, v0, p1}, Lorg/a/a/b/c;-><init>(Lorg/a/a/b/d;Lorg/a/a/r;)V

    .line 91
    return-void
.end method


# virtual methods
.method public d()Lorg/a/a/bd;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lorg/a/a/bj;

    iget-object v1, p0, Lorg/a/a/b/c;->e:[Lorg/a/a/b/b;

    invoke-direct {v0, v1}, Lorg/a/a/bj;-><init>([Lorg/a/a/d;)V

    return-object v0
.end method

.method public e()[Lorg/a/a/b/b;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    iget-object v0, p0, Lorg/a/a/b/c;->e:[Lorg/a/a/b/b;

    array-length v0, v0

    new-array v0, v0, [Lorg/a/a/b/b;

    .line 146
    iget-object v1, p0, Lorg/a/a/b/c;->e:[Lorg/a/a/b/b;

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 241
    :goto_0
    return v0

    .line 223
    :cond_0
    instance-of v0, p1, Lorg/a/a/b/c;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/a/a/r;

    if-nez v0, :cond_1

    move v0, v2

    .line 225
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 228
    check-cast v0, Lorg/a/a/ar;

    invoke-interface {v0}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lorg/a/a/b/c;->c()Lorg/a/a/bd;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/a/a/bd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 232
    goto :goto_0

    .line 237
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/a/a/b/c;->d:Lorg/a/a/b/d;

    new-instance v1, Lorg/a/a/b/c;

    check-cast p1, Lorg/a/a/ar;

    invoke-interface {p1}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v3

    invoke-static {v3}, Lorg/a/a/r;->a(Ljava/lang/Object;)Lorg/a/a/r;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/a/a/b/c;-><init>(Lorg/a/a/r;)V

    invoke-interface {v0, p0, v1}, Lorg/a/a/b/d;->a(Lorg/a/a/b/c;Lorg/a/a/b/c;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    move v0, v2

    .line 241
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/a/a/b/c;->b:Z

    if-eqz v0, :cond_0

    .line 203
    iget v0, p0, Lorg/a/a/b/c;->c:I

    .line 210
    :goto_0
    return v0

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/b/c;->b:Z

    .line 208
    iget-object v0, p0, Lorg/a/a/b/c;->d:Lorg/a/a/b/d;

    invoke-interface {v0, p0}, Lorg/a/a/b/d;->a(Lorg/a/a/b/c;)I

    move-result v0

    iput v0, p0, Lorg/a/a/b/c;->c:I

    .line 210
    iget v0, p0, Lorg/a/a/b/c;->c:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/a/a/b/c;->d:Lorg/a/a/b/d;

    invoke-interface {v0, p0}, Lorg/a/a/b/d;->b(Lorg/a/a/b/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
