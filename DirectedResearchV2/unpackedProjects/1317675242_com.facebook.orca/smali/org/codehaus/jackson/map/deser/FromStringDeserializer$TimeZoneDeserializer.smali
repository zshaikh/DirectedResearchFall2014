.class public Lorg/codehaus/jackson/map/deser/FromStringDeserializer$TimeZoneDeserializer;
.super Lorg/codehaus/jackson/map/deser/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/codehaus/jackson/map/deser/FromStringDeserializer",
        "<",
        "Ljava/util/TimeZone;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 237
    const-class v0, Ljava/util/TimeZone;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 243
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic b(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lorg/codehaus/jackson/map/deser/FromStringDeserializer$TimeZoneDeserializer;->a(Ljava/lang/String;Lorg/codehaus/jackson/map/DeserializationContext;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method
