.class Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;
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
        "Lcom/facebook/orca/push/common/PushDeserialization;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1716
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/push/common/PushDeserialization;
    .locals 6

    .prologue
    .line 1720
    new-instance v2, Lcom/facebook/orca/push/common/PushDeserialization;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/users/User;

    const-class v4, Lcom/facebook/orca/annotations/MeUser;

    invoke-virtual {v1, v3, v4}, Lcom/facebook/orca/app/OrcaInjector;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    invoke-virtual {v1, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-direct {v2, v0, v3, v1, p0}, Lcom/facebook/orca/push/common/PushDeserialization;-><init>(Lcom/facebook/orca/cache/DataCache;Lcom/google/inject/Provider;Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;Lcom/facebook/orca/cache/SendMessageManager;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1716
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$PushDeserializationProvider;->a()Lcom/facebook/orca/push/common/PushDeserialization;

    move-result-object v0

    return-object v0
.end method
