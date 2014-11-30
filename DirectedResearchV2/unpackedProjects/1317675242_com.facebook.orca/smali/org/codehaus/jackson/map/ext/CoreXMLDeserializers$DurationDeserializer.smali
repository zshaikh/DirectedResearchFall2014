.class public Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljavax/xml/datatype/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Ljavax/xml/datatype/Duration;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/Duration;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers;->a:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method
