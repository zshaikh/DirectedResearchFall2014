.class public Lorg/apache/log4j/lf5/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFIG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final DEBUG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final ERROR:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FATAL:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINER:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINEST:Lorg/apache/log4j/lf5/LogLevel;

.field public static final INFO:Lorg/apache/log4j/lf5/LogLevel;

.field public static final SEVERE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARN:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARNING:Lorg/apache/log4j/lf5/LogLevel;

.field private static _allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _logLevelColorMap:Ljava/util/Map;

.field private static _logLevelMap:Ljava/util/Map;

.field private static _registeredLogLevelMap:Ljava/util/Map;


# instance fields
.field protected _label:Ljava/lang/String;

.field protected _precedence:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 45
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "FATAL"

    invoke-direct {v1, v2, v7}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    .line 46
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "ERROR"

    invoke-direct {v1, v2, v4}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    .line 47
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "WARN"

    invoke-direct {v1, v2, v5}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    .line 48
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "INFO"

    invoke-direct {v1, v2, v8}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    .line 49
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "DEBUG"

    invoke-direct {v1, v2, v6}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    .line 52
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "SEVERE"

    invoke-direct {v1, v2, v4}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    .line 53
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "WARNING"

    invoke-direct {v1, v2, v5}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    .line 54
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "CONFIG"

    invoke-direct {v1, v2, v6}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    .line 55
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "FINE"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    .line 56
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "FINER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    .line 57
    new-instance v1, Lorg/apache/log4j/lf5/LogLevel;

    const-string v2, "FINEST"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    .line 78
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v6

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 79
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 81
    const/16 v1, 0xb

    new-array v1, v1, [Lorg/apache/log4j/lf5/LogLevel;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v7

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v8

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v2, v1, v6

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 86
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    .line 91
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 92
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v2, v2, v0

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "precedence"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    .line 98
    iput p2, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    .line 99
    return-void
.end method

.method public static getAllDefaultLevels()Ljava/util/List;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getJdk14Levels()Ljava/util/List;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLog4JLevels()Ljava/util/List;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevelColorMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3
    .param p0, "logLevel"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    const/4 v2, 0x0

    .line 163
    if-nez p0, :cond_0

    move-object v0, v2

    .line 170
    .end local p0    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    :goto_0
    return-object v0

    .line 166
    .restart local p0    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    check-cast p0, Lorg/apache/log4j/lf5/LogLevel;

    move-object v0, p0

    goto :goto_0

    .restart local p0    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    :cond_1
    move-object v0, v2

    .line 170
    goto :goto_0
.end method

.method public static register(Ljava/util/List;)V
    .locals 2
    .param p0, "logLevels"    # Ljava/util/List;

    .prologue
    .line 182
    if-eqz p0, :cond_0

    .line 183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 184
    .end local p0    # "logLevels":Ljava/util/List;
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {p0}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    .line 188
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public static register([Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 2
    .param p0, "logLevels"    # [Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 174
    if-eqz p0, :cond_0

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 176
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static resetLogLevelColorMap()V
    .locals 4

    .prologue
    .line 225
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 228
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 229
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v2, v2, v0

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 4
    .param p0, "level"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/LogLevelFormatException;
        }
    .end annotation

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 137
    .local v1, "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    if-eqz p0, :cond_0

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 143
    .restart local v1    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    :cond_0
    if-nez v1, :cond_1

    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 144
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 147
    .restart local v1    # "logLevel":Lorg/apache/log4j/lf5/LogLevel;
    :cond_1
    if-nez v1, :cond_2

    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error while trying to parse ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ") into"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v2, " a LogLevel."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    new-instance v2, Lorg/apache/log4j/lf5/LogLevelFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/log4j/lf5/LogLevelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public encompasses(Lorg/apache/log4j/lf5/LogLevel;)Z
    .locals 2
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "equals":Z
    instance-of v1, p1, Lorg/apache/log4j/lf5/LogLevel;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v1

    check-cast p1, Lorg/apache/log4j/lf5/LogLevel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 201
    :cond_0
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrecedence()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/lf5/LogLevel;
    .param p2, "color"    # Ljava/awt/Color;

    .prologue
    .line 215
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    if-nez p2, :cond_0

    .line 218
    sget-object p2, Ljava/awt/Color;->black:Ljava/awt/Color;

    .line 220
    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method
