.class Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;
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
        "Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1959
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1959
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;
    .locals 1

    .prologue
    .line 1964
    new-instance v0, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-direct {v0}, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1959
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$OfflineThreadingIdGeneratorProvider;->a()Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    move-result-object v0

    return-object v0
.end method
