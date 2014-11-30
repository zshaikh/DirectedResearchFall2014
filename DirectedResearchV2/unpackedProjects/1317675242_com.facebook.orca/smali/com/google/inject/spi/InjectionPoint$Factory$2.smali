.class final Lcom/google/inject/spi/InjectionPoint$Factory$2;
.super Ljava/lang/Object;
.source "InjectionPoint.java"

# interfaces
.implements Lcom/google/inject/spi/InjectionPoint$Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/InjectionPoint$Factory",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 393
    check-cast p2, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/spi/InjectionPoint$Factory$2;->create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 398
    # invokes: Lcom/google/inject/spi/InjectionPoint;->checkForMisplacedBindingAnnotations(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V
    invoke-static {p2, p3}, Lcom/google/inject/spi/InjectionPoint;->access$000(Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)V

    .line 399
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public bridge synthetic getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/InjectionPoint$Factory$2;->getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
