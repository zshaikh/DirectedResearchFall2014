.class Lcom/google/inject/DefaultConstructionProxyFactory;
.super Ljava/lang/Object;
.source "DefaultConstructionProxyFactory.java"

# interfaces
.implements Lcom/google/inject/ConstructionProxyFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/ConstructionProxyFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injectionPoint:Lcom/google/inject/spi/InjectionPoint;


# direct methods
.method constructor <init>(Lcom/google/inject/spi/InjectionPoint;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/inject/DefaultConstructionProxyFactory;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/inject/DefaultConstructionProxyFactory;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/inject/DefaultConstructionProxyFactory;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/google/inject/ConstructionProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/ConstructionProxy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/inject/DefaultConstructionProxyFactory;->injectionPoint:Lcom/google/inject/spi/InjectionPoint;

    invoke-virtual {v0}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 50
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    new-instance v1, Lcom/google/inject/DefaultConstructionProxyFactory$1;

    invoke-direct {v1, p0, v0}, Lcom/google/inject/DefaultConstructionProxyFactory$1;-><init>(Lcom/google/inject/DefaultConstructionProxyFactory;Ljava/lang/reflect/Constructor;)V

    return-object v1

    .line 75
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    goto :goto_0
.end method
