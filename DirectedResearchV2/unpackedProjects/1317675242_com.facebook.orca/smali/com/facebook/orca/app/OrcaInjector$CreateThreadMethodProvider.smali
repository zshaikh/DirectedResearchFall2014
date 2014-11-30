.class Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;
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
        "Lcom/facebook/orca/protocol/methods/CreateThreadMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1423
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/CreateThreadMethod;
    .locals 4

    .prologue
    .line 1427
    new-instance v1, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;-><init>(Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1423
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$CreateThreadMethodProvider;->a()Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    move-result-object v0

    return-object v0
.end method
