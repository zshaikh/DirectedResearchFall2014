.class Lcom/google/inject/assistedinject/ParameterListKey;
.super Ljava/lang/Object;
.source "ParameterListKey.java"


# instance fields
.field private final paramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/inject/assistedinject/ParameterListKey;->paramList:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/inject/assistedinject/ParameterListKey;-><init>(Ljava/util/List;)V

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 46
    if-ne p1, p0, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Lcom/google/inject/assistedinject/ParameterListKey;

    if-nez v0, :cond_1

    .line 50
    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    check-cast p1, Lcom/google/inject/assistedinject/ParameterListKey;

    .line 53
    iget-object v0, p0, Lcom/google/inject/assistedinject/ParameterListKey;->paramList:Ljava/util/List;

    iget-object v1, p1, Lcom/google/inject/assistedinject/ParameterListKey;->paramList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/inject/assistedinject/ParameterListKey;->paramList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/inject/assistedinject/ParameterListKey;->paramList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
