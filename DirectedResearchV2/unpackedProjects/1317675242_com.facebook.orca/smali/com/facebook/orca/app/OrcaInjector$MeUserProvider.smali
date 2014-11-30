.class Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;
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
        "Lcom/facebook/orca/users/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/users/User;
    .locals 2

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0}, Lcom/facebook/orca/cache/DataCache;->c()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MeUserProvider;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method
