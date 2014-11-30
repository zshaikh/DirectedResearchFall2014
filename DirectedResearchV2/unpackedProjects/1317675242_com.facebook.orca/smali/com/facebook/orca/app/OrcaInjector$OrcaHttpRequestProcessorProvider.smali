.class Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;
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
        "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;
    .locals 4

    .prologue
    .line 788
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/http/OrcaHttpClient;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;-><init>(Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpRequestProcessorProvider;->a()Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    move-result-object v0

    return-object v0
.end method
