.class public Lcom/applovin/impl/sdk/AppLovinEvent;
.super Ljava/lang/Object;


# static fields
.field public static final SESSION_END:Ljava/lang/String; = "session_end"

.field public static final SESSION_START:Ljava/lang/String; = "session_start"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->c:J

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->e:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V
    .locals 7

    const-string v5, "NO_LINK_ID_SET"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static a(Ljava/lang/String;DLjava/lang/String;)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 3

    const-string v2, "revenue"

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinEvent;

    const-string v1, "revenue"

    invoke-direct {v0, v2}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "revenue"

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "currency"

    invoke-virtual {v0, v1, p3}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;J)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinEvent;

    const-string v1, "session_tracking"

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;J)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 3

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinEvent;

    const-string v1, "error"

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "code"

    invoke-virtual {v0, v2, p2}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "exception"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/AppLovinEvent;->setField(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 1

    const-string v0, "ReportedError"

    invoke-static {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/AppLovinEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/AppLovinEvent;

    move-result-object v0

    return-object v0
.end method

.method static a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 7

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v0, "values"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinEvent;

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sid"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinEvent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/AppLovinEvent;
    .locals 1

    const-string v0, "UserError"

    invoke-static {p0, p1, v0, p2}, Lcom/applovin/impl/sdk/AppLovinEvent;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/applovin/impl/sdk/AppLovinEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/sdk/AppLovinEvent;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinEvent;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public getEventID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setSessionLinkIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->b:Ljava/lang/String;

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sid"

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    iget-wide v2, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "type"

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/sdk/AppLovinEvent;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "values"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "ALEvent: Corrupted JSON"

    goto :goto_0
.end method
