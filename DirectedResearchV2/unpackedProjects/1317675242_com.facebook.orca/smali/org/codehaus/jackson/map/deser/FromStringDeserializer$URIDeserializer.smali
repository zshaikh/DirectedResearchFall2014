.class public Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URIDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const-class v0, Ljava/net/URI;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/net/URI;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$URIDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method
