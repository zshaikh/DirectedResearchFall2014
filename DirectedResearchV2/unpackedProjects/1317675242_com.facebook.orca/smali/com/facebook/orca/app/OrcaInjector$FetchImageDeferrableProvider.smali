.class Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;
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
        "Lcom/facebook/orca/images/FetchImageDeferrable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1135
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/images/FetchImageDeferrable;
    .locals 9

    .prologue
    .line 1139
    new-instance v0, Lcom/facebook/orca/images/FetchImageDeferrable;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/images/ImageCache;

    iget-object v3, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/images/FetchImageTask;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v6, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {v5, v6}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/orca/images/FetchImageCoordinator;

    iget-object v6, p0, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v7, Ljava/util/Random;

    const-class v8, Lcom/facebook/orca/annotations/InsecureRandom;

    invoke-virtual {v6, v7, v8}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Random;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/images/FetchImageDeferrable;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/images/ImageCache;Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;Lcom/google/inject/Provider;Lcom/facebook/orca/images/FetchImageCoordinator;Ljava/util/Random;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$FetchImageDeferrableProvider;->a()Lcom/facebook/orca/images/FetchImageDeferrable;

    move-result-object v0

    return-object v0
.end method
