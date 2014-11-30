.class Lcom/nativex/advertiser/SerialNumberFactory;
.super Ljava/lang/Object;
.source "SerialNumberFactory.java"


# static fields
.field private static serialNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 38
    invoke-static {}, Lcom/nativex/advertiser/SerialNumberFactory;->initSerialNumberCompatibility()V

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/nativex/advertiser/SerialNumberFactory;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static initSerialNumberCompatibility()V
    .locals 6

    .prologue
    .line 55
    :try_start_0
    const-string v4, "android.os.Build"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 58
    .local v2, "serialNumberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 59
    const-string v4, "SERIAL"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 61
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serial Number is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    .line 62
    sput-object v3, Lcom/nativex/advertiser/SerialNumberFactory;->serialNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 74
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "serialNumberClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 65
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v4, "android.os.Build does not exist.  Cannot get SERIAL number."

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 67
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "A security exception prevented the Serial Number from being retrieved."

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 69
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v4, "Serial Number field does not exist;  Must be an older os version."

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v4

    move-object v0, v4

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Serial Number not found; Must be an older os version."

    invoke-static {v4}, Lcom/nativex/common/Log;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
