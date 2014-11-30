.class public Lcom/facebook/orca/common/util/JSONUtil;
.super Ljava/lang/Object;
.source "JSONUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 117
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 118
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 119
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 123
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 125
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 126
    :cond_2
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_3

    .line 127
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 128
    :cond_3
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_4

    .line 129
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 130
    :cond_4
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_7

    .line 131
    check-cast v1, Lorg/json/JSONArray;

    .line 132
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 133
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_6

    .line 135
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 136
    :cond_6
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 137
    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 139
    :cond_7
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 140
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    return-object v2
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 149
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonNode;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 113
    const-class v1, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 108
    const-class v1, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0, p0, v1}, Lorg/codehaus/jackson/map/ObjectMapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    return-object p0
.end method

.method public static a(Lorg/codehaus/jackson/JsonNode;)Z
    .locals 1

    .prologue
    .line 25
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    move-object v0, v1

    .line 42
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 42
    goto :goto_0
.end method

.method public static b(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-object v0
.end method

.method public static c(Lorg/codehaus/jackson/JsonNode;)J
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 47
    if-nez p0, :cond_0

    move-wide v0, v1

    .line 62
    :goto_0
    return-wide v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    move-wide v0, v1

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v1

    .line 62
    goto :goto_0
.end method

.method public static d(Lorg/codehaus/jackson/JsonNode;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->q()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public static e(Lorg/codehaus/jackson/JsonNode;)D
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 87
    if-nez p0, :cond_0

    move-wide v0, v1

    .line 102
    :goto_0
    return-wide v0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    move-wide v0, v1

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->s()D

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-wide v0, v1

    .line 102
    goto :goto_0
.end method
