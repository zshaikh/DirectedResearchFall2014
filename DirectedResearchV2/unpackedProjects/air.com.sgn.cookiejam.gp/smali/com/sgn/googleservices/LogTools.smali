.class public Lcom/sgn/googleservices/LogTools;
.super Ljava/lang/Object;
.source "LogTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static byteToString(Ljava/lang/StringBuilder;B)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "b"    # B

    .prologue
    const-string v4, "0123456789ABCDEF"

    .line 85
    if-gez p1, :cond_0

    add-int/lit16 v3, p1, 0x100

    move v2, v3

    .line 86
    .local v2, "unsigned_byte":I
    :goto_0
    div-int/lit8 v0, v2, 0x10

    .line 87
    .local v0, "hi":I
    rem-int/lit8 v1, v2, 0x10

    .line 88
    .local v1, "lo":I
    const-string v3, "0123456789ABCDEF"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, "0123456789ABCDEF"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    return-void

    .end local v0    # "hi":I
    .end local v1    # "lo":I
    .end local v2    # "unsigned_byte":I
    :cond_0
    move v2, p1

    .line 85
    goto :goto_0
.end method

.method static getAppIdFromResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    .local v2, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "pkgName":Ljava/lang/String;
    const-string v4, "app_id"

    const-string v5, "string"

    invoke-virtual {v2, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "res_id":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 52
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "res_id":I
    :goto_0
    return-object v4

    .line 50
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 51
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    const-string v4, "??? (failed to retrieve APP ID)"

    goto :goto_0
.end method

.method static getSHA1CertFingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 60
    .local v4, "sigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    if-nez v5, :cond_0

    .line 61
    const-string v5, "ERROR: NO SIGNATURE."

    .line 80
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v5

    .line 62
    .restart local v4    # "sigs":[Landroid/content/pm/Signature;
    :cond_0
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 63
    const-string v5, "ERROR: MULTIPLE SIGNATURES"

    goto :goto_0

    .line 65
    :cond_1
    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 66
    .local v0, "digest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, "hexString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 68
    if-lez v3, :cond_2

    .line 69
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_2
    aget-byte v5, v0, v3

    invoke-static {v2, v5}, Lcom/sgn/googleservices/LogTools;->byteToString(Ljava/lang/StringBuilder;B)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    .line 75
    .end local v0    # "digest":[B
    .end local v2    # "hexString":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 76
    .local v1, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 77
    const-string v5, "(ERROR: package not found)"

    goto :goto_0

    .line 78
    .end local v1    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 79
    .local v1, "ex":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 80
    const-string v5, "(ERROR: SHA1 algorithm not found)"

    goto :goto_0
.end method

.method static printMisconfiguredDebugInfo(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const-string v3, "****"

    const-string v2, "LogTools"

    .line 14
    const-string v0, "LogTools"

    const-string v0, "****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v0, "LogTools"

    const-string v0, "****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string v0, "LogTools"

    const-string v0, "**** APP NOT CORRECTLY CONFIGURED TO USE GOOGLE PLAY GAME SERVICES"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v0, "LogTools"

    const-string v0, "**** This is usually caused by one of these reasons:"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const-string v0, "LogTools"

    const-string v0, "**** (1) Your package name and certificate fingerprint do not match"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const-string v0, "LogTools"

    const-string v0, "****     the client ID you registered in Developer Console."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v0, "LogTools"

    const-string v0, "**** (2) Your App ID was incorrectly entered."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v0, "LogTools"

    const-string v0, "**** (3) Your game settings have not been published and you are "

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v0, "LogTools"

    const-string v0, "****     trying to log in with an account that is not listed as"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "LogTools"

    const-string v0, "****     a test account."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v0, "LogTools"

    const-string v0, "****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-nez p0, :cond_0

    .line 26
    const-string v0, "LogTools"

    const-string v0, "*** (no Context, so can\'t print more debug info)"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 30
    :cond_0
    const-string v0, "LogTools"

    const-string v0, "**** To help you debug, here is the information about this app"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string v0, "LogTools"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** Package name         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v0, "LogTools"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** Cert SHA1 fingerprint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sgn/googleservices/LogTools;->getSHA1CertFingerprint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const-string v0, "LogTools"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**** App ID from          : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sgn/googleservices/LogTools;->getAppIdFromResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v0, "LogTools"

    const-string v0, "****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v0, "LogTools"

    const-string v0, "**** Check that the above information matches your setup in "

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "LogTools"

    const-string v0, "**** Developer Console. Also, check that you\'re logging in with the"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v0, "LogTools"

    const-string v0, "**** right account (it should be listed in the Testers section if"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "LogTools"

    const-string v0, "**** your project is not yet published)."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const-string v0, "LogTools"

    const-string v0, "****"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v0, "LogTools"

    const-string v0, "**** For more information, refer to the troubleshooting guide:"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v0, "LogTools"

    const-string v0, "****   http://developers.google.com/games/services/android/troubleshooting"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
