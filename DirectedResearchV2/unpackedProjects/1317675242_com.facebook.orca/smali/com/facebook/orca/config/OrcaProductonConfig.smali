.class public Lcom/facebook/orca/config/OrcaProductonConfig;
.super Lcom/facebook/orca/config/OrcaConfig;
.source "OrcaProductonConfig.java"


# instance fields
.field private final a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

.field private final b:Lcom/facebook/orca/config/OrcaMqttConfig;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 18
    sget-object v0, Lcom/facebook/orca/config/OrcaConfig$RunType;->PROD:Lcom/facebook/orca/config/OrcaConfig$RunType;

    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/config/OrcaConfig;-><init>(Landroid/content/pm/PackageInfo;Lcom/facebook/orca/config/OrcaConfig$RunType;)V

    .line 19
    new-instance v0, Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    const-string v1, "facebook.com"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/config/OrcaStandardHttpConfig;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductonConfig;->a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    .line 20
    new-instance v0, Lcom/facebook/orca/config/OrcaMqttConfig;

    const-string v1, "orcart.facebook.com"

    const/16 v2, 0x22b3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/config/OrcaMqttConfig;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/facebook/orca/config/OrcaProductonConfig;->b:Lcom/facebook/orca/config/OrcaMqttConfig;

    .line 21
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic f()Lcom/facebook/orca/config/OrcaHttpConfig;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/facebook/orca/config/OrcaProductonConfig;->h()Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/facebook/orca/config/OrcaMqttConfig;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductonConfig;->b:Lcom/facebook/orca/config/OrcaMqttConfig;

    return-object v0
.end method

.method public h()Lcom/facebook/orca/config/OrcaStandardHttpConfig;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/config/OrcaProductonConfig;->a:Lcom/facebook/orca/config/OrcaStandardHttpConfig;

    return-object v0
.end method
