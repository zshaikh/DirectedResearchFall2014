.class Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;
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
        "Lcom/facebook/orca/debug/MemoryUsageDumper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1119
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/debug/MemoryUsageDumper;
    .locals 3

    .prologue
    .line 1123
    new-instance v0, Lcom/facebook/orca/debug/MemoryUsageDumper;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/images/ImageCache;

    invoke-direct {v0, p0}, Lcom/facebook/orca/debug/MemoryUsageDumper;-><init>(Lcom/facebook/orca/images/ImageCache;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MemoryUsageDumperProvider;->a()Lcom/facebook/orca/debug/MemoryUsageDumper;

    move-result-object v0

    return-object v0
.end method
