.class public Lorg/apache/log4j/xml/DOMConfigurator;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    }
.end annotation


# static fields
.field static final ADDITIVITY_ATTR:Ljava/lang/String; = "additivity"

.field static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final APPENDER_TAG:Ljava/lang/String; = "appender"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final CATEGORY_FACTORY_TAG:Ljava/lang/String; = "categoryFactory"

.field static final CLASS_ATTR:Ljava/lang/String; = "class"

.field static final CONFIGURATION_TAG:Ljava/lang/String; = "log4j:configuration"

.field static final CONFIG_DEBUG_ATTR:Ljava/lang/String; = "configDebug"

.field static final EMPTY_STR:Ljava/lang/String; = ""

.field static final ERROR_HANDLER_TAG:Ljava/lang/String; = "errorHandler"

.field static final FILTER_TAG:Ljava/lang/String; = "filter"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final LAYOUT_TAG:Ljava/lang/String; = "layout"

.field static final LEVEL_TAG:Ljava/lang/String; = "level"

.field static final LOGGER:Ljava/lang/String; = "logger"

.field static final LOGGER_FACTORY_TAG:Ljava/lang/String; = "loggerFactory"

.field static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final NAME_ATTR:Ljava/lang/String; = "name"

.field static final OLD_CONFIGURATION_TAG:Ljava/lang/String; = "configuration"

