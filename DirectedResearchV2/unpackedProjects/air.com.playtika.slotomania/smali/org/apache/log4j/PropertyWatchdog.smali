.class Lorg/apache/log4j/PropertyWatchdog;
.super Lorg/apache/log4j/helpers/FileWatchdog;
.source "PropertyConfigurator.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 709
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/FileWatchdog;-><init>(Ljava/lang/String;)V

    .line 710
    return-void
.end method


# virtual methods
.method public doOnChange()V
    .locals 3

    .prologue
    .line 717
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 719
    return-void
.end method
