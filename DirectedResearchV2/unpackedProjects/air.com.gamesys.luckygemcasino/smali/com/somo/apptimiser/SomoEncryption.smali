.class abstract Lcom/somo/apptimiser/SomoEncryption;
.super Ljava/lang/Object;
.source "SomoEncryption.java"


# static fields
.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoEncryption;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract encrypt([B)[B
.end method

.method protected getBase64([B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 30
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/somo/apptimiser/SomoEncryption;->encrypt([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/somo/apptimiser/SomoEncryption;->getBase64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/somo/apptimiser/SomoEncryption;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v2, "Broken VM: no UTF-8"

    invoke-virtual {v1, v2, v0}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSessionKey()[B
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionKeyAsBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method
