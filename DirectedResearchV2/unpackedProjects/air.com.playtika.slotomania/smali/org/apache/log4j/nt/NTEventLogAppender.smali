.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NTEventLogAppender.java"


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    const-string v0, "NTEventLogAppender"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 40
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 42
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    .line 67
    if-nez p2, :cond_0

    .line 68
    const-string p2, "Log4j"

    .line 70
    :cond_0
    if-nez p3, :cond_1

    .line 71
    new-instance v1, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {v1}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    .line 77
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    return-void

    .line 73
    :cond_1
    iput-object p3, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    iput v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    .line 60
    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .locals 3

    .prologue
    .line 91
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Could not register event source."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    goto :goto_0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 104
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v5, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v5}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "s":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 110
    array-length v1, v3

    .line 111
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v3    # "s":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v2

    .line 123
    .local v2, "nt_category":I
    iget v5, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v2}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    .line 124
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    .line 131
    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 140
    return-void
.end method
