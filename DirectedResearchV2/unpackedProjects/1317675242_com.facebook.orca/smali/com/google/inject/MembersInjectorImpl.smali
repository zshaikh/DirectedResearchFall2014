.class Lcom/google/inject/MembersInjectorImpl;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final injectionListeners:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/InjectorImpl;

.field private final memberInjectors:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final userMembersInjectors:Lcom/google/inject/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/InjectorImpl;Lcom/google/inject/TypeLiteral;Lcom/google/inject/EncounterImpl;Lcom/google/inject/internal/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/InjectorImpl;",
            "Lcom/google/inject/TypeLiteral",
            "<TT;>;",
            "Lcom/google/inject/EncounterImpl",
            "<TT;>;",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/SingleMemberInjector;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/inject/MembersInjectorImpl;->injector:Lcom/google/inject/InjectorImpl;

    .line 45
    iput-object p2, p0, Lcom/google/inject/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 46
    iput-object p4, p0, Lcom/google/inject/MembersInjectorImpl;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    .line 47
    invoke-virtual {p3}, Lcom/google/inject/EncounterImpl;->getMembersInjectors()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->userMembersInjectors:Lcom/google/inject/internal/ImmutableList;

    .line 48
    invoke-virtual {p3}, Lcom/google/inject/EncounterImpl;->getInjectionListeners()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->injectionListeners:Lcom/google/inject/internal/ImmutableList;

    .line 52
    return-void
.end method


# virtual methods
.method public getInjectionPoints()Lcom/google/inject/internal/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableSet",
            "<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/google/inject/internal/ImmutableSet;->builder()Lcom/google/inject/internal/ImmutableSet$Builder;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/inject/MembersInjectorImpl;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v1}, Lcom/google/inject/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/inject/SingleMemberInjector;

    .line 120
    invoke-interface {p0}, Lcom/google/inject/SingleMemberInjector;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/inject/internal/ImmutableSet$Builder;

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableSet$Builder;->build()Lcom/google/inject/internal/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->injector:Lcom/google/inject/InjectorImpl;

    new-instance v1, Lcom/google/inject/MembersInjectorImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/inject/MembersInjectorImpl$1;-><init>(Lcom/google/inject/MembersInjectorImpl;Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    invoke-virtual {v0, v1}, Lcom/google/inject/InjectorImpl;->callInContext(Lcom/google/inject/ContextualCallable;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/google/inject/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    goto :goto_0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    .line 61
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/inject/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    invoke-virtual {v0}, Lcom/google/inject/internal/Errors;->throwProvisionExceptionIfErrorsExist()V

    .line 67
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    invoke-virtual {v1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    goto :goto_0
.end method

.method injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->memberInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/SingleMemberInjector;

    invoke-interface {v0, p2, p3, p1}, Lcom/google/inject/SingleMemberInjector;->inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V

    .line 98
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->userMembersInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->size()I

    move-result v1

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    .line 104
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->userMembersInjectors:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/inject/internal/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/MembersInjector;

    .line 106
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 107
    :catch_0
    move-exception v3

    .line 108
    iget-object v4, p0, Lcom/google/inject/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, v0, v4, v3}, Lcom/google/inject/internal/Errors;->errorInUserInjector(Lcom/google/inject/MembersInjector;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_2

    .line 111
    :cond_1
    return-void
.end method

.method notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v1

    .line 86
    iget-object v0, p0, Lcom/google/inject/MembersInjectorImpl;->injectionListeners:Lcom/google/inject/internal/ImmutableList;

    invoke-virtual {v0}, Lcom/google/inject/internal/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/InjectionListener;

    .line 88
    :try_start_0
    invoke-interface {v0, p1}, Lcom/google/inject/spi/InjectionListener;->afterInjection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v3

    .line 90
    iget-object v4, p0, Lcom/google/inject/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, v0, v4, v3}, Lcom/google/inject/internal/Errors;->errorNotifyingInjectionListener(Lcom/google/inject/spi/InjectionListener;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
