.class public Lorg/apache/log4j/spi/ThrowableInformation;
.super Ljava/lang/Object;
.source "ThrowableInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x41e7011f7e8df0afL


# instance fields
.field private rep:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    .line 50
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 71
    iget-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 72
    iget-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lorg/apache/log4j/spi/ThrowableInformation;
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v6, p0

    .line 93
    :goto_0
    return-object v6

    .line 74
    .restart local p0    # "this":Lorg/apache/log4j/spi/ThrowableInformation;
    :cond_0
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 75
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 76
    .local v3, "pw":Ljava/io/PrintWriter;
    iget-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v6, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 77
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 78
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v4, "reader":Ljava/io/LineNumberReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "lines":Ljava/util/ArrayList;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    .line 87
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 88
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    .line 91
    iget-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    iget-object v6, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    goto :goto_0
.end method
