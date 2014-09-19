.class public final Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
.super Ljava/lang/Object;
.source "MemberKey.java"


# static fields
.field static final NO_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final _argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->NO_CLASSES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .parameter "name"
    .parameter
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
    .local p2, argTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_name:Ljava/lang/String;

    .line 31
    if-nez p2, :cond_0

    sget-object v0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->NO_CLASSES:[Ljava/lang/Class;

    :goto_0
    iput-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    .line 32
    return-void

    :cond_0
    move-object v0, p2

    .line 31
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .parameter "o"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 48
    if-ne p1, p0, :cond_0

    move v7, v10

    .line 81
    :goto_0
    return v7

    .line 49
    :cond_0
    if-nez p1, :cond_1

    move v7, v9

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    if-eq v7, v8, :cond_2

    move v7, v9

    .line 51
    goto :goto_0

    .line 53
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;

    move-object v3, v0

    .line 54
    .local v3, other:Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_name:Ljava/lang/String;

    iget-object v8, v3, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v9

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    iget-object v4, v3, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    .line 58
    .local v4, otherArgs:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    array-length v2, v7

    .line 59
    .local v2, len:I
    array-length v7, v4

    if-eq v7, v2, :cond_4

    move v7, v9

    .line 60
    goto :goto_0

    .line 62
    :cond_4
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_7

    .line 63
    aget-object v5, v4, v1

    .line 64
    .local v5, type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v7, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

    aget-object v6, v7, v1

    .line 65
    .local v6, type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-ne v5, v6, :cond_6

    .line 62
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    move v7, v9

    .line 79
    goto :goto_0

    .end local v5           #type1:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #type2:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    move v7, v10

    .line 81
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

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

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/org/codehaus/jackson/map/introspect/MemberKey;->_argTypes:[Ljava/lang/Class;

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
