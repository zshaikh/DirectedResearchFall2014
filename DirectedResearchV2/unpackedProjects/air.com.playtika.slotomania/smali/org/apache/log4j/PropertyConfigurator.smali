.class public Lorg/apache/log4j/PropertyConfigurator;
.super Ljava/lang/Object;
.source "PropertyConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# static fields
.field static final ADDITIVITY_PREFIX:Ljava/lang/String; = "log4j.additivity."

.field static final APPENDER_PREFIX:Ljava/lang/String; = "log4j.appender."

.field static final CATEGORY_PREFIX:Ljava/lang/String; = "log4j.category."

.field static final FACTORY_PREFIX:Ljava/lang/String; = "log4j.factory"

.field private static final INTERNAL_ROOT_NAME:Ljava/lang/String; = "root"

.field public static final LOGGER_FACTORY_KEY:Ljava/lang/String; = "log4j.loggerFactory"

.field static final LOGGER_PREFIX:Ljava/lang/String; = "log4j.logger."

.field static final RENDERER_PREFIX:Ljava/lang/String; = "log4j.renderer."

.field private static final RESET_KEY:Ljava/lang/String; = "log4j.reset"

.field static final ROOT_CATEGORY_PREFIX:Ljava/lang/String; = "log4j.rootCategory"

.field static final ROOT_LOGGER_PREFIX:Ljava/lang/String; = "log4j.rootLogger"

.field static final THRESHOLD_PREFIX:Ljava/lang/String; = "log4j.threshold"

.field static class$org$apache$log4j$Appender:Ljava/lang/Class;

.field static class$org$apache$log4j$Layout:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;


# instance fields
.field protected loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field protected registry:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    .line 90
    new-instance v0, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {v0}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 501
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static configure(Ljava/lang/String;)V
    .locals 2
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 344
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .locals 2
    .param p0, "configURL"    # Ljava/net/URL;

    .prologue
    .line 354
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 356
    return-void
.end method

.method public static configure(Ljava/util/Properties;)V
    .locals 2
    .param p0, "properties"    # Ljava/util/Properties;

    .prologue
    .line 367
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 369
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .locals 2
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 382
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/PropertyConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 383
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .locals 1
    .param p0, "configFilename"    # Ljava/lang/String;
    .param p1, "delay"    # J

    .prologue
    .line 400
    new-instance v0, Lorg/apache/log4j/PropertyWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/PropertyWatchdog;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "pdog":Lorg/apache/log4j/PropertyWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/helpers/FileWatchdog;->setDelay(J)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 403
    return-void
.end method


# virtual methods
.method protected configureLoggerFactory(Ljava/util/Properties;)V
    .locals 3
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 495
    const-string v1, "log4j.loggerFactory"

    invoke-static {v1, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "factoryClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Setting category factory to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 499
    sget-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v1}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggerFactory;

    iput-object v1, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 503
    iget-object v1, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    const-string v2, "log4j.factory."

    invoke-static {v1, p1, v2}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 505
    :cond_0
    return-void

    .line 499
    :cond_1
    sget-object v1, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    goto :goto_0
.end method

