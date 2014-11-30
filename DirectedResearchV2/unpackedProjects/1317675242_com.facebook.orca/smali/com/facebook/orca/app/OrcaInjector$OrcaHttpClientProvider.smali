.class Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;
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
        "Lcom/facebook/orca/common/http/OrcaHttpClient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1982
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1982
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/http/OrcaHttpClient;
    .locals 4

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaConfig;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v1}, Lcom/facebook/orca/app/OrcaInjector;->c(Lcom/facebook/orca/app/OrcaInjector;)Lcom/facebook/orca/app/OrcaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/common/http/OrcaCookieStore;

    invoke-static {v0, v1, p0}, Lcom/facebook/orca/common/http/OrcaHttpClients;->a(Ljava/lang/String;Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaCookieStore;)Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OrcaHttpClientProvider;->a()Lcom/facebook/orca/common/http/OrcaHttpClient;

    move-result-object v0

    return-object v0
.end method
