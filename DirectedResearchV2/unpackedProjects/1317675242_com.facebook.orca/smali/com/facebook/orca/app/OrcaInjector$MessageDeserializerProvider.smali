.class Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;
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
        "Lcom/facebook/orca/protocol/methods/MessageDeserializer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 1520
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 1520
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/protocol/methods/MessageDeserializer;
    .locals 6

    .prologue
    .line 1524
    new-instance v3, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v1, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;

    iget-object v1, p0, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/methods/ShareDeserializer;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v4, Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    invoke-virtual {v2, v4}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;

    iget-object v4, p0, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v5, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    invoke-virtual {v4, v5}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/orca/protocol/methods/MessageDeserializer;-><init>(Lcom/facebook/orca/protocol/methods/ParticipantInfoDeserializer;Lcom/facebook/orca/protocol/methods/ShareDeserializer;Lcom/facebook/orca/protocol/methods/AttachmentDeserializer;Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;)V

    return-object v3
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1520
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MessageDeserializerProvider;->a()Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    move-result-object v0

    return-object v0
.end method
