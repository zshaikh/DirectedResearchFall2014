.class Lcom/google/inject/InjectorShell$InjectorFactory;
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
        "Lcom/google/inject/Injector;",
        ">;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/google/inject/Injector;",
        ">;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/Injector;


# direct methods
.method private constructor <init>(Lcom/google/inject/Injector;)V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/google/inject/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/InjectorShell$1;)V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/google/inject/InjectorShell$InjectorFactory;-><init>(Lcom/google/inject/Injector;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/inject/Injector;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/inject/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Lcom/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency",
            "<*>;)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/inject/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/inject/InjectorShell$InjectorFactory;->get()Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/inject/InjectorShell$InjectorFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;)Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "Provider<Injector>"

    return-object v0
.end method
