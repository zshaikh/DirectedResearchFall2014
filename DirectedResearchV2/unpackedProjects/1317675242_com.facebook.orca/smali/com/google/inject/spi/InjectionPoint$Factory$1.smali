.class final Lcom/google/inject/spi/InjectionPoint$Factory$1;
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
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/inject/internal/Errors;",
            ")",
            "Lcom/google/inject/spi/InjectionPoint;"
        }
    .end annotation

    .prologue
    .line 389
    new-instance v0, Lcom/google/inject/spi/InjectionPoint;

    invoke-direct {v0, p1, p2}, Lcom/google/inject/spi/InjectionPoint;-><init>(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public bridge synthetic create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Member;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;
    .locals 1

    .prologue
    .line 384
    check-cast p2, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/spi/InjectionPoint$Factory$1;->create(Lcom/google/inject/TypeLiteral;Ljava/lang/reflect/Field;Lcom/google/inject/internal/Errors;)Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    return-object v0
.end method

.method public getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/google/inject/spi/InjectionPoint$Factory$1;->getMembers(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method
