.class public final Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
.super Ljava/lang/Object;
.source "ClassKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;",
        ">;"
    }
.end annotation


# instance fields
.field private _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private _className:Ljava/lang/String;

.field private _hashCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 35
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 44
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    iget-object v1, p1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->compareTo(Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 87
    :goto_0
    return v2

    .line 76
    :cond_0
    if-nez p1, :cond_1

    move v2, v4

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 78
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;

    move-object v1, v0

    .line 87
    .local v1, other:Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;
    iget-object v2, v1, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    iget-object v3, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    return v0
.end method

.method public reset(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_class:Ljava/lang/Class;

    .line 49
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_hashCode:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/type/ClassKey;->_className:Ljava/lang/String;

    return-object v0
.end method
