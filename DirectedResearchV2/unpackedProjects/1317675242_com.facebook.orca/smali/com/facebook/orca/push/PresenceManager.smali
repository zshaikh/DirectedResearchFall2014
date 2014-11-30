.class public Lcom/facebook/orca/push/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"


# instance fields
.field private final a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

.field private final b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Lcom/facebook/orca/push/mqtt/MqttConnectionManager;Lcom/facebook/orca/app/OrcaActivityBroadcaster;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/collect/Sets;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->c:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/push/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/push/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/push/PresenceManager;->d:Z

    .line 55
    return-void
.end method

.method public a(Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/push/PresenceManager;->e()Z

    move-result v0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/orca/push/PresenceManager;->d:Z

    .line 60
    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method public b(Lcom/facebook/orca/push/PresenceManager$OnContactTypingStateChangedListener;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 107
    const-string v1, "to"

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/facebook/orca/push/PresenceManager;->d()Z

    move-result v0

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/orca/push/PresenceManager;->e:J

    .line 68
    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->b:Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    const-string v1, "com.facebook.orca.USER_BECAME_ACTIVE"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaActivityBroadcaster;->c(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/facebook/orca/push/PresenceManager;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/push/PresenceManager;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 4

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/facebook/orca/push/PresenceManager;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/orca/push/PresenceManager;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/facebook/orca/push/PresenceManager;->e:J

    return-wide v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/orca/push/PresenceManager;->a:Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;->f()Z

    move-result v0

    return v0
.end method