.field static final ONE_STRING_PARAM:[Ljava/lang/Class;

.field static final PARAM_TAG:Ljava/lang/String; = "param"

.field static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field static final REF_ATTR:Ljava/lang/String; = "ref"

.field static final RENDERED_CLASS_ATTR:Ljava/lang/String; = "renderedClass"

.field static final RENDERER_TAG:Ljava/lang/String; = "renderer"

.field static final RENDERING_CLASS_ATTR:Ljava/lang/String; = "renderingClass"

.field private static final RESET_ATTR:Ljava/lang/String; = "reset"

.field static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final ROOT_TAG:Ljava/lang/String; = "root"

.field static final THRESHOLD_ATTR:Ljava/lang/String; = "threshold"

.field static final VALUE_ATTR:Ljava/lang/String; = "value"

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$Filter:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class; = null

.field static final dbfKey:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field appenderBag:Ljava/util/Hashtable;

.field protected catFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field props:Ljava/util/Properties;

.field repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "java.lang.String"

    invoke-static {v2}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    return-void

    :cond_0
    sget-object v2, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 137
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    .line 138
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 119
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
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 813
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .locals 2
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 821
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 822
    return-void
.end method

.method public static configure(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p0, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 630
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    .line 631
    .local v0, "configurator":Lorg/apache/log4j/xml/DOMConfigurator;
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 632
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .locals 2
    .param p0, "configFilename"    # Ljava/lang/String;

    .prologue
    .line 645
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 646
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .locals 1
    .param p0, "configFilename"    # Ljava/lang/String;
    .param p1, "delay"    # J

    .prologue
    .line 662
    new-instance v0, Lorg/apache/log4j/xml/XMLWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/xml/XMLWatchdog;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "xdog":Lorg/apache/log4j/xml/XMLWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/helpers/FileWatchdog;->setDelay(J)V

    .line 664
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 665
    return-void
.end method

.method private final doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 8
    .param p1, "action"    # Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 769
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "System property is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 772
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 773
    const-string v5, "Standard DocumentBuilderFactory search succeded."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 774
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "DocumentBuilderFactory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 784
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 786
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/log4j/xml/SAXErrorHandler;

    invoke-direct {v5}, Lorg/apache/log4j/xml/SAXErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 787
    new-instance v5, Lorg/apache/log4j/xml/Log4jEntityResolver;

    invoke-direct {v5}, Lorg/apache/log4j/xml/Log4jEntityResolver;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 789
    invoke-interface {p1, v2}, Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;->parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 790
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 795
    .end local v1    # "doc":Lorg/w3c/dom/Document;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    return-void

    .line 775
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 776
    .local v4, "fce":Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v4}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 777
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "Could not instantiate a DocumentBuilderFactory."

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 778
    throw v4

    .line 791
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fce":Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 793
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseElement(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 993
    const-string v10, "class"

    invoke-interface {p0, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    .line 994
    .local v2, "clazz":Ljava/lang/String;
    invoke-static {v2, p2, v11}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 997
    .local v5, "instance":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 998
    new-instance v8, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v8, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 999
    .local v8, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1000
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 1002
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 1003
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1004
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 1005
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 1006
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 1007
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1008
    invoke-static {v3, v8, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V

    .line 1002
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1010
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_1
    invoke-static {v5, v3, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_1

    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_2
    move-object v10, v5

    .line 1016
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :goto_2
    return-object v10

    :cond_3
    move-object v10, v11

    goto :goto_2
.end method

.method private static parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "recognized":Z
    instance-of v1, p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    if-eqz v1, :cond_0

    .line 202
    check-cast p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    .end local p0    # "instance":Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Lorg/apache/log4j/xml/UnrecognizedElementHandler;->parseUnrecognizedElement(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z

    move-result v0

    .line 205
    :cond_0
    if-nez v0, :cond_1

    .line 206
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unrecognized element "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 208
    :cond_1
    return-void
.end method

.method private static quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 223
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "Error in extension content: "

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V
    .locals 3
    .param p0, "elem"    # Lorg/w3c/dom/Element;
    .param p1, "propSetter"    # Lorg/apache/log4j/config/PropertySetter;
    .param p2, "props"    # Ljava/util/Properties;

    .prologue
    .line 970
    const-string v2, "name"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "name":Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual {p1, v0, v1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public static subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 951
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 954
    :goto_0
    return-object v1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not perform variable substitution."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, p0

    .line 954
    goto :goto_0
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$3;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/InputStream;)V

    .line 717
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 718
    return-void
.end method

.method public doConfigure(Ljava/io/Reader;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$4;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/Reader;)V

    .line 738
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 739
    return-void
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 674
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$1;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/lang/String;)V

    .line 682
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 683
    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 688
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$2;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V

    .line 696
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 697
    return-void
.end method

.method public doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 801
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 802
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V

    .line 803
    return-void
.end method

.method protected doConfigure(Lorg/xml/sax/InputSource;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 2
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 750
    const-string v1, "dummy://log4j.dtd"

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 752
    :cond_0
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$5;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Lorg/xml/sax/InputSource;)V

    .line 760
    .local v0, "action":Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 761
    return-void
.end method

.method protected findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 10
    .param p1, "doc"    # Lorg/w3c/dom/Document;
    .param p2, "appenderName"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v8, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Appender;

    .line 147
    .local v1, "appender":Lorg/apache/log4j/Appender;
    if-eqz v1, :cond_0

    move-object v8, v1

    .line 173
    :goto_0
    return-object v8

    .line 154
    :cond_0
    const/4 v3, 0x0

    .line 155
    .local v3, "element":Lorg/w3c/dom/Element;
    const-string v8, "appender"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 156
    .local v4, "list":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 157
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 158
    .local v6, "node":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 159
    .local v5, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v8, "name"

    invoke-interface {v5, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 160
    .local v2, "attrNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 161
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 167
    .end local v2    # "attrNode":Lorg/w3c/dom/Node;
    .end local v5    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    :cond_1
    if-nez v3, :cond_3

    .line 168
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No appender named ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] could be found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 169
    const/4 v8, 0x0

    goto :goto_0

    .line 156
    .restart local v2    # "attrNode":Lorg/w3c/dom/Node;
    .restart local v5    # "map":Lorg/w3c/dom/NamedNodeMap;
    .restart local v6    # "node":Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "attrNode":Lorg/w3c/dom/Node;
    .end local v5    # "map":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "node":Lorg/w3c/dom/Node;
    :cond_3
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v1

    .line 172
    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v8, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v1

    .line 173
    goto :goto_0
.end method

.method protected findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 3
    .param p1, "appenderRef"    # Lorg/w3c/dom/Element;

    .prologue
    .line 182
    const-string v2, "ref"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "appenderName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 184
    .local v1, "doc":Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v2

    return-object v2
.end method

.method protected parse(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 833
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, "rootElementName":Ljava/lang/String;
    const-string v12, "log4j:configuration"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 836
    const-string v12, "configuration"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 837
    const-string v12, "The <configuration> element has been deprecated."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 839
    const-string v12, "Use the <log4j:configuration> element instead."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 847
    :cond_0
    const-string v12, "debug"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 849
    .local v5, "debugAttrib":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "debug attribute= \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 852
    const-string v12, ""

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    const-string v12, "null"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 853
    const/4 v12, 0x1

    invoke-static {v5, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 862
    :goto_0
    const-string v12, "reset"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 863
    .local v8, "resetAttrib":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "reset attribute= \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 864
    const-string v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 865
    const/4 v12, 0x0

    invoke-static {v8, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 866
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 872
    :cond_1
    const-string v12, "configDebug"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 873
    .local v2, "confDebug":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v12, "null"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 874
    const-string v12, "The \"configDebug\" attribute is deprecated."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 875
    const-string v12, "Use the \"debug\" attribute instead."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 876
    const/4 v12, 0x1

    invoke-static {v2, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 879
    :cond_2
    const-string v12, "threshold"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 880
    .local v11, "thresholdStr":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Threshold =\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\"."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 881
    const-string v12, ""

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "null"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 882
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12, v11}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Ljava/lang/String;)V

    .line 894
    :cond_3
    const/4 v10, 0x0

    .line 895
    .local v10, "tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 896
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 897
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 898
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 900
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_1
    if-ge v7, v6, :cond_9

    .line 901
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 902
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 903
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 904
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    .line 906
    const-string v12, "categoryFactory"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "loggerFactory"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 907
    :cond_4
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategoryFactory(Lorg/w3c/dom/Element;)V

    .line 900
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 841
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "confDebug":Ljava/lang/String;
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "debugAttrib":Ljava/lang/String;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v8    # "resetAttrib":Ljava/lang/String;
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v11    # "thresholdStr":Ljava/lang/String;
    :cond_6
    const-string v12, "DOM element is - not a <log4j:configuration> element."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 931
    :cond_7
    return-void

    .line 855
    .restart local v5    # "debugAttrib":Ljava/lang/String;
    :cond_8
    const-string v12, "Ignoring debug attribute."

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 912
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v2    # "confDebug":Ljava/lang/String;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v4    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    .restart local v8    # "resetAttrib":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    .restart local v11    # "thresholdStr":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    .line 913
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 914
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 915
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 916
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    .line 918
    const-string v12, "category"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    const-string v12, "logger"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 919
    :cond_a
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategory(Lorg/w3c/dom/Element;)V

    .line 912
    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 920
    :cond_c
    const-string v12, "root"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 921
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRoot(Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 922
    :cond_d
    const-string v12, "renderer"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 923
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRenderer(Lorg/w3c/dom/Element;)V

    goto :goto_3

    .line 924
    :cond_e
    const-string v12, "appender"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "categoryFactory"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "loggerFactory"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 927
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v13, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v12, v3, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_3
.end method

.method protected parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 17
    .param p1, "appenderElement"    # Lorg/w3c/dom/Element;

    .prologue
    const-string v15, "] to appender named ["

    .line 234
    const-string v15, "class"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 235
    .local v6, "className":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Class name: ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const/16 v16, 0x5d

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 237
    :try_start_0
    invoke-static {v6}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 238
    .local v9, "instance":Ljava/lang/Object;
    move-object v0, v9

    check-cast v0, Lorg/apache/log4j/Appender;

    move-object v4, v0

    .line 239
    .local v4, "appender":Lorg/apache/log4j/Appender;
    new-instance v13, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v13, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 241
    .local v13, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const-string v15, "name"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v15}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 243
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 244
    .local v5, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 246
    .local v10, "length":I
    const/4 v11, 0x0

    .local v11, "loop":I
    :goto_0
    if-ge v11, v10, :cond_7

    .line 247
    invoke-interface {v5, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 250
    .local v8, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 251
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 254
    .local v7, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "param"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 255
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 246
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 258
    .restart local v7    # "currentElement":Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "layout"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 259
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;

    move-result-object v15

    invoke-interface {v4, v15}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 290
    .end local v4    # "appender":Lorg/apache/log4j/Appender;
    .end local v5    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "currentNode":Lorg/w3c/dom/Node;
    .end local v9    # "instance":Ljava/lang/Object;
    .end local v10    # "length":I
    .end local v11    # "loop":I
    .end local v13    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :catch_0
    move-exception v15

    move-object v12, v15

    .line 291
    .local v12, "oops":Ljava/lang/Exception;
    const-string v15, "Could not create an Appender. Reported error follows."

    invoke-static {v15, v12}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    const/4 v15, 0x0

    .end local v12    # "oops":Ljava/lang/Exception;
    :goto_2
    return-object v15

    .line 262
    .restart local v4    # "appender":Lorg/apache/log4j/Appender;
    .restart local v5    # "children":Lorg/w3c/dom/NodeList;
    .restart local v7    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v8    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v9    # "instance":Ljava/lang/Object;
    .restart local v10    # "length":I
    .restart local v11    # "loop":I
    .restart local v13    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_2
    :try_start_1
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "filter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 263
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "errorHandler"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 266
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 268
    :cond_4
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string v16, "appender-ref"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 269
    const-string v15, "ref"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 270
    .local v14, "refName":Ljava/lang/String;
    instance-of v15, v4, Lorg/apache/log4j/spi/AppenderAttachable;

    if-eqz v15, :cond_5

    .line 271
    move-object v0, v4

    check-cast v0, Lorg/apache/log4j/spi/AppenderAttachable;

    move-object v3, v0

    .line 272
    .local v3, "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Attaching appender named ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "] to appender named ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-interface {v4}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "]."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v15

    invoke-interface {v3, v15}, Lorg/apache/log4j/spi/AppenderAttachable;->addAppender(Lorg/apache/log4j/Appender;)V

    goto/16 :goto_1

    .line 276
    .end local v3    # "aa":Lorg/apache/log4j/spi/AppenderAttachable;
    :cond_5
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Requesting attachment of appender named ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "] to appender named ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-interface {v4}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 281
    .end local v14    # "refName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    move-object v15, v0

    invoke-static {v9, v7, v15}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto/16 :goto_1

    .line 285
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "currentNode":Lorg/w3c/dom/Node;
    :cond_7
    invoke-virtual {v13}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v4

    .line 286
    goto/16 :goto_2
.end method

.method protected parseCategory(Lorg/w3c/dom/Element;)V
    .locals 10
    .param p1, "loggerElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 380
    const-string v7, "name"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "catName":Ljava/lang/String;
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, "className":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    const-string v7, "Retreiving an instance of org.apache.log4j.Logger."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 389
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v7, :cond_0

    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v7, v2}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v7

    move-object v1, v7

    .line 408
    .local v1, "cat":Lorg/apache/log4j/Logger;
    :goto_0
    monitor-enter v1

    .line 409
    :try_start_0
    const-string v7, "additivity"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 413
    .local v0, "additivity":Z
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Setting ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] additivity to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 415
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v1, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 416
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v0    # "additivity":Z
    .end local v1    # "cat":Lorg/apache/log4j/Logger;
    :goto_1
    return-void

    .line 389
    :cond_0
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v8, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-interface {v7, v2, v8}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 392
    :cond_1
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired logger sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 394
    :try_start_1
    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 395
    .local v4, "clazz":Ljava/lang/Class;
    const-string v7, "getLogger"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 397
    .local v5, "getInstanceMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "cat":Lorg/apache/log4j/Logger;
    goto/16 :goto_0

    .line 398
    .end local v1    # "cat":Lorg/apache/log4j/Logger;
    .end local v4    # "clazz":Ljava/lang/Class;
    .end local v5    # "getInstanceMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 399
    .local v6, "oops":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not retrieve category ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 416
    .end local v6    # "oops":Ljava/lang/Exception;
    .restart local v1    # "cat":Lorg/apache/log4j/Logger;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method protected parseCategoryFactory(Lorg/w3c/dom/Element;)V
    .locals 11
    .param p1, "factoryElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 425
    const-string v9, "class"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "className":Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 428
    const-string v9, "Category Factory tag class attribute not found."

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 429
    const-string v9, "No Category Factory configured."

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 460
    :cond_0
    return-void

    .line 432
    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Desired category factory: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 433
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v9, :cond_3

    const-string v9, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v9}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :goto_0
    const/4 v10, 0x0

    invoke-static {v2, v9, v10}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 436
    .local v5, "factory":Ljava/lang/Object;
    instance-of v9, v5, Lorg/apache/log4j/spi/LoggerFactory;

    if-eqz v9, :cond_4

    .line 437
    move-object v0, v5

    check-cast v0, Lorg/apache/log4j/spi/LoggerFactory;

    move-object v9, v0

    iput-object v9, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 441
    :goto_1
    new-instance v8, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v8, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 443
    .local v8, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    const/4 v3, 0x0

    .line 444
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 445
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 446
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 448
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_2
    if-ge v7, v6, :cond_0

    .line 449
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 450
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 451
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 452
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 453
    invoke-virtual {p0, v3, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 448
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 433
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "factory":Ljava/lang/Object;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_3
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    goto :goto_0

    .line 439
    .restart local v5    # "factory":Ljava/lang/Object;
    :cond_4
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Category Factory class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, " does not implement org.apache.log4j.LoggerFactory"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v4    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    .restart local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_5
    iget-object v9, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v5, v3, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_3
.end method

.method protected parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 16
    .param p1, "catElement"    # Lorg/w3c/dom/Element;
    .param p2, "cat"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .prologue
    .line 483
    new-instance v11, Lorg/apache/log4j/config/PropertySetter;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 487
    .local v11, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 490
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 491
    .local v6, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 493
    .local v9, "length":I
    const/4 v10, 0x0

    .local v10, "loop":I
    :goto_0
    if-ge v10, v9, :cond_6

    .line 494
    invoke-interface {v6, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 496
    .local v8, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 497
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .line 498
    .local v7, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    .line 500
    .local v13, "tagName":Ljava/lang/String;
    const-string v14, "appender-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 501
    move-object v0, v8

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 502
    .local v5, "appenderRef":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v4

    .line 503
    .local v4, "appender":Lorg/apache/log4j/Appender;
    const-string v14, "ref"

    invoke-interface {v5, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 504
    .local v12, "refName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 505
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Adding appender named ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "] to category ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "]."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 510
    :goto_1
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 493
    .end local v4    # "appender":Lorg/apache/log4j/Appender;
    .end local v5    # "appenderRef":Lorg/w3c/dom/Element;
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    .end local v12    # "refName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 508
    .restart local v4    # "appender":Lorg/apache/log4j/Appender;
    .restart local v5    # "appenderRef":Lorg/w3c/dom/Element;
    .restart local v7    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v12    # "refName":Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Appender named ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, "] not found."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 512
    .end local v4    # "appender":Lorg/apache/log4j/Appender;
    .end local v5    # "appenderRef":Lorg/w3c/dom/Element;
    .end local v12    # "refName":Ljava/lang/String;
    :cond_2
    const-string v14, "level"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 513
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 514
    :cond_3
    const-string v14, "priority"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 515
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    .line 516
    :cond_4
    const-string v14, "param"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 517
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_2

    .line 519
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    move-object v14, v0

    move-object/from16 v0, p2

    move-object v1, v7

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 523
    .end local v7    # "currentElement":Lorg/w3c/dom/Element;
    .end local v8    # "currentNode":Lorg/w3c/dom/Node;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v11}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 524
    return-void
.end method

.method protected parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 17
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 302
    const-string v14, "class"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v15, :cond_1

    const-string v15, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v15}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    sput-object v15, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_0
    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/log4j/spi/ErrorHandler;

    .line 307
    .local v6, "eh":Lorg/apache/log4j/spi/ErrorHandler;
    if-eqz v6, :cond_8

    .line 308
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->setAppender(Lorg/apache/log4j/Appender;)V

    .line 310
    new-instance v11, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v11, v6}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 311
    .local v11, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 312
    .local v3, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    .line 314
    .local v7, "length":I
    const/4 v10, 0x0

    .local v10, "loop":I
    :goto_1
    if-ge v10, v7, :cond_7

    .line 315
    invoke-interface {v3, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 316
    .local v5, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    .line 317
    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    .line 318
    .local v4, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    .line 319
    .local v13, "tagName":Ljava/lang/String;
    const-string v14, "param"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 320
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 314
    .end local v4    # "currentElement":Lorg/w3c/dom/Element;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 302
    .end local v3    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "currentNode":Lorg/w3c/dom/Node;
    .end local v6    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .end local v7    # "length":I
    .end local v10    # "loop":I
    .end local v11    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_1
    sget-object v15, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto :goto_0

    .line 321
    .restart local v3    # "children":Lorg/w3c/dom/NodeList;
    .restart local v4    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v5    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v6    # "eh":Lorg/apache/log4j/spi/ErrorHandler;
    .restart local v7    # "length":I
    .restart local v10    # "loop":I
    .restart local v11    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_2
    const-string v14, "appender-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 322
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v14

    invoke-interface {v6, v14}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_2

    .line 323
    :cond_3
    const-string v14, "logger-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 324
    const-string v14, "ref"

    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "loggerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    move-object v14, v0

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    move-object v14, v0

    invoke-interface {v14, v9}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v14

    move-object v8, v14

    .line 327
    .local v8, "logger":Lorg/apache/log4j/Logger;
    :goto_3
    invoke-interface {v6, v8}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    .line 325
    .end local v8    # "logger":Lorg/apache/log4j/Logger;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    move-object v15, v0

    invoke-interface {v14, v9, v15}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v14

    move-object v8, v14

    goto :goto_3

    .line 328
    .end local v9    # "loggerName":Ljava/lang/String;
    :cond_5
    const-string v14, "root-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    move-object v14, v0

    invoke-interface {v14}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v12

    .line 330
    .local v12, "root":Lorg/apache/log4j/Logger;
    invoke-interface {v6, v12}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    .line 332
    .end local v12    # "root":Lorg/apache/log4j/Logger;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    move-object v14, v0

    invoke-static {v6, v4, v14}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 336
    .end local v4    # "currentElement":Lorg/w3c/dom/Element;
    .end local v5    # "currentNode":Lorg/w3c/dom/Node;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v11}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 337
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 339
    .end local v3    # "children":Lorg/w3c/dom/NodeList;
    .end local v7    # "length":I
    .end local v10    # "loop":I
    .end local v11    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_8
    return-void
.end method

.method protected parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 12
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 346
    const-string v10, "class"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "clazz":Ljava/lang/String;
    sget-object v10, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v10, :cond_1

    const-string v10, "org.apache.log4j.spi.Filter"

    invoke-static {v10}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :goto_0
    const/4 v11, 0x0

    invoke-static {v2, v10, v11}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/spi/Filter;

    .line 350
    .local v5, "filter":Lorg/apache/log4j/spi/Filter;
    if-eqz v5, :cond_4

    .line 351
    new-instance v8, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v8, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 352
    .local v8, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 353
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 355
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_1
    if-ge v7, v6, :cond_3

    .line 356
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 357
    .local v4, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 358
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v3, v0

    .line 359
    .local v3, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 361
    invoke-virtual {p0, v3, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 355
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 347
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v5    # "filter":Lorg/apache/log4j/spi/Filter;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_1
    sget-object v10, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    goto :goto_0

    .line 363
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v3    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v4    # "currentNode":Lorg/w3c/dom/Node;
    .restart local v5    # "filter":Lorg/apache/log4j/spi/Filter;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    .restart local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v5, v3, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_2

    .line 367
    .end local v3    # "currentElement":Lorg/w3c/dom/Element;
    .end local v4    # "currentNode":Lorg/w3c/dom/Node;
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v8}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 368
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Adding filter of type ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] to appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-interface {p2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 370
    invoke-interface {p2, v5}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    .line 372
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v8    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_4
    return-void
.end method

.method protected parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;
    .locals 14
    .param p1, "layout_element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 531
    const-string v12, "class"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, "className":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Parsing layout of class: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 534
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 535
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/apache/log4j/Layout;

    move-object v5, v0

    .line 536
    .local v5, "layout":Lorg/apache/log4j/Layout;
    new-instance v10, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v10, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 538
    .local v10, "propSetter":Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 539
    .local v9, "params":Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 541
    .local v6, "length":I
    const/4 v7, 0x0

    .local v7, "loop":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 542
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 543
    .local v3, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 544
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 545
    .local v2, "currentElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 546
    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 547
    invoke-virtual {p0, v2, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 541
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 549
    .restart local v2    # "currentElement":Lorg/w3c/dom/Element;
    .restart local v11    # "tagName":Ljava/lang/String;
    :cond_1
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v2, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 557
    .end local v2    # "currentElement":Lorg/w3c/dom/Element;
    .end local v3    # "currentNode":Lorg/w3c/dom/Node;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "layout":Lorg/apache/log4j/Layout;
    .end local v6    # "length":I
    .end local v7    # "loop":I
    .end local v9    # "params":Lorg/w3c/dom/NodeList;
    .end local v10    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v8, v12

    .line 558
    .local v8, "oops":Ljava/lang/Exception;
    const-string v12, "Could not create the Layout. Reported error follows."

    invoke-static {v12, v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    const/4 v12, 0x0

    .end local v8    # "oops":Ljava/lang/Exception;
    :goto_2
    return-object v12

    .line 554
    .restart local v4    # "instance":Ljava/lang/Object;
    .restart local v5    # "layout":Lorg/apache/log4j/Layout;
    .restart local v6    # "length":I
    .restart local v7    # "loop":I
    .restart local v9    # "params":Lorg/w3c/dom/NodeList;
    .restart local v10    # "propSetter":Lorg/apache/log4j/config/PropertySetter;
    :cond_2
    :try_start_1
    invoke-virtual {v10}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v5

    .line 555
    goto :goto_2
.end method

.method protected parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 10
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "isRoot"    # Z

    .prologue
    const/4 v9, 0x0

    .line 579
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "catName":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 581
    const-string v0, "root"

    .line 584
    :cond_0
    const-string v7, "value"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "priStr":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Level value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 587
    const-string v7, "inherited"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 588
    :cond_1
    if-eqz p3, :cond_2

    .line 589
    const-string v7, "Root level cannot be inherited. Ignoring directive."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 613
    :goto_0
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " level set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 614
    :goto_1
    return-void

    .line 591
    :cond_2
    invoke-virtual {p2, v9}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 594
    :cond_3
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "className":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 596
    sget-object v7, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v5, v7}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 598
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired Level sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 600
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 601
    .local v2, "clazz":Ljava/lang/Class;
    const-string v7, "toLevel"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 603
    .local v6, "toLevelMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/Level;

    .line 605
    .local v4, "pri":Lorg/apache/log4j/Level;
    invoke-virtual {p2, v4}, Lorg/apache/log4j/Category;->setLevel(Lorg/apache/log4j/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "pri":Lorg/apache/log4j/Level;
    .end local v6    # "toLevelMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 607
    .local v3, "oops":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not create level ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected parseRenderer(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "element"    # Lorg/w3c/dom/Element;

    .prologue
    .line 566
    const-string v2, "renderingClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 567
    .local v1, "renderingClass":Ljava/lang/String;
    const-string v2, "renderedClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "renderedClass":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v2, v2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_0

    .line 569
    iget-object p0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .end local p0    # "this":Lorg/apache/log4j/xml/DOMConfigurator;
    check-cast p0, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method protected parseRoot(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .prologue
    .line 468
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v1}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 470
    .local v0, "root":Lorg/apache/log4j/Logger;
    monitor-enter v0

    .line 471
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    .locals 1
    .param p1, "elem"    # Lorg/w3c/dom/Element;
    .param p2, "propSetter"    # Lorg/apache/log4j/config/PropertySetter;

    .prologue
    .line 618
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, p2, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V

    .line 619
    return-void
.end method

.method protected subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 936
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
