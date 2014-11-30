.class public Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$QNameDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljavax/xml/namespace/QName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/namespace/QName;
    .locals 1

    .prologue
    .line 110
    invoke-static {p1}, Ljavax/xml/namespace/QName;->valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$QNameDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/namespace/QName;

    move-result-object v0

    return-object v0
.end method
