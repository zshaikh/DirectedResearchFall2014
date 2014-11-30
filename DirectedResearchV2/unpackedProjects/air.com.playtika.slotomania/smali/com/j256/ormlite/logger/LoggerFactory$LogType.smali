.class enum Lcom/j256/ormlite/logger/LoggerFactory$LogType;
.super Ljava/lang/Enum;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/j256/ormlite/logger/LoggerFactory$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

.field public static final enum LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;


# instance fields
.field private final detectClassName:Ljava/lang/String;

.field private final logClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "com.j256.ormlite.logger.LocalLog"

    .line 68
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "ANDROID"

    const-string v2, "android.util.Log"

    const-string v3, "com.j256.ormlite.android.AndroidLog"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 69
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "COMMONS_LOGGING"

    const-string v2, "org.apache.commons.logging.LogFactory"

    const-string v3, "com.j256.ormlite.logger.CommonsLoggingLog"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 70
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    const-string v1, "LOG4J"

    const-string v2, "org.apache.log4j.Logger"

    const-string v3, "com.j256.ormlite.logger.Log4jLog"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 72
    new-instance v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;

    const-string v1, "LOCAL"

    const-string v2, "com.j256.ormlite.logger.LocalLog"

    const-string v2, "com.j256.ormlite.logger.LocalLog"

    invoke-direct {v0, v1, v7, v8, v8}, Lcom/j256/ormlite/logger/LoggerFactory$LogType$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->ANDROID:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->COMMONS_LOGGING:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOG4J:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->LOCAL:Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "detectClassName"    # Ljava/lang/String;
    .param p4, "logClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-object p3, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/j256/ormlite/logger/LoggerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lcom/j256/ormlite/logger/LoggerFactory$1;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object p0
.end method

.method public static values()[Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->$VALUES:[Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    invoke-virtual {v0}, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/j256/ormlite/logger/LoggerFactory$LogType;

    return-object v0
.end method


# virtual methods
.method public createLog(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 1
    .param p1, "classLabel"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;

    move-result-object v0

    return-object v0
.end method

.method createLogFromClassName(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log;
    .locals 8
    .param p1, "classLabel"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    iget-object v5, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 108
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 109
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/j256/ormlite/logger/Log;>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/j256/ormlite/logger/Log;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0    # "this":Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    move-object v5, p0

    .line 115
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Lcom/j256/ormlite/logger/Log;>;"
    :goto_0
    return-object v5

    .line 110
    .restart local p0    # "this":Lcom/j256/ormlite/logger/LoggerFactory$LogType;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/j256/ormlite/logger/LocalLog;

    invoke-direct {v4, p1}, Lcom/j256/ormlite/logger/LocalLog;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "log":Lcom/j256/ormlite/logger/Log;
    sget-object v5, Lcom/j256/ormlite/logger/Log$Level;->WARNING:Lcom/j256/ormlite/logger/Log$Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to call constructor for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->logClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", so had to use local log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/j256/ormlite/logger/Log;->log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v4

    .line 115
    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->isAvailableTestClass()Z

    move-result v0

    return v0
.end method

.method isAvailableTestClass()Z
    .locals 2

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/logger/LoggerFactory$LogType;->detectClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    const/4 v1, 0x1

    .line 134
    :goto_0
    return v1

    .line 133
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method
