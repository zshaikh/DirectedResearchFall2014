.class public final enum Lcom/facebook/orca/app/OrcaAppType;
.super Ljava/lang/Enum;
.source "OrcaAppType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/app/OrcaAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/app/OrcaAppType;

.field public static final enum DEV:Lcom/facebook/orca/app/OrcaAppType;

.field public static final enum IN_HOUSE:Lcom/facebook/orca/app/OrcaAppType;

.field public static final enum PROD:Lcom/facebook/orca/app/OrcaAppType;


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final appId:Ljava/lang/String;

.field private final appSecret:Ljava/lang/String;

.field private final defaultUpgradeUrl:Ljava/lang/String;

.field private final mapApiKey:Ljava/lang/String;

.field private final shortName:Ljava/lang/String;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/facebook/orca/app/OrcaAppType;

    const-string v1, "DEV"

    const-string v3, "dev"

    const-string v4, "181425161904154"

    const-string v5, "29695f68d8dfa9d6a9cb4662735c9aff"

    const-string v6, "95a15d22a0e735b2983ecb9759dbaf91"

    const-string v7, "0Fv-lR4KBsTd9tc5MUXlXpd75fPEpd3izKREONg"

    const-string v8, "hNSh71ZDUzoaou29d_8GwPU8UOE"

    const-string v9, "https://developers.facebook.com"

    invoke-direct/range {v0 .. v9}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    .line 22
    new-instance v3, Lcom/facebook/orca/app/OrcaAppType;

    const-string v4, "IN_HOUSE"

    const-string v6, "in-house"

    const-string v7, "105910932827969"

    const-string v8, "3fd89d7c8cf293c5c6db88444077422f"

    const-string v9, "201f1a1fa4998b746f7b531e6434c224"

    const-string v10, "0e1ruJ7mZbBXS0h1Ffa7wWK4SMcshAyydjcm1qg"

    const-string v11, "pLdFLi7Y9fGRBYynu_0msNMhS_w"

    const-string v12, "https://m.facebook.com/mobile_builds"

    move v5, v13

    invoke-direct/range {v3 .. v12}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/orca/app/OrcaAppType;->IN_HOUSE:Lcom/facebook/orca/app/OrcaAppType;

    .line 31
    new-instance v3, Lcom/facebook/orca/app/OrcaAppType;

    const-string v4, "PROD"

    const-string v6, "prod"

    const-string v7, "256002347743983"

    const-string v8, "256002347743983"

    const-string v9, "374e60f8b9bb6b8cbb30f78030438895"

    const-string v10, "0e1ruJ7mZbBWslnLnQQ5RPITlJs7QBrg8JYbTyg"

    const-string v11, "c_0Yh6T3lvD4FVtzlEnJKk94sDY"

    const-string v12, "https://market.android.com/details?id=com.facebook.orca"

    move v5, v14

    invoke-direct/range {v3 .. v12}, Lcom/facebook/orca/app/OrcaAppType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/orca/app/OrcaAppType;->PROD:Lcom/facebook/orca/app/OrcaAppType;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/app/OrcaAppType;

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->DEV:Lcom/facebook/orca/app/OrcaAppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->IN_HOUSE:Lcom/facebook/orca/app/OrcaAppType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/orca/app/OrcaAppType;->PROD:Lcom/facebook/orca/app/OrcaAppType;

    aput-object v1, v0, v14

    sput-object v0, Lcom/facebook/orca/app/OrcaAppType;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/facebook/orca/app/OrcaAppType;->shortName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/facebook/orca/app/OrcaAppType;->appId:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/facebook/orca/app/OrcaAppType;->apiKey:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/facebook/orca/app/OrcaAppType;->appSecret:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/facebook/orca/app/OrcaAppType;->mapApiKey:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/facebook/orca/app/OrcaAppType;->signature:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/facebook/orca/app/OrcaAppType;->defaultUpgradeUrl:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/app/OrcaAppType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/app/OrcaAppType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/app/OrcaAppType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/facebook/orca/app/OrcaAppType;->$VALUES:[Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, [Lcom/facebook/orca/app/OrcaAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/app/OrcaAppType;

    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->appSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultUpgradeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->defaultUpgradeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMapApiKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->mapApiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/app/OrcaAppType;->signature:Ljava/lang/String;

    return-object v0
.end method
