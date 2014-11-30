.class public Lcom/facebook/orca/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/facebook/orca/config/OrcaConfig;

.field private final c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

.field private final d:Lcom/facebook/orca/push/mqtt/MqttRegistrar;

.field private final e:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/orca/auth/AuthenticationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "orca:PushManager"

    sput-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/config/OrcaConfig;Lcom/facebook/orca/push/c2dm/C2DMRegistrar;Lcom/facebook/orca/push/mqtt/MqttRegistrar;Lcom/google/inject/Provider;Lcom/facebook/orca/auth/AuthenticationManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/config/OrcaConfig;",
            "Lcom/facebook/orca/push/c2dm/C2DMRegistrar;",
            "Lcom/facebook/orca/push/mqtt/MqttRegistrar;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/ops/OrcaServiceOperation;",
            ">;",
            "Lcom/facebook/orca/auth/AuthenticationManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/orca/push/PushManager;->b:Lcom/facebook/orca/config/OrcaConfig;

    .line 47
    iput-object p2, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    .line 48
    iput-object p3, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    .line 49
    iput-object p4, p0, Lcom/facebook/orca/push/PushManager;->e:Lcom/google/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/facebook/orca/push/PushManager;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    .line 51
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->b:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaConfig;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->c()Ljava/util/EnumSet;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->h()V

    .line 79
    :goto_1
    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->MQTT:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->j()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->i()V

    goto :goto_1

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->k()V

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->a()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->f()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->b()V

    .line 101
    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->a()V

    .line 105
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->d:Lcom/facebook/orca/push/mqtt/MqttRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/mqtt/MqttRegistrar;->b()V

    .line 109
    return-void
.end method

.method private l()Lcom/facebook/orca/ops/OrcaServiceOperation;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->e:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/ops/OrcaServiceOperation;

    .line 141
    invoke-virtual {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->b(Z)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->c(Z)V

    .line 143
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/orca/push/PushManager;->a:Ljava/lang/String;

    const-string v1, "PushManager.init"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->g()V

    .line 56
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->g()V

    .line 60
    return-void
.end method

.method public c()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/orca/push/PushManager$PushType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->MQTT:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->i()V

    .line 113
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->k()V

    .line 114
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->b:Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {v0}, Lcom/facebook/orca/config/OrcaConfig;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->c:Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {v0}, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/orca/push/PushManager;->f:Lcom/facebook/orca/auth/AuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/AuthenticationManager;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->c()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/push/PushManager$PushType;->C2DM:Lcom/facebook/orca/push/PushManager$PushType;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    invoke-virtual {p0}, Lcom/facebook/orca/push/PushManager;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/server/RegisterPushTokenParams;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 133
    const-string v2, "registerPushTokenParams"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/push/PushManager;->l()Lcom/facebook/orca/ops/OrcaServiceOperation;

    move-result-object v0

    .line 135
    const-string v2, "register_push"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/ops/OrcaServiceOperation;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
