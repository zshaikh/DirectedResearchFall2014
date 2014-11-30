.class public final Lorg/codehaus/jackson/map/introspect/MemberKey;
.super Ljava/lang/Object;
.source "MemberKey.java"


# static fields
.field static final a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Ljava/lang/String;

.field final c:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/codehaus/jackson/map/introspect/MemberKey;->a:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->b:Ljava/lang/String;

    .line 31
    if-nez p2, :cond_0

    sget-object v0, Lorg/codehaus/jackson/map/introspect/MemberKey;->a:[Ljava/lang/Class;

    :goto_0
    iput-object v0, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    .line 32
    return-void

    :cond_0
    move-object v0, p2

    .line 31
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 48
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 81
    :goto_0
    return v0

    .line 49
    :cond_0
    if-nez p1, :cond_1

    move v0, v6

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v6

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/map/introspect/MemberKey;

    .line 54
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->b:Ljava/lang/String;

    iget-object v1, p1, Lorg/codehaus/jackson/map/introspect/MemberKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    iget-object v0, p1, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    .line 58
    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    array-length v1, v1

    .line 59
    array-length v2, v0

    if-eq v2, v1, :cond_4

    move v0, v6

    .line 60
    goto :goto_0

    :cond_4
    move v2, v6

    .line 62
    :goto_1
    if-ge v2, v1, :cond_7

    .line 63
    aget-object v3, v0, v2

    .line 64
    iget-object v4, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    aget-object v4, v4, v2

    .line 65
    if-ne v3, v4, :cond_6

    .line 62
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v6

    .line 79
    goto :goto_0

    :cond_7
    move v0, v7

    .line 81
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/introspect/MemberKey;->c:[Ljava/lang/Class;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-args)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
