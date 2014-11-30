.class public Lcom/j256/ormlite/logger/LocalLog;
.super Ljava/lang/Object;
.source "LocalLog.java"

# interfaces
.implements Lcom/j256/ormlite/logger/Log;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    }
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

.field public static final LOCAL_LOG_FILE_PROPERTY:Ljava/lang/String; = "com.j256.ormlite.logger.file"

.field public static final LOCAL_LOG_LEVEL_PROPERTY:Ljava/lang/String; = "com.j256.ormlite.logger.level"

.field public static final LOCAL_LOG_PROPERTIES_FILE:Ljava/lang/String; = "/ormliteLocalLog.properties"

.field private static final classLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateFormatThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static printStream:Ljava/io/PrintStream;


# instance fields
.field private final className:Ljava/lang/String;

.field private final level:Lcom/j256/ormlite/logger/Log$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 47
    sget-object v4, Lcom/j256/ormlite/logger/Log$Level;->DEBUG:Lcom/j256/ormlite/logger/Log$Level;

    sput-object v4, Lcom/j256/ormlite/logger/LocalLog;->DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

    .line 48
    new-instance v4, Lcom/j256/ormlite/logger/LocalLog$1;

    invoke-direct {v4}, Lcom/j256/ormlite/logger/LocalLog$1;-><init>()V

    sput-object v4, Lcom/j256/ormlite/logger/LocalLog;->dateFormatThreadLocal:Ljava/lang/ThreadLocal;

    .line 61
    const-class v4, Lcom/j256/ormlite/logger/LocalLog;

    const-string v5, "/ormliteLocalLog.properties"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 62
    .local v3, "stream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 63
    .local v1, "levels":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    if-eqz v3, :cond_0

    .line 65
    :try_start_0
    invoke-static {v3}, Lcom/j256/ormlite/logger/LocalLog;->configureClassLevels(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 71
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 77
    :cond_0
    :goto_0
    sput-object v1, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    .line 83
    const-string v4, "com.j256.ormlite.logger.file"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "logPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/j256/ormlite/logger/LocalLog;->openLogFile(Ljava/lang/String;)V

    .line 85
    return-void

    .line 66
    .end local v2    # "logPath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO exception reading the log properties file \'/ormliteLocalLog.properties\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 72
    :catch_1
    move-exception v4

    goto :goto_0

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 71
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 74
    :goto_1
    throw v4

    .line 72
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {p1}, Lcom/j256/ormlite/logger/LoggerFactory;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/j256/ormlite/logger/LocalLog;->className:Ljava/lang/String;

    .line 91
    const/4 v2, 0x0

    .line 92
    .local v2, "level":Lcom/j256/ormlite/logger/Log$Level;
    sget-object v6, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 93
    sget-object v6, Lcom/j256/ormlite/logger/LocalLog;->classLevels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    .line 94
    .local v5, "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    iget-object v6, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    if-eqz v2, :cond_1

    iget-object v6, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->level:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v6}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v6

    invoke-virtual {v2}, Lcom/j256/ormlite/logger/Log$Level;->ordinal()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 97
    :cond_1
    iget-object v2, v5, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;->level:Lcom/j256/ormlite/logger/Log$Level;

    goto :goto_0

    .line 103
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "patternLevel":Lcom/j256/ormlite/logger/LocalLog$PatternLevel;
    :cond_2
    if-nez v2, :cond_3

    .line 105
    const-string v6, "com.j256.ormlite.logger.level"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "levelName":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 107
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->DEFAULT_LEVEL:Lcom/j256/ormlite/logger/Log$Level;

    .line 118
    .end local v3    # "levelName":Ljava/lang/String;
    :cond_3
    :goto_1
    iput-object v2, p0, Lcom/j256/ormlite/logger/LocalLog;->level:Lcom/j256/ormlite/logger/Log$Level;

    .line 119
    return-void

    .line 111
    .restart local v3    # "levelName":Ljava/lang/String;
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 115
    .local v4, "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    move-object v2, v4

    goto :goto_1

    .line 112
    .end local v4    # "matchedLevel":Lcom/j256/ormlite/logger/Log$Level;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Level \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' was not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static configureClassLevels(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/logger/LocalLog$PatternLevel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 156
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 157
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/logger/LocalLog$PatternLevel;>;"
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 182
    return-object v3

    .line 164
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-eq v7, v8, :cond_0

    .line 167
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, "parts":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    .line 169
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Line is not in the format of \'pattern = level\': "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_2
    aget-object v7, v4, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 175
    .local v5, "pattern":Ljava/util/regex/Pattern;
    const/4 v7, 0x1

    :try_start_0
    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/j256/ormlite/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/j256/ormlite/logger/Log$Level;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 180
    .local v1, "level":Lcom/j256/ormlite/logger/Log$Level;
    new-instance v7, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;

    invoke-direct {v7, v5, v1}, Lcom/j256/ormlite/logger/LocalLog$PatternLevel;-><init>(Ljava/util/regex/Pattern;Lcom/j256/ormlite/logger/Log$Level;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v1    # "level":Lcom/j256/ormlite/logger/Log$Level;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Level \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' was not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static openLogFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "logPath"    # Ljava/lang/String;

    .prologue
    .line 125
    if-nez p0, :cond_0

    .line 126
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v1, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/logger/LocalLog;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 190
    .local v1, "sb":Ljava/lang/StringBuilder;
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->dateFormatThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    .line 191
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/j256/ormlite/logger/Log$Level;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v2, p0, Lcom/j256/ormlite/logger/LocalLog;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    if-eqz p3, :cond_0

    .line 197
    sget-object v2, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {p3, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method


# virtual methods
.method flush()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/j256/ormlite/logger/LocalLog;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 153
    return-void
.end method

.method public isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/j256/ormlite/logger/LocalLog;->level:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v0, p1}, Lcom/j256/ormlite/logger/Log$Level;->isEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v0

    return v0
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;)V
    .locals 1
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/logger/LocalLog;->printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public log(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # Lcom/j256/ormlite/logger/Log$Level;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/j256/ormlite/logger/LocalLog;->printMessage(Lcom/j256/ormlite/logger/Log$Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    return-void
.end method
