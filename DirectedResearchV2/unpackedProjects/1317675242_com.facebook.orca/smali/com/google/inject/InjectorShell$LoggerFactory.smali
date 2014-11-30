.class Lcom/google/inject/InjectorShell$LoggerFactory;
.super Ljava/lang/Object;
.source "InjectorShell.java"

# interfaces
.implements Lcom/google/inject/Provider;
.implements Lcom/google/inject/internal/InternalFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory",
        "<",
        "Ljava/util/logging/Logger;",
        ">;",
        "Lcom/google/inject/Provider",
        "<",
        "Ljava/util/logging/Logger;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/InjectorShell$1;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/inject/InjectorShell$LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/inject/InjectorShell$LoggerFactory;->get()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/InjectorShell$LoggerFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/util/logging/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)",
            "Ljava/util/logging/Logger;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    .line 234
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/logging/Logger;->getAnonymousLogger()Ljava/util/logging/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    const-string v0, "Provider<Logger>"

    return-object v0
.end method
