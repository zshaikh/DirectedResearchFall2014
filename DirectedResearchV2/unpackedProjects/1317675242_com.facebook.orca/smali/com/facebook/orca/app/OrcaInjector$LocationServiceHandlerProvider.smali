.class Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;
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
        "Lcom/facebook/orca/location/LocationServiceHandler;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/location/LocationServiceHandler;
    .locals 3

    .prologue
    .line 1213
    new-instance v0, Lcom/facebook/orca/location/LocationServiceHandler;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/location/LocationAsyncTask;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/location/LocationServiceHandler;-><init>(Lcom/google/inject/Provider;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$LocationServiceHandlerProvider;->a()Lcom/facebook/orca/location/LocationServiceHandler;

    move-result-object v0

    return-object v0
.end method
