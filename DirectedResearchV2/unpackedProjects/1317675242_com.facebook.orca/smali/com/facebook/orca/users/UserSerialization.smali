.class public Lcom/facebook/orca/users/UserSerialization;
.super Ljava/lang/Object;
.source "UserSerialization.java"


# static fields
.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const-string v0, "^https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/users/UserSerialization;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/users/UserSerialization;->a:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    if-nez p1, :cond_0

    .line 275
    const/4 v0, 0x0

    .line 281
    :goto_0
    return-object v0

    .line 277
    :cond_0
    sget-object v0, Lcom/facebook/orca/users/UserSerialization;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;
    .locals 9

    .prologue
    .line 144
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "right"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "top"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v2

    .line 149
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    .line 150
    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 151
    const-string v0, "right"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v5

    double-to-float v6, v5

    .line 152
    const-string v0, "top"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v7

    double-to-float v5, v7

    .line 153
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 154
    new-instance v0, Lcom/facebook/orca/users/PicCropInfo;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/users/PicCropInfo;-><init>(Ljava/lang/String;IIFFFF)V

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/User;
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-static {p2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/User;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected serialization exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/User$Type;",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 38
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/users/User;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 113
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 114
    const-string v1, "uid"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/node/ObjectNode;Lcom/facebook/orca/users/Name;)V

    .line 116
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const-string v1, "emails"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/node/ArrayNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    const-string v1, "phones"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 123
    const-string v1, "pic_big"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 126
    const-string v1, "pic_square"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 129
    const-string v1, "pic_crop"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->r()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/orca/users/UserSerialization;->a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Lorg/codehaus/jackson/JsonNode;)Lorg/codehaus/jackson/JsonNode;

    .line 131
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5

    .line 132
    const-string v1, "rank"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 134
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-eq v1, v2, :cond_6

    .line 135
    const-string v1, "is_pushable"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Lcom/facebook/orca/common/util/TriState;

    move-result-object v2

    sget-object v3, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v2, v3, :cond_8

    move v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 138
    const-string v1, "is_employee"

    invoke-virtual {v0, v1, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 140
    :cond_7
    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 201
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserEmailAddress;

    .line 202
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/node/ArrayNode;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_0
    return-object v0
.end method

.method public a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 161
    const-string v1, "uri"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "width"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 163
    const-string v1, "height"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 164
    const-string v1, "left"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 165
    const-string v1, "right"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->g()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 166
    const-string v1, "top"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 167
    const-string v1, "bottom"

    invoke-virtual {p1}, Lcom/facebook/orca/users/PicCropInfo;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 168
    return-object v0
.end method

.method public a(Lorg/codehaus/jackson/node/ObjectNode;Lcom/facebook/orca/users/Name;)V
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const-string v0, "first_name"

    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const-string v0, "last_name"

    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    const-string v0, "name"

    invoke-virtual {p2}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    return-void
.end method

.method public b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Name;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    .line 175
    const-string v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    const-string v1, "last_name"

    invoke-virtual {p1, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_1
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 184
    :goto_2
    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    move-object v2, v3

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public b(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/User;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    .line 47
    const-string v1, "uid"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Missing id field on profile"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 48
    const-string v1, "uid"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    const-string v1, "id"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 54
    const-string v1, "contact_email"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 56
    new-instance v1, Lcom/facebook/orca/users/UserEmailAddress;

    const-string v2, "contact_email"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    .line 58
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 64
    :cond_1
    :goto_0
    const-string v1, "phones"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v1, "phones"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/users/UserSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 68
    :cond_2
    invoke-virtual {p0, p2}, Lcom/facebook/orca/users/UserSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 70
    const-string v1, "pic_square"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    const-string v1, "pic_square"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 73
    :cond_3
    const-string v1, "pic_big"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    const-string v1, "pic_big"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 76
    :cond_4
    const-string v1, "pic_crop"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 77
    const-string v1, "pic_crop"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    .line 79
    :cond_5
    const-string v1, "rank"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    const-string v1, "rank"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    .line 82
    :cond_6
    const-string v1, "is_pushable"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 83
    const-string v1, "is_pushable"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    .line 88
    :goto_2
    const-string v1, "affiliations"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 90
    const-string v1, "affiliations"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 92
    const-string v2, "nid"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v2

    const-wide/32 v4, 0x30186a0

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    goto :goto_3

    .line 59
    :cond_8
    const-string v1, "emails"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    const-string v1, "emails"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/orca/users/UserSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    goto/16 :goto_0

    .line 83
    :cond_9
    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_1

    .line 86
    :cond_a
    sget-object v1, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_2

    .line 98
    :cond_b
    const-string v1, "is_employee"

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonNode;->a(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    .line 100
    :cond_c
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/JsonNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 257
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 258
    new-instance v2, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v3, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 259
    const-string v3, "full_number"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, "display_number"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Lcom/facebook/orca/common/util/TriState;

    move-result-object v3

    sget-object v4, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-eq v3, v4, :cond_0

    .line 262
    const-string v3, "is_verified"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Lcom/facebook/orca/common/util/TriState;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 264
    :cond_0
    const-string v3, "android_type"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 262
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 267
    :cond_2
    return-object v0
.end method

.method public c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 210
    new-instance v2, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-static {p0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public d(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->h()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 220
    const-string v2, "full_number"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const-string v2, "full_number"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const-string v3, "display_number"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 231
    :goto_1
    sget-object v4, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 232
    const-string v5, "is_verified"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    const-string v4, "is_verified"

    invoke-virtual {p0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->o()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    .line 235
    :cond_0
    :goto_2
    const/4 v5, 0x0

    .line 236
    const-string v6, "android_type"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    const-string v5, "android_type"

    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v5

    .line 250
    :cond_1
    :goto_3
    new-instance v6, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-direct {v6, v2, v3, v5, v4}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/orca/common/util/TriState;)V

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList$Builder;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 226
    :cond_2
    const-string v2, "country_code"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 227
    const-string v3, "number"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v3

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 229
    goto :goto_1

    .line 233
    :cond_3
    sget-object v4, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_2

    .line 239
    :cond_4
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    const-string v6, "type"

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v6

    .line 241
    const-string v7, "other_phone"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    const/4 v5, 0x7

    goto :goto_3

    .line 243
    :cond_5
    const-string v7, "cell"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 244
    const/4 v5, 0x2

    goto :goto_3

    .line 252
    :cond_6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
