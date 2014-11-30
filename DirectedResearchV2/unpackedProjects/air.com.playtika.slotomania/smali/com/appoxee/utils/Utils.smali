.class public Lcom/appoxee/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final log:Lorg/apache/log4j/Logger;


# instance fields
.field final logConfigurator:Lde/mindpipe/android/logging/log4j/LogConfigurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/appoxee/utils/Utils;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lde/mindpipe/android/logging/log4j/LogConfigurator;

    invoke-direct {v0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>()V

    iput-object v0, p0, Lcom/appoxee/utils/Utils;->logConfigurator:Lde/mindpipe/android/logging/log4j/LogConfigurator;

    .line 13
    return-void
.end method

.method public static Debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static DebugException(Ljava/lang/Exception;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 27
    invoke-static {}, Lcom/appoxee/AppoxeeManager;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static Error(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public static Warn(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/appoxee/utils/Utils;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v0, p0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static setupLogger()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lde/mindpipe/android/logging/log4j/LogConfigurator;

    invoke-direct {v0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;-><init>()V

    .line 20
    .local v0, "logConfigurator":Lde/mindpipe/android/logging/log4j/LogConfigurator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setUseFileAppender(Z)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setUseLogCatAppender(Z)V

    .line 22
    sget-object v1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->setRootLevel(Lorg/apache/log4j/Level;)V

    .line 23
    invoke-virtual {v0}, Lde/mindpipe/android/logging/log4j/LogConfigurator;->configure()V

    .line 24
    return-void
.end method
