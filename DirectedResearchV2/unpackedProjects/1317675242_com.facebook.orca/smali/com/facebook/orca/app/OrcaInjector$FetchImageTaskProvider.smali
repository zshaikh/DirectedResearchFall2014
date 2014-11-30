.class Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;
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
        "Lcom/facebook/orca/images/FetchImageTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1150
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/FetchImageTask;
    .locals 5

    .prologue
    .line 1154
    new-instance v1, Lcom/facebook/orca/images/FetchImageTask;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-static {v0}, Lcom/facebook/orca/app/OrcaInjector;->a(Lcom/facebook/orca/app/OrcaInjector;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/images/ImageCache;

    invoke-direct {v1, v2, v0, p0}, Lcom/facebook/orca/images/FetchImageTask;-><init>(Landroid/content/Context;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/facebook/orca/images/ImageCache;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1150
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$FetchImageTaskProvider;->a()Lcom/facebook/orca/images/FetchImageTask;

    move-result-object v0

    return-object v0
.end method