.method configureRootCategory(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 6
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 531
    const-string v3, "log4j.rootLogger"

    .line 532
    .local v3, "effectiveFrefix":Ljava/lang/String;
    const-string v0, "log4j.rootLogger"

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 535
    const-string v0, "log4j.rootCategory"

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    .line 536
    const-string v3, "log4j.rootCategory"

    .line 539
    :cond_0
    if-nez v5, :cond_1

    .line 540
    const-string v0, "Could not find root logger information. Is this OK?"

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v2

    .line 543
    .local v2, "root":Lorg/apache/log4j/Logger;
    monitor-enter v2

    .line 544
    :try_start_0
    const-string v4, "root"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/PropertyConfigurator;->parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 6
    .param p1, "configFileName"    # Ljava/lang/String;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    const-string v4, "]."

    .line 313
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 314
    .local v3, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 316
    .local v1, "istream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local v1    # "istream":Ljava/io/FileInputStream;
    .local v2, "istream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 325
    if-eqz v2, :cond_0

    .line 327
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 334
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, p2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    move-object v1, v2

    .line 335
    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v1    # "istream":Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return-void

    .line 320
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not read configuration file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Ignoring configuration file ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 325
    if-eqz v1, :cond_1

    .line 327
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 328
    :catch_1
    move-exception v4

    goto :goto_1

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    .line 327
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 329
    :cond_2
    :goto_4
    throw v4

    .line 328
    .end local v1    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v1    # "istream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 325
    .end local v1    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v1    # "istream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 320
    .end local v1    # "istream":Ljava/io/FileInputStream;
    .restart local v2    # "istream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2    # "istream":Ljava/io/FileInputStream;
    .restart local v1    # "istream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 5
    .param p1, "configURL"    # Ljava/net/URL;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    const-string v3, "]."

    .line 455
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 456
    .local v2, "props":Ljava/util/Properties;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Reading configuration from URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    .line 459
    .local v1, "istream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 460
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    if-eqz v1, :cond_0

    .line 471
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 476
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, p2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 477
    :cond_1
    :goto_1
    return-void

    .line 462
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Could not read configuration file from URL ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 465
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Ignoring configuration file ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    if-eqz v1, :cond_1

    .line 471
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 472
    :catch_1
    move-exception v3

    goto :goto_1

    .line 469
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 471
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 473
    :cond_2
    :goto_2
    throw v3

    .line 472
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public doConfigure(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 5
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 413
    const-string v3, "log4j.debug"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 415
    const-string v3, "log4j.configDebug"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    if-eqz v2, :cond_0

    .line 417
    const-string v3, "[log4j.configDebug] is deprecated. Use [log4j.debug] instead."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 420
    :cond_0
    if-eqz v2, :cond_1

    .line 421
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 427
    :cond_1
    const-string v3, "log4j.reset"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "reset":Ljava/lang/String;
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 429
    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 432
    :cond_2
    const-string v3, "log4j.threshold"

    invoke-static {v3, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "thresholdStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 435
    sget-object v3, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-static {v1, v3}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 437
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Hierarchy threshold set to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/log4j/spi/LoggerRepository;->getThreshold()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 440
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/PropertyConfigurator;->configureRootCategory(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 441
    invoke-virtual {p0, p1}, Lorg/apache/log4j/PropertyConfigurator;->configureLoggerFactory(Ljava/util/Properties;)V

    .line 442
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/PropertyConfigurator;->parseCatsAndRenderers(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 444
    const-string v3, "Finished configuring."

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 447
    iget-object v3, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 448
    return-void
.end method

.method parseAdditivityForLogger(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;)V
    .locals 4
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "cat"    # Lorg/apache/log4j/Logger;
    .param p3, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 587
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "log4j.additivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "value":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Handling log4j.additivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 591
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 592
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 593
    .local v0, "additivity":Z
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Setting additivity for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 597
    .end local v0    # "additivity":Z
    :cond_0
    return-void
.end method

.method parseAppender(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 9
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v8, "."

    const-string v7, "\"."

    .line 655
    invoke-virtual {p0, p2}, Lorg/apache/log4j/PropertyConfigurator;->registryGet(Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 656
    .local v0, "appender":Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_0

    .line 657
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Appender \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" was already parsed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    move-object v4, v0

    .line 693
    :goto_0
    return-object v4

    .line 661
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "log4j.appender."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "prefix":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ".layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    .local v2, "layoutPrefix":Ljava/lang/String;
    sget-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "org.apache.log4j.Appender"

    invoke-static {v4}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    :goto_1
    invoke-static {p1, v3, v4, v6}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    check-cast v0, Lorg/apache/log4j/Appender;

    .line 667
    .restart local v0    # "appender":Lorg/apache/log4j/Appender;
    if-nez v0, :cond_2

    .line 668
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not instantiate appender named \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    move-object v4, v6

    .line 670
    goto :goto_0

    .line 664
    :cond_1
    sget-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Appender:Ljava/lang/Class;

    goto :goto_1

    .line 672
    :cond_2
    invoke-interface {v0, p2}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 674
    instance-of v4, v0, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v4, :cond_4

    .line 675
    invoke-interface {v0}, Lorg/apache/log4j/Appender;->requiresLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 676
    sget-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    if-nez v4, :cond_5

    const-string v4, "org.apache.log4j.Layout"

    invoke-static {v4}, Lorg/apache/log4j/PropertyConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    :goto_2
    invoke-static {p1, v2, v4, v6}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Layout;

    .line 680
    .local v1, "layout":Lorg/apache/log4j/Layout;
    if-eqz v1, :cond_3

    .line 681
    invoke-interface {v0, v1}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 682
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing layout options for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 684
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 685
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "End of parsing for \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 689
    .end local v1    # "layout":Lorg/apache/log4j/Layout;
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lorg/apache/log4j/config/PropertySetter;->setProperties(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    .line 690
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsed \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\" options."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 692
    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/log4j/PropertyConfigurator;->registryPut(Lorg/apache/log4j/Appender;)V

    move-object v4, v0

    .line 693
    goto/16 :goto_0

    .line 676
    :cond_5
    sget-object v4, Lorg/apache/log4j/PropertyConfigurator;->class$org$apache$log4j$Layout:Ljava/lang/Class;

    goto/16 :goto_2
.end method

.method parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "optionKey"    # Ljava/lang/String;
    .param p4, "loggerName"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    const-string v7, "]."

    const-string v6, ","

    .line 605
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing for ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] with value=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 607
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .local v3, "st":Ljava/util/StringTokenizer;
    const-string v4, ","

    invoke-virtual {p5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ""

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 615
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_1

    .line 652
    :cond_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 619
    .local v2, "levelStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Level token is ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 624
    const-string v4, "inherited"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 626
    :cond_2
    const-string v4, "root"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 627
    const-string v4, "The root logger cannot be set to null."

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 634
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 638
    .end local v2    # "levelStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 642
    :cond_4
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 643
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "appenderName":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v4, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 646
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Parsing appender named \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 647
    invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/PropertyConfigurator;->parseAppender(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 648
    .local v0, "appender":Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_4

    .line 649
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 629
    .end local v0    # "appender":Lorg/apache/log4j/Appender;
    .end local v1    # "appenderName":Ljava/lang/String;
    .restart local v2    # "levelStr":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 632
    :cond_6
    sget-object v4, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v2, v4}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0
.end method

.method protected parseCatsAndRenderers(Ljava/util/Properties;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 13
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    const-string v12, "log4j.renderer."

    const-string v11, "log4j.logger."

    const-string v10, "log4j.category."

    .line 555
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v7

    .line 556
    .local v7, "enumeration":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 557
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 558
    .local v4, "key":Ljava/lang/String;
    const-string v1, "log4j.category."

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "log4j.logger."

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 559
    :cond_1
    const/4 v5, 0x0

    .line 560
    .local v5, "loggerName":Ljava/lang/String;
    const-string v1, "log4j.category."

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 561
    const-string v1, "log4j.category."

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 565
    :cond_2
    :goto_1
    invoke-static {v4, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v6

    .line 566
    .local v6, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/PropertyConfigurator;->loggerFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {p2, v5, v1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v3

    .line 567
    .local v3, "logger":Lorg/apache/log4j/Logger;
    monitor-enter v3

    move-object v1, p0

    move-object v2, p1

    .line 568
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lorg/apache/log4j/PropertyConfigurator;->parseCategory(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0, p1, v3, v5}, Lorg/apache/log4j/PropertyConfigurator;->parseAdditivityForLogger(Ljava/util/Properties;Lorg/apache/log4j/Logger;Ljava/lang/String;)V

    .line 570
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 562
    .end local v3    # "logger":Lorg/apache/log4j/Logger;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    const-string v1, "log4j.logger."

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    const-string v1, "log4j.logger."

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 571
    .end local v5    # "loggerName":Ljava/lang/String;
    :cond_4
    const-string v1, "log4j.renderer."

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "log4j.renderer."

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "renderedClass":Ljava/lang/String;
    invoke-static {v4, p1}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v9

    .line 574
    .local v9, "renderingClass":Ljava/lang/String;
    instance-of v1, p2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v1, :cond_0

    .line 575
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/spi/RendererSupport;

    move-object v1, v0

    invoke-static {v1, v8, v9}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "renderedClass":Ljava/lang/String;
    .end local v9    # "renderingClass":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method registryGet(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 702
    iget-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/log4j/PropertyConfigurator;
    check-cast p0, Lorg/apache/log4j/Appender;

    return-object p0
.end method

.method registryPut(Lorg/apache/log4j/Appender;)V
    .locals 2
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/log4j/PropertyConfigurator;->registry:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    return-void
.end method
