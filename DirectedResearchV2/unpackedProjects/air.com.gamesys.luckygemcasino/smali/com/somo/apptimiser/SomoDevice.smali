.class Lcom/somo/apptimiser/SomoDevice;
.super Ljava/lang/Object;
.source "SomoDevice.java"


# static fields
.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private mConnection:Ljava/lang/String;

.field private final mHandset:Ljava/lang/String;

.field private final mOperator:Ljava/lang/String;

.field private final mOs:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .local v3, "model":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 30
    .local v2, "manufacturer":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mHandset:Ljava/lang/String;

    .line 31
    sget-object v5, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/somo/apptimiser/SomoDevice;->mHandset:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/somo/apptimiser/SomoLogger;->i(Ljava/lang/String;)I

    .line 33
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mOs:Ljava/lang/String;

    .line 34
    sget-object v5, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "os: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/somo/apptimiser/SomoDevice;->mOs:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/somo/apptimiser/SomoLogger;->i(Ljava/lang/String;)I

    .line 36
    :try_start_0
    const-string v5, "undefined"

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mConnection:Ljava/lang/String;

    .line 38
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 41
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mConnection:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    sget-object v5, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/somo/apptimiser/SomoDevice;->mConnection:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/somo/apptimiser/SomoLogger;->i(Ljava/lang/String;)I

    .line 50
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 52
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mOperator:Ljava/lang/String;

    .line 53
    sget-object v5, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/somo/apptimiser/SomoDevice;->mOperator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/somo/apptimiser/SomoLogger;->i(Ljava/lang/String;)I

    .line 54
    return-void

    .line 44
    .end local v4    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v5, Lcom/somo/apptimiser/SomoDevice;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v6, "getConnection: "

    invoke-virtual {v5, v6, v0}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const-string v5, "undefined"

    iput-object v5, p0, Lcom/somo/apptimiser/SomoDevice;->mConnection:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDevice;->mConnection:Ljava/lang/String;

    return-object v0
.end method

.method public getHandset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDevice;->mHandset:Ljava/lang/String;

    return-object v0
.end method

.method public getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDevice;->mOs:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/somo/apptimiser/SomoDevice;->mOperator:Ljava/lang/String;

    return-object v0
.end method
