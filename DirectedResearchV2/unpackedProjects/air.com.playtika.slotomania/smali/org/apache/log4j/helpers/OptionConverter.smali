.class public Lorg/apache/log4j/helpers/OptionConverter;
.super Ljava/lang/Object;
.source "OptionConverter.java"


# static fields
.field static DELIM_START:Ljava/lang/String;

.field static DELIM_START_LEN:I

.field static DELIM_STOP:C

.field static DELIM_STOP_LEN:I

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class;

.field static class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "${"

    sput-object v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START:Ljava/lang/String;

    .line 41
    const/16 v0, 0x7d

    sput-char v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP:C

    .line 42
    const/4 v0, 0x2

    sput v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START_LEN:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP_LEN:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 217
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

.method public static concatanateArrays([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "l"    # [Ljava/lang/String;
    .param p1, "r"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 51
    array-length v2, p0

    array-length v3, p1

    add-int v1, v2, v3

    .line 52
    .local v1, "len":I
    new-array v0, v1, [Ljava/lang/String;

    .line 54
    .local v0, "a":[Ljava/lang/String;
    array-length v2, p0

    invoke-static {p0, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-object v0
.end method

.method public static convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x5c

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 65
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 67
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 68
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_8

    .line 69
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    .local v0, "c":C
    if-ne v0, v6, :cond_0

    .line 71
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 72
    const/16 v5, 0x6e

    if-ne v0, v5, :cond_1

    const/16 v0, 0xa

    move v1, v2

    .line 81
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_0
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 73
    :cond_1
    const/16 v5, 0x72

    if-ne v0, v5, :cond_2

    const/16 v0, 0xd

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 74
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_2
    const/16 v5, 0x74

    if-ne v0, v5, :cond_3

    const/16 v0, 0x9

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 75
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_3
    const/16 v5, 0x66

    if-ne v0, v5, :cond_4

    const/16 v0, 0xc

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 76
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_4
    const/16 v5, 0x8

    if-ne v0, v5, :cond_5

    const/16 v0, 0x8

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 77
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_5
    const/16 v5, 0x22

    if-ne v0, v5, :cond_6

    const/16 v0, 0x22

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 78
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    const/16 v5, 0x27

    if-ne v0, v5, :cond_7

    const/16 v0, 0x27

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 79
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    if-ne v0, v6, :cond_9

    const/16 v0, 0x5c

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 83
    .end local v0    # "c":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v0    # "c":C
    :cond_9
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method

.method public static findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 292
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 294
    const/4 v2, 0x0

    .line 300
    :goto_0
    return-object v2

    .line 297
    :cond_0
    :try_start_0
    invoke-static {v1, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bad option value ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    .line 300
    goto :goto_0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Was not allowed to read system property \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    move-object v1, p1

    .line 104
    goto :goto_0
.end method

.method public static instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "superClass"    # Ljava/lang/Class;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    const-string v4, "]."

    .line 318
    if-eqz p0, :cond_1

    .line 320
    :try_start_0
    invoke-static {p0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 321
    .local v0, "classObj":Ljava/lang/Class;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "A \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" object is not assignable to a \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" variable."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "The class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" was loaded by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] whereas object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" was loaded by ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    move-object v2, p2

    .line 335
    .end local v0    # "classObj":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 330
    .restart local v0    # "classObj":Ljava/lang/Class;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 331
    .end local v0    # "classObj":Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 332
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate class ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v2, p2

    .line 335
    goto :goto_0
.end method

.method public static instantiateByKey(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "superClass"    # Ljava/lang/Class;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/OptionConverter;->findAndSubst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find value for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    move-object v1, p3

    .line 121
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static selectAndConfigure(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "hierarchy"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "configurator":Lorg/apache/log4j/spi/Configurator;
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "filename":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    const-string p1, "org.apache.log4j.xml.DOMConfigurator"

    .line 458
    :cond_0
    if-eqz p1, :cond_2

    .line 459
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Preferred configurator class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 460
    sget-object v2, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.apache.log4j.spi.Configurator"

    invoke-static {v2}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "configurator":Lorg/apache/log4j/spi/Configurator;
    check-cast v0, Lorg/apache/log4j/spi/Configurator;

    .line 463
    .restart local v0    # "configurator":Lorg/apache/log4j/spi/Configurator;
    if-nez v0, :cond_3

    .line 464
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not instantiate configurator ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 472
    :goto_1
    return-void

    .line 460
    :cond_1
    sget-object v2, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$spi$Configurator:Ljava/lang/Class;

    goto :goto_0

    .line 468
    :cond_2
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    .end local v0    # "configurator":Lorg/apache/log4j/spi/Configurator;
    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    .line 471
    .restart local v0    # "configurator":Lorg/apache/log4j/spi/Configurator;
    :cond_3
    invoke-interface {v0, p0, p2}, Lorg/apache/log4j/spi/Configurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    goto :goto_1
.end method

.method public static substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 10
    .param p0, "val"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 379
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v6, "sbuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 385
    .local v0, "i":I
    :goto_0
    sget-object v7, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START:Ljava/lang/String;

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, "j":I
    if-ne v1, v8, :cond_1

    .line 388
    if-nez v0, :cond_0

    move-object v7, p0

    .line 392
    :goto_1
    return-object v7

    .line 391
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 395
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    sget-char v7, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP:C

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 397
    .local v2, "k":I
    if-ne v2, v8, :cond_2

    .line 398
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v9, 0x22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\" has no closing brace. Opening brace at position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 402
    :cond_2
    sget v7, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_START_LEN:I

    add-int/2addr v1, v7

    .line 403
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "key":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v3, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, "replacement":Ljava/lang/String;
    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 408
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 411
    :cond_3
    if-eqz v5, :cond_4

    .line 417
    invoke-static {v5, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "recursiveReplacement":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    .end local v4    # "recursiveReplacement":Ljava/lang/String;
    :cond_4
    sget v7, Lorg/apache/log4j/helpers/OptionConverter;->DELIM_STOP_LEN:I

    add-int v0, v2, v7

    .line 421
    goto :goto_0
.end method

.method public static toBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # Z

    .prologue
    .line 135
    if-nez p0, :cond_0

    move v1, p1

    .line 142
    :goto_0
    return v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "trimmedVal":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    const/4 v1, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, p1

    .line 142
    goto :goto_0
.end method

.method public static toFileSize(Ljava/lang/String;J)J
    .locals 9
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v8, "["

    .line 252
    if-nez p0, :cond_0

    move-wide v5, p1

    .line 280
    :goto_0
    return-wide v5

    .line 255
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "s":Ljava/lang/String;
    const-wide/16 v2, 0x1

    .line 259
    .local v2, "multiplier":J
    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, "index":I
    if-eq v1, v6, :cond_2

    .line 260
    const-wide/16 v2, 0x400

    .line 261
    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 271
    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    .line 273
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    mul-long/2addr v5, v2

    goto :goto_0

    .line 263
    :cond_2
    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_3

    .line 264
    const-wide/32 v2, 0x100000

    .line 265
    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 267
    :cond_3
    const-string v5, "GB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_1

    .line 268
    const-wide/32 v2, 0x40000000

    .line 269
    invoke-virtual {v4, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 275
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] is not in proper int form."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 277
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "] not in expected format."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    move-wide v5, p1

    .line 280
    goto :goto_0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "dEfault"    # I

    .prologue
    .line 148
    if-eqz p0, :cond_0

    .line 149
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 158
    .end local v1    # "s":Ljava/lang/String;
    :goto_0
    return v2

    .line 153
    .restart local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not in proper int form."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    move v2, p1

    .line 158
    goto :goto_0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Lorg/apache/log4j/Level;

    .prologue
    .line 184
    if-nez p0, :cond_0

    move-object p0, p1

    .line 246
    .end local p0    # "value":Ljava/lang/String;
    .end local p1    # "defaultValue":Lorg/apache/log4j/Level;
    :goto_0
    return-object p0

    .line 187
    .restart local p0    # "value":Ljava/lang/String;
    .restart local p1    # "defaultValue":Lorg/apache/log4j/Level;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 189
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 190
    .local v1, "hashIndex":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 191
    const-string v0, "NULL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const/4 p0, 0x0

    goto :goto_0

    .line 195
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_2
    move-object v3, p1

    .line 201
    .local v3, "result":Lorg/apache/log4j/Level;
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "clazz":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "levelName":Ljava/lang/String;
    const-string p0, "NULL"

    .end local p0    # "value":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 206
    const/4 p0, 0x0

    goto :goto_0

    .line 209
    :cond_3
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "toLevel:class=["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, ":pri=["

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 213
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 217
    .local p0, "customLevel":Ljava/lang/Class;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_4

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v5, :cond_5

    const-string v5, "org.apache.log4j.Level"

    invoke-static {v5}, Lorg/apache/log4j/helpers/OptionConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_2
    aput-object v5, v2, v4

    .line 220
    .local v2, "paramTypes":[Ljava/lang/Class;
    const-string v4, "toLevel"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 224
    .local v2, "toLevelMethod":Ljava/lang/reflect/Method;
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .end local p0    # "customLevel":Ljava/lang/Class;
    const/4 v4, 0x0

    aput-object v1, p0, v4

    const/4 v4, 0x1

    aput-object p1, p0, v4

    .line 225
    .local p0, "params":[Ljava/lang/Object;
    const/4 p1, 0x0

    invoke-virtual {v2, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .end local p1    # "defaultValue":Lorg/apache/log4j/Level;
    move-result-object p0

    .line 227
    .local p0, "o":Ljava/lang/Object;
    check-cast p0, Lorg/apache/log4j/Level;

    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 217
    .end local v2    # "toLevelMethod":Ljava/lang/reflect/Method;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "customLevel":Ljava/lang/Class;
    .restart local p1    # "defaultValue":Lorg/apache/log4j/Level;
    :cond_4
    sget-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_5
    sget-object v5, Lorg/apache/log4j/helpers/OptionConverter;->class$org$apache$log4j$Level:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_2

    .line 228
    .end local p0    # "customLevel":Ljava/lang/Class;
    .end local p1    # "defaultValue":Lorg/apache/log4j/Level;
    :catch_0
    move-exception p0

    .line 229
    .local p0, "e":Ljava/lang/ClassNotFoundException;
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0    # "e":Ljava/lang/ClassNotFoundException;
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "custom level class ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, "] not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    move-object p0, v3

    .line 245
    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 230
    .end local p0    # "result":Lorg/apache/log4j/Level;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    :catch_1
    move-exception p0

    .line 231
    .local p0, "e":Ljava/lang/NoSuchMethodException;
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "custom level class ["

    .end local v1    # "levelName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "]"

    .end local v0    # "clazz":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " does not have a class function toLevel(String, Level)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .line 245
    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 233
    .end local p0    # "result":Lorg/apache/log4j/Level;
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "levelName":Ljava/lang/String;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    :catch_2
    move-exception p0

    .line 234
    .local p0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "custom level class ["

    .end local v1    # "levelName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "]"

    .end local v0    # "clazz":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, " could not be instantiated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .line 245
    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 236
    .end local p0    # "result":Lorg/apache/log4j/Level;
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "levelName":Ljava/lang/String;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    :catch_3
    move-exception p0

    .line 237
    .local p0, "e":Ljava/lang/ClassCastException;
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "class ["

    .end local v1    # "levelName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "] is not a subclass of org.apache.log4j.Level"

    .end local v0    # "clazz":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .line 245
    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 239
    .end local p0    # "result":Lorg/apache/log4j/Level;
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "levelName":Ljava/lang/String;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    :catch_4
    move-exception p0

    .line 240
    .local p0, "e":Ljava/lang/IllegalAccessException;
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "class ["

    .end local v1    # "levelName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "] cannot be instantiated due to access restrictions"

    .end local v0    # "clazz":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .line 245
    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0

    .line 242
    .end local p0    # "result":Lorg/apache/log4j/Level;
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "levelName":Ljava/lang/String;
    .restart local v3    # "result":Lorg/apache/log4j/Level;
    :catch_5
    move-exception p0

    .line 243
    .local p0, "e":Ljava/lang/Exception;
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "class ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "], level ["

    .end local v0    # "clazz":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "] conversion failed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v3

    .end local v3    # "result":Lorg/apache/log4j/Level;
    .local p0, "result":Lorg/apache/log4j/Level;
    goto/16 :goto_0
.end method
