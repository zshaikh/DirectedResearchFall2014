.class public Lcom/facebook/orca/protocol/methods/CoordinatesDeserializer;
.super Ljava/lang/Object;
.source "CoordinatesDeserializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/location/Coordinates;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-static {}, Lcom/facebook/orca/location/Coordinates;->newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "altitude"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "altitude"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "accuracy"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "accuracy"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "altitudeAccuracy"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "altitudeAccuracy"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "heading"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "heading"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    const-string v1, "speed"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "speed"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/facebook/orca/location/CoordinatesBuilder;->d(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->h()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v3

    goto :goto_4
.end method
