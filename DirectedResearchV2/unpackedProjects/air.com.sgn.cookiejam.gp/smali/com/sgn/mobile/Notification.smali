.class public Lcom/sgn/mobile/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private alertAction:Ljava/lang/String;

.field private alertBody:Ljava/lang/String;

.field private alertTitle:Ljava/lang/String;

.field private fireDate:Ljava/util/Date;

.field private userInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/sgn/mobile/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 25
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/Date;

    const-string v1, "f"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    .line 26
    const-string v1, "u"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    .line 27
    const-string v1, "ab"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    .line 28
    const-string v1, "aa"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    .line 29
    const-string v1, "at"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "notification":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "fireDate"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    .line 16
    const-string v0, "userInfo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    .line 17
    const-string v0, "alertBody"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    .line 18
    const-string v0, "alertAction"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    .line 19
    const-string v0, "alertTitle"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getAlertAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFireDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHashCode()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "fireDate"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "userInfo"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "alertBody"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "alertAction"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "alertTitle"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    const-string v4, "aa"

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "f"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->fireDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "u"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->userInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "ab"

    iget-object v2, p0, Lcom/sgn/mobile/Notification;->alertBody:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "aa"

    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertAction:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "aa"

    iget-object v1, p0, Lcom/sgn/mobile/Notification;->alertTitle:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_3
    invoke-static {v0}, Lcom/sgn/mobile/JSON;->stringify(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
