.class Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/server/PreProcessingServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1788
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/PreProcessingServiceHandler;
    .locals 3

    .prologue
    .line 1792
    new-instance v0, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    new-instance v2, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider$1;

    invoke-direct {v2, p0}, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider$1;-><init>(Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;)V

    invoke-static {v2}, Lcom/google/inject/Key;->get(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/Key;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/google/inject/Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/PreProcessingServiceHandler;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PreProcessingServiceHandlerProvider;->a()Lcom/facebook/orca/server/PreProcessingServiceHandler;

    move-result-object v0

    return-object v0
.end method
