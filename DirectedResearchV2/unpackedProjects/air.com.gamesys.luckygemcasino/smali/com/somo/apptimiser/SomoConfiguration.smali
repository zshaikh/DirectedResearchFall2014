.class Lcom/somo/apptimiser/SomoConfiguration;
.super Ljava/lang/Object;
.source "SomoConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoConfiguration$1;,
        Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;,
        Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;,
        Lcom/somo/apptimiser/SomoConfiguration$Metadata;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIN_DISTANCE:F = 5.0f

.field private static final DEFAULT_MIN_TIME_MILLIS:I = 0x3e8

.field static final DEFAULT_STORE_MAX_SIZE:I = 0x64

.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final PACKAGE:Ljava/lang/String; = "com.somo.apptimiser"

.field private static final log:Lcom/somo/apptimiser/SomoLogger;


# instance fields
.field private applicationId:Ljava/lang/Integer;

.field private context:Landroid/content/Context;

.field private locationSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

.field private final metaData:Landroid/os/Bundle;

.field private rsaPublicKey:Ljava/security/spec/RSAPublicKeySpec;

.field private serverUrl:Landroid/net/Uri;

.field private storageSettings:Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/somo/apptimiser/SomoLogger;->getLogger()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v0

    sput-object v0, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p1}, Lcom/somo/apptimiser/SomoConfiguration;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/somo/apptimiser/SomoConfiguration;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metaData"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->applicationId:Ljava/lang/Integer;

    .line 71
    iput-object p1, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    .line 73
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->init()V

    .line 77
    iput-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "appId"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->applicationId:Ljava/lang/Integer;

    .line 81
    iput-object p1, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    .line 83
    iput-object p3, p0, Lcom/somo/apptimiser/SomoConfiguration;->applicationId:Ljava/lang/Integer;

    .line 84
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->init()V

    .line 88
    iput-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/Integer;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/somo/apptimiser/SomoConfiguration;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/somo/apptimiser/SomoConfiguration;-><init>(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 68
    return-void
.end method

.method private static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 96
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Package %s removed while process is alive?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getRsaPublicKeyDerBytes()[B
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 161
    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v6, "com.somo.apptimiser.PUBLIC_KEY_BASE64_STRING"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v6, "com.somo.apptimiser.PUBLIC_KEY_BASE64_STRING"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 164
    .local v0, "der":[B
    sget-object v5, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v6, "Got %d bytes of Base64 encoded RSA key"

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 185
    :cond_0
    :goto_0
    return-object v0

    .line 165
    .end local v0    # "der":[B
    :cond_1
    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v6, "com.somo.apptimiser.PUBLIC_KEY_RAW_RESOURCE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v6, "com.somo.apptimiser.PUBLIC_KEY_RAW_RESOURCE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 167
    .local v3, "resourceId":I
    const/4 v2, 0x0

    .line 169
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 171
    .restart local v0    # "der":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 172
    .local v4, "size":I
    sget-object v5, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v6, "Got %d bytes of DER public key from resource %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    .line 174
    .end local v0    # "der":[B
    .end local v4    # "size":I
    :catch_1
    move-exception v1

    .line 175
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v5, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v6, "Cannot read public key from resource %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v1, v6, v7}, Lcom/somo/apptimiser/SomoLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 176
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot read public key resource"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v5

    .line 182
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "resourceId":I
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No com.somo.apptimiser.PUBLIC_KEY_BASE64_STRING or com.somo.apptimiser.PUBLIC_KEY_RAW_RESOURCE meta-data defined"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "resourceId":I
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private getUniquiAppURL()Ljava/lang/String;
    .locals 6

    .prologue
    .line 149
    iget-object v1, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v2, "com.somo.apptimiser.TEST_URL_OVERRIDE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "sUrlOverride":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 152
    const-string v1, "http://a[app_id].appsdk.net:8080/ProjectXCollector"

    const-string v2, "[app_id]"

    iget-object v3, p0, Lcom/somo/apptimiser/SomoConfiguration;->applicationId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_0
    sget-object v2, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "getUniquiAppURL returning = [%s]"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    return-object v0

    .line 155
    :cond_1
    const-string v1, "Null"

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->initServerUri()V

    .line 126
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->initRsaPublicKey()V

    .line 127
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->initLocationConfig()V

    .line 128
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->initStorageConfig()V

    .line 129
    return-void
.end method

.method private initLocationConfig()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v0, 0x1

    .line 203
    iget-object v10, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v11, "com.somo.apptimiser.LOCATION_TRACKING_DISABLED"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 206
    .local v1, "disabled":Z
    iget-object v10, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    const-string v11, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v11, "com.somo.apptimiser.LOCATION_TRACKING_FINE"

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_1

    move v2, v0

    .line 211
    .local v2, "accuracyFine":Z
    :goto_0
    iget-object v10, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    const-string v11, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v11, "com.somo.apptimiser.LOCATION_TRACKING_COARSE"

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_2

    move v3, v0

    .line 216
    .local v3, "accuracyCoarse":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 217
    sget-object v10, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v11, "Location tracking disabled"

    invoke-virtual {v10, v11}, Lcom/somo/apptimiser/SomoLogger;->i(Ljava/lang/String;)I

    .line 220
    :cond_0
    const-wide/16 v4, 0x3e8

    .line 221
    .local v4, "minTimeMillis":J
    const/high16 v6, 0x40a00000

    .line 222
    .local v6, "minDistance":F
    const-wide/32 v7, 0x1d4c0

    .line 224
    .local v7, "timeout":J
    sget-object v11, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v12, "Location tracking [%s] accuracy tracking fine [%s]  accuracy tracking coarse [%s] minTime [%d] minDistance [%f]"

    const/4 v10, 0x5

    new-array v13, v10, [Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string v10, "disabled"

    :goto_2
    aput-object v10, v13, v9

    if-eqz v2, :cond_4

    const-string v9, "enabled"

    :goto_3
    aput-object v9, v13, v0

    const/4 v9, 0x2

    if-eqz v3, :cond_5

    const-string v0, "enabled"

    :goto_4
    aput-object v0, v13, v9

    const/4 v0, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v13, v0

    const/4 v0, 0x4

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v13, v0

    invoke-virtual {v11, v12, v13}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 231
    new-instance v0, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;-><init>(ZZZJFJLcom/somo/apptimiser/SomoConfiguration$1;)V

    iput-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->locationSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    .line 233
    return-void

    .end local v2    # "accuracyFine":Z
    .end local v3    # "accuracyCoarse":Z
    .end local v4    # "minTimeMillis":J
    .end local v6    # "minDistance":F
    .end local v7    # "timeout":J
    :cond_1
    move v2, v9

    .line 206
    goto :goto_0

    .restart local v2    # "accuracyFine":Z
    :cond_2
    move v3, v9

    .line 211
    goto :goto_1

    .line 224
    .restart local v3    # "accuracyCoarse":Z
    .restart local v4    # "minTimeMillis":J
    .restart local v6    # "minDistance":F
    .restart local v7    # "timeout":J
    :cond_3
    const-string v10, "enabled"

    goto :goto_2

    :cond_4
    const-string v9, "disabled"

    goto :goto_3

    :cond_5
    const-string v0, "disabled"

    goto :goto_4
.end method

.method private initRsaPublicKey()V
    .locals 9

    .prologue
    .line 190
    :try_start_0
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->getRsaPublicKeyDerBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 192
    .local v3, "x509":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 193
    .local v1, "kf":Ljava/security/KeyFactory;
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 194
    .local v2, "pk":Ljava/security/PublicKey;
    const-class v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, v2, v4}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v4

    check-cast v4, Ljava/security/spec/RSAPublicKeySpec;

    iput-object v4, p0, Lcom/somo/apptimiser/SomoConfiguration;->rsaPublicKey:Ljava/security/spec/RSAPublicKeySpec;

    .line 195
    sget-object v4, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v5, "Loaded public key, size %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/somo/apptimiser/SomoConfiguration;->rsaPublicKey:Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v8}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-void

    .line 197
    .end local v1    # "kf":Ljava/security/KeyFactory;
    .end local v2    # "pk":Ljava/security/PublicKey;
    .end local v3    # "x509":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot initialize public key"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private initServerUri()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0}, Lcom/somo/apptimiser/SomoConfiguration;->getUniquiAppURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/somo/apptimiser/SomoConfiguration;->setServerUri(Landroid/net/Uri;)V

    .line 134
    iget-object v2, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v3, "com.somo.apptimiser.UNIT_TEST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/somo/apptimiser/SomoConfiguration;->metaData:Landroid/os/Bundle;

    const-string v3, "com.somo.apptimiser.UNIT_TEST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getServerUrl"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 139
    .local v1, "getServerUrl":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/somo/apptimiser/SomoConfiguration;->context:Landroid/content/Context;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/somo/apptimiser/SomoConfiguration;->setServerUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "getServerUrl":Ljava/lang/reflect/Method;
    :goto_0
    sget-object v2, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Using debug server %s"

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/somo/apptimiser/SomoConfiguration;->serverUrl:Landroid/net/Uri;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    :cond_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Cannot load debugging server url from context"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private initStorageConfig()V
    .locals 7

    .prologue
    .line 236
    const-wide/16 v0, 0x64

    .line 238
    .local v0, "maxSize":J
    new-instance v2, Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;-><init>(JLcom/somo/apptimiser/SomoConfiguration$1;)V

    iput-object v2, p0, Lcom/somo/apptimiser/SomoConfiguration;->storageSettings:Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;

    .line 239
    sget-object v2, Lcom/somo/apptimiser/SomoConfiguration;->log:Lcom/somo/apptimiser/SomoLogger;

    const-string v3, "Storage config: maxSize %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    return-void
.end method


# virtual methods
.method public getLocationSettings()Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->locationSettings:Lcom/somo/apptimiser/SomoConfiguration$LocationSettings;

    return-object v0
.end method

.method public getRsaPublicKey()Ljava/security/spec/RSAPublicKeySpec;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->rsaPublicKey:Ljava/security/spec/RSAPublicKeySpec;

    return-object v0
.end method

.method public getServerUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->serverUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getStorageSettings()Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/somo/apptimiser/SomoConfiguration;->storageSettings:Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;

    return-object v0
.end method

.method setServerUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "serverUrl"    # Landroid/net/Uri;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/somo/apptimiser/SomoConfiguration;->serverUrl:Landroid/net/Uri;

    .line 106
    return-void
.end method
