.class Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;
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
        "Lcom/facebook/orca/protocol/methods/SendMessageMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1555
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/SendMessageMethod;
    .locals 3

    .prologue
    .line 1559
    new-instance v0, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-direct {v0, p0}, Lcom/facebook/orca/protocol/methods/SendMessageMethod;-><init>(Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1555
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$SendMessageMethodProvider;->a()Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    move-result-object v0

    return-object v0
.end method
