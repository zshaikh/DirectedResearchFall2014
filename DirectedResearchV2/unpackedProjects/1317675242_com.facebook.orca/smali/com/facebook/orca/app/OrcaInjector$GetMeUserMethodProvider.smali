.class Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;
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
        "Lcom/facebook/orca/protocol/methods/GetMeUserMethod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/GetMeUserMethod;
    .locals 4

    .prologue
    .line 1513
    new-instance v1, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/UserFqlHelper;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserSerialization;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;-><init>(Lcom/facebook/orca/protocol/methods/UserFqlHelper;Lcom/facebook/orca/users/UserSerialization;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1509
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$GetMeUserMethodProvider;->a()Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    move-result-object v0

    return-object v0
.end method
