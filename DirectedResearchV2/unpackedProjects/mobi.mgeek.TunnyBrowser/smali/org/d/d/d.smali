.class public Lorg/d/d/d;
.super Ljava/lang/Object;
.source "Parameter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/d/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/d/d/d;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/d/d/d;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lorg/d/d/d;)I
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/d/d/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lorg/d/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 48
    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/d/d/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lorg/d/d/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lorg/d/d/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/d/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/d/d/d;->b:Ljava/lang/String;

    invoke-static {v1}, Lorg/d/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lorg/d/d/d;

    invoke-virtual {p0, p1}, Lorg/d/d/d;->a(Lorg/d/d/d;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    if-nez p1, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v1

    .line 32
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    goto :goto_0

    .line 33
    :cond_2
    instance-of v2, p1, Lorg/d/d/d;

    if-eqz v2, :cond_0

    .line 35
    check-cast p1, Lorg/d/d/d;

    .line 36
    iget-object v2, p1, Lorg/d/d/d;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/d/d/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lorg/d/d/d;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/d/d/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/d/d/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/d/d/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
