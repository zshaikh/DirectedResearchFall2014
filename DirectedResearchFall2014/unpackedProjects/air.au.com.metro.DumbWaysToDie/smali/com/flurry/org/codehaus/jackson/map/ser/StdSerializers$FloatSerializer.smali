.class public final Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;
.super Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;
.source "StdSerializers.java"


# annotations
.annotation runtime Lcom/flurry/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-direct {v0}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;-><init>()V

    sput-object v0, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->instance:Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, v0}, Lcom/flurry/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/flurry/org/codehaus/jackson/JsonNode;
    .locals 2
    .parameter "provider"
    .parameter "typeHint"

    .prologue
    .line 198
    const-string v0, "number"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/flurry/org/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Float;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .parameter "value"
    .parameter "jgen"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/org/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    .line 193
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 180
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->serialize(Ljava/lang/Float;Lcom/flurry/org/codehaus/jackson/JsonGenerator;Lcom/flurry/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
