.class public Lcom/gamesys/android/tools/ane/uuid/Identity;
.super Lcom/gamesys/android/common/tools/ToolsBox;
.source "Identity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;,
        Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;
    }
.end annotation


# static fields
.field public static final AMAZON_APP_STORE:Ljava/lang/String; = "AMAZON_APP_STORE"

.field private static final ANDROID_ID_CORRUPTED:Ljava/lang/String; = "9774d56d682e549c"

.field public static final GOOGLE_PLAY_STORE:Ljava/lang/String; = "GOOGLE_PLAY_STORE"

.field private static final INSTALLATION:Ljava/lang/String; = "DO_NOT_DELETE"

.field public static final INSTALLER_ANDROID_AMAZON:Ljava/lang/String; = "com.amazon.venezia"

.field public static final INSTALLER_ANDROID_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field public static final RATING_APP_URI_GOOGLE:Ljava/lang/String; = "market://details?id="

.field public static final UNKNOWN_STORE:Ljava/lang/String; = "PLATFORM_UNKOWN"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity;->sID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/gamesys/android/common/tools/ToolsBox;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->ANDROID_ID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    invoke-static {p0, v0}, Lcom/gamesys/android/tools/ane/uuid/Identity;->readOrWriteInstallationFile(Landroid/content/Context;Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBase64PackageHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 127
    const-string v3, "Unknown Error"

    .line 129
    .local v3, "sig":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 130
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 145
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v3

    .line 130
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v4, v6, v5

    .line 131
    .local v4, "signature":Landroid/content/pm/Signature;
    const-string v8, "SHA"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 132
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 133
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 134
    const-string v8, "KeyHash:"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "} is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "KeyHash:"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} NOT FOUND"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "} NOT FOUND"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 140
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "KeyHash:"

    const-string v6, "NoSuchAlgorithmException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    const-string v3, "NoSuchAlgorithmException"

    goto :goto_1
.end method

.method public static getSelfGeneratedId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->SELF_GENERATED_UUID:Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    invoke-static {p0, v0}, Lcom/gamesys/android/tools/ane/uuid/Identity;->readOrWriteInstallationFile(Landroid/content/Context;Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 94
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 95
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 96
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static declared-synchronized readOrWriteInstallationFile(Landroid/content/Context;Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "im"    # Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;

    .prologue
    .line 70
    const-class v3, Lcom/gamesys/android/tools/ane/uuid/Identity;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity;->sID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 71
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "DO_NOT_DELETE"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .local v1, "installation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v2, p1, Lcom/gamesys/android/tools/ane/uuid/Identity$IdentityMethod;->function:Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;

    invoke-interface {v2, p0}, Lcom/gamesys/android/tools/ane/uuid/Identity$IGeneratedStringValue;->generate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gamesys/android/tools/ane/uuid/Identity;->writeInstallationFile(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-static {v1}, Lcom/gamesys/android/tools/ane/uuid/Identity;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity;->sID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .end local v1    # "installation":Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v2, Lcom/gamesys/android/tools/ane/uuid/Identity;->sID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 77
    .restart local v1    # "installation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "installation":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static writeInstallationFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p0, "installation"    # Ljava/io/File;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v0, "out":Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 109
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 110
    return-void
.end method
