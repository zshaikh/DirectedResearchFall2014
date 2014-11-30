.class final Lcom/google/inject/EncounterImpl;
.super Ljava/lang/Object;
.source "EncounterImpl.java"

# interfaces
.implements Lcom/google/inject/spi/TypeEncounter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/TypeEncounter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final errors:Lcom/google/inject/internal/Errors;

.field private injectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final lookups:Lcom/google/inject/Lookups;

.field private membersInjectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method public constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/Lookups;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/inject/EncounterImpl;->valid:Z

    .line 46
    iput-object p1, p0, Lcom/google/inject/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    .line 47
    iput-object p2, p0, Lcom/google/inject/EncounterImpl;->lookups:Lcom/google/inject/Lookups;

    .line 48
    return-void
.end method


# virtual methods
.method public getInjectionListeners()Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/spi/InjectionListener",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/inject/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public getMembersInjectors()Lcom/google/inject/internal/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/inject/internal/ImmutableList",
            "<",
            "Lcom/google/inject/MembersInjector",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/inject/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/inject/internal/ImmutableList;->of()Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-static {v0}, Lcom/google/inject/internal/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/inject/internal/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/inject/EncounterImpl;->valid:Z

    .line 52
    return-void
.end method
