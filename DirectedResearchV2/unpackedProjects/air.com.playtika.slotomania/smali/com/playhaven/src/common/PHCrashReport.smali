.class public Lcom/playhaven/src/common/PHCrashReport;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/common/PHCrashReport$Urgency;
    }
.end annotation


# instance fields
.field private final CRASH_REPORT_TEMPLATE:Ljava/lang/String;

.field private final DATE_FORMAT:Ljava/lang/String;

.field private final POST_PAYLOAD_NAME:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private level:Lcom/playhaven/src/common/PHCrashReport$Urgency;

.field private reportTime:Ljava/util/Date;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->level:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->reportTime:Ljava/util/Date;

    .line 47
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->DATE_FORMAT:Ljava/lang/String;

    .line 49
    const-string v0, "payload"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->POST_PAYLOAD_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->CRASH_REPORT_TEMPLATE:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->reportTime:Ljava/util/Date;

    .line 73
    iput-object v1, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 2
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 38
    sget-object v0, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->level:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .line 40
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->reportTime:Ljava/util/Date;

    .line 47
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->DATE_FORMAT:Ljava/lang/String;

    .line 49
    const-string v0, "payload"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->POST_PAYLOAD_NAME:Ljava/lang/String;

    .line 53
    const-string v0, "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s"

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->CRASH_REPORT_TEMPLATE:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "PHCrashReport does not accept a delegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/playhaven/src/common/PHCrashReport$Urgency;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/playhaven/src/common/PHCrashReport;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/playhaven/src/common/PHCrashReport;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private generateCrashReport()Ljava/lang/String;
    .locals 7

    .prologue
    .line 171
    iget-object v3, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    if-nez v3, :cond_0

    const-string v3, "(No Exception)"

    .line 184
    :goto_0
    return-object v3

    .line 174
    :cond_0
    iget-object v3, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 176
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 177
    .local v2, "sWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 179
    .local v1, "pWriter":Ljava/io/PrintWriter;
    iget-object v3, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v3, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 182
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v3, "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s"

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 185
    iget-object v6, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    :goto_1
    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 186
    const-string v6, "android"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 187
    sget-object v6, Lcom/playhaven/src/common/PHConfig;->sdk_version:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 188
    iget-object v6, p0, Lcom/playhaven/src/common/PHCrashReport;->reportTime:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 189
    const-string v6, "(No Session)"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 190
    sget-object v6, Lcom/playhaven/src/common/PHConfig;->device_id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    .line 191
    iget-object v6, p0, Lcom/playhaven/src/common/PHCrashReport;->level:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-virtual {v6}, Lcom/playhaven/src/common/PHCrashReport$Urgency;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    .line 192
    iget-object v6, p0, Lcom/playhaven/src/common/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 193
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 184
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 185
    :cond_1
    const-string v6, "(No Tag)"

    goto :goto_1
.end method

.method public static reportCrash(Ljava/lang/Exception;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "level"    # Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .prologue
    .line 105
    sget-boolean v0, Lcom/playhaven/src/common/PHConfig;->runningTests:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/playhaven/src/common/PHCrashReport$Urgency;

    .prologue
    .line 93
    sget-boolean v0, Lcom/playhaven/src/common/PHConfig;->runningTests:Z

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "/v3/publisher/crash/"

    invoke-super {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->createAPIURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 130
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "urgency"

    iget-object v2, p0, Lcom/playhaven/src/common/PHCrashReport;->level:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-virtual {v2}, Lcom/playhaven/src/common/PHCrashReport$Urgency;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v1, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "tag"

    iget-object v2, p0, Lcom/playhaven/src/common/PHCrashReport;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    return-object v0
.end method

.method public getPostParams()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 147
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "payload"

    invoke-direct {p0}, Lcom/playhaven/src/common/PHCrashReport;->generateCrashReport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    return-object v0
.end method

.method public getRequestType()Lcom/playhaven/src/common/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/playhaven/src/common/PHAsyncRequest$RequestType;->Post:Lcom/playhaven/src/common/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public send()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method
