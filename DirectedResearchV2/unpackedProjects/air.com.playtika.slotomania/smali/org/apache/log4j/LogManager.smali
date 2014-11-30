.class public Lorg/apache/log4j/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# static fields
.field public static final CONFIGURATOR_CLASS_KEY:Ljava/lang/String; = "log4j.configuratorClass"

.field public static final DEFAULT_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.properties"

.field public static final DEFAULT_CONFIGURATION_KEY:Ljava/lang/String; = "log4j.configuration"

.field public static final DEFAULT_INIT_OVERRIDE_KEY:Ljava/lang/String; = "log4j.defaultInitOverride"

.field static final DEFAULT_XML_CONFIGURATION_FILE:Ljava/lang/String; = "log4j.xml"

.field private static guard:Ljava/lang/Object;

.field private static repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 75
    sput-object v9, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 80
    new-instance v4, Lorg/apache/log4j/Hierarchy;

    new-instance v7, Lorg/apache/log4j/spi/RootLogger;

    sget-object v8, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v7, v8}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v4, v7}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    .line 81
    .local v4, "h":Lorg/apache/log4j/Hierarchy;
    new-instance v7, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    invoke-direct {v7, v4}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v7, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 84
    const-string v7, "log4j.defaultInitOverride"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "override":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v7, "false"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 91
    :cond_0
    const-string v7, "log4j.configuration"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "configurationOptionStr":Ljava/lang/String;
    const-string v7, "log4j.configuratorClass"

    invoke-static {v7, v9}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "configuratorClassName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 104
    .local v6, "url":Ljava/net/URL;
    if-nez v0, :cond_3

    .line 105
    const-string v7, "log4j.xml"

    invoke-static {v7}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 106
    if-nez v6, :cond_1

    .line 107
    const-string v7, "log4j.properties"

    invoke-static {v7}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 122
    :cond_1
    :goto_0
    if-eqz v6, :cond_4

    .line 123
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Using URL ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] for automatic log4j configuration."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v7

    invoke-static {v6, v1, v7}, Lorg/apache/log4j/helpers/OptionConverter;->selectAndConfigure(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .end local v0    # "configurationOptionStr":Ljava/lang/String;
    .end local v1    # "configuratorClassName":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    :cond_2
    :goto_1
    return-void

    .line 111
    .restart local v0    # "configurationOptionStr":Ljava/lang/String;
    .restart local v1    # "configuratorClassName":Ljava/lang/String;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_3
    :try_start_1
    new-instance v6, Ljava/net/URL;

    .end local v6    # "url":Ljava/net/URL;
    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_0

    .line 112
    .end local v6    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 115
    .local v3, "ex":Ljava/net/MalformedURLException;
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .restart local v6    # "url":Ljava/net/URL;
    goto :goto_0

    .line 127
    .end local v3    # "ex":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 128
    .local v2, "e":Ljava/lang/NoClassDefFoundError;
    const-string v7, "Error during default initialization"

    invoke-static {v7, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 131
    .end local v2    # "e":Ljava/lang/NoClassDefFoundError;
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not find resource: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentLoggers()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 209
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .prologue
    .line 220
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lorg/apache/log4j/spi/DefaultRepositorySelector;

    new-instance v1, Lorg/apache/log4j/spi/NOPLoggerRepository;

    invoke-direct {v1}, Lorg/apache/log4j/spi/NOPLoggerRepository;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/log4j/spi/DefaultRepositorySelector;-><init>(Lorg/apache/log4j/spi/LoggerRepository;)V

    sput-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 176
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 177
    const-string v0, "LogMananger.repositorySelector was null likely due to error in class reloading, using NOPLoggerRepository."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 179
    :cond_0
    sget-object v0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    invoke-interface {v0}, Lorg/apache/log4j/spi/RepositorySelector;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    return-object v0
.end method

.method public static getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static resetConfiguration()V
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 245
    return-void
.end method

.method public static setRepositorySelector(Lorg/apache/log4j/spi/RepositorySelector;Ljava/lang/Object;)V
    .locals 2
    .param p0, "selector"    # Lorg/apache/log4j/spi/RepositorySelector;
    .param p1, "guard"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempted to reset the LoggerFactory without possessing the guard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    if-nez p0, :cond_1

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RepositorySelector must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    sput-object p1, Lorg/apache/log4j/LogManager;->guard:Ljava/lang/Object;

    .line 168
    sput-object p0, Lorg/apache/log4j/LogManager;->repositorySelector:Lorg/apache/log4j/spi/RepositorySelector;

    .line 169
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->shutdown()V

    .line 239
    return-void
.end method
