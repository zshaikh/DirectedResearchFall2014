.class public Lcom/facebook/orca/database/DbCoordinatesSerialization;
.super Ljava/lang/Object;
.source "DbCoordinatesSerialization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/facebook/orca/location/Coordinates;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-static {p1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 52
    :goto_0
    return-object v0

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/facebook/orca/location/Coordinates;->newBuilder()Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "accuracy"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->a(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "altitude"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "altitude"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Double;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "altitudeAccuracy"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "altitudeAccuracy"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->b(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "heading"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "heading"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Lcom/facebook/orca/location/CoordinatesBuilder;->c(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v1

    const-string v2, "speed"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "speed"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->d(Ljava/lang/Float;)Lcom/facebook/orca/location/CoordinatesBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/location/CoordinatesBuilder;->h()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    move-object v2, v4

    goto :goto_1

    :cond_2
    move-object v2, v4

    goto :goto_2

    :cond_3
    move-object v2, v4

    goto :goto_3

    :cond_4
    move-object v2, v4

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_5
.end method

.method a(Lcom/facebook/orca/location/Coordinates;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 43
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 26
    const-string v1, "latitude"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 27
    const-string v1, "longitude"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 28
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    const-string v1, "accuracy"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->e()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    const-string v1, "altitude"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->c()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    const-string v1, "altitudeAccuracy"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->g()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 37
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 38
    const-string v1, "heading"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->i()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 40
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->l()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 41
    const-string v1, "speed"

    invoke-virtual {p1}, Lcom/facebook/orca/location/Coordinates;->k()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 43
    :cond_5
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
