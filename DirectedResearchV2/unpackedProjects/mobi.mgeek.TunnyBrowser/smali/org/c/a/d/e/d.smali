.class public Lorg/c/a/d/e/d;
.super Lorg/c/a/d/e/c;
.source "Password.java"


# static fields
.field private static final a:Lorg/c/a/d/c/d;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/c/a/d/e/d;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/d/e/d;->a:Lorg/c/a/d/c/d;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    move v0, v1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    .line 120
    instance-of v2, p1, Lorg/c/a/d/e/d;

    if-eqz v2, :cond_3

    .line 122
    check-cast p1, Lorg/c/a/d/e/d;

    .line 124
    iget-object v2, p1, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 127
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/c/a/d/e/d;->b:Ljava/lang/String;

    return-object v0
.end method
