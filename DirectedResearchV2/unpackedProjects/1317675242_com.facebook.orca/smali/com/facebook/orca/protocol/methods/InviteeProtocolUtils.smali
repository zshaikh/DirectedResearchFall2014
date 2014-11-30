.class public Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;
.super Ljava/lang/Object;
.source "InviteeProtocolUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/data/PickedUser;)Lorg/codehaus/jackson/JsonNode;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->e()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 48
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->FBID:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v2, :cond_1

    .line 50
    check-cast p0, Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 51
    const-string v0, "type"

    const-string v2, "id"

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "id"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserFbidIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/orca/users/UserPhoneNumber;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->c()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 56
    const-string v0, "phone"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-object v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserIdentifier;->f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v0, v2, :cond_0

    .line 59
    check-cast p0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 60
    const-string v0, "type"

    const-string v2, "phone"

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "phone"

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserPhoneNumber;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/data/PickedUser;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/List;)Lorg/codehaus/jackson/JsonNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/contacts/data/PickedUser;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/data/PickedUser;

    .line 40
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;->a(Lcom/facebook/orca/contacts/data/PickedUser;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 42
    :cond_0
    return-object v1
.end method
