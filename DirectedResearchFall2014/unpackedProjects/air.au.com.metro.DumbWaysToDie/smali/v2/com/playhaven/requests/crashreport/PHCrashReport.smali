.class public Lv2/com/playhaven/requests/crashreport/PHCrashReport;
.super Lv2/com/playhaven/requests/base/PHAPIRequest;
.source "PHCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;
    }
.end annotation


# instance fields
.field private final CRASH_REPORT_TEMPLATE:Ljava/lang/String;

.field private final DATE_FORMAT:Ljava/lang/String;

.field private final POST_PAYLOAD_NAME:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private level:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field private reportTime:Ljava/util/Date;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lv2/com/playhaven/requests/base/PHAPIRequest;-><init>()V

    .line 42
    sget-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->level:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 44
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportTime:Ljava/util/Date;

    .line 51
    const-string v0, "MM/dd/yyyy HH:mm:ss"

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->DATE_FORMAT:Ljava/lang/String;

    .line 53
    const-string v0, "payload"

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->POST_PAYLOAD_NAME:Ljava/lang/String;

    .line 57
    const-string v0, "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s"

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->CRASH_REPORT_TEMPLATE:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportTime:Ljava/util/Date;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V
    .locals 1
    .parameter "e"
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 87
    invoke-direct {p0}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>()V

    .line 88
    iput-object p1, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V
    .locals 1
    .parameter "e"
    .parameter "level"

    .prologue
    .line 81
    invoke-direct {p0}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>()V

    .line 82
    iput-object p1, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private generateCrashReport()Ljava/lang/String;
    .locals 8

    .prologue
    .line 161
    iget-object v4, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    if-nez v4, :cond_0

    const-string v4, "(No Exception)"

    .line 176
    :goto_0
    return-object v4

    .line 164
    :cond_0
    iget-object v4, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 166
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 167
    .local v3, sWriter:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 169
    .local v2, pWriter:Ljava/io/PrintWriter;
    iget-object v4, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v4, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 172
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, df:Ljava/text/SimpleDateFormat;
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 176
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    const-string v4, "Crash Report [PHCrashReport]\nTag: %s\nPlatform: %s\nVersion: %s\nTime: %s\nSession: %s\nDevice: %s\nUrgency: %s\nMessage: %sStack Trace:\n\n%s"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 177
    iget-object v7, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    :goto_1
    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 178
    const-string v7, "android"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 179
    invoke-virtual {v0}, Lv2/com/playhaven/configuration/PHConfiguration;->getSDKVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 180
    iget-object v7, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportTime:Ljava/util/Date;

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    .line 181
    const-string v7, "(No Session)"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 182
    iget-object v7, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->level:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-virtual {v7}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    .line 183
    iget-object v7, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->exception:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    .line 184
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 176
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 177
    :cond_1
    const-string v7, "(No Tag)"

    goto :goto_1
.end method

.method public static reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;
    .locals 1
    .parameter "e"
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;
    .locals 1
    .parameter "e"
    .parameter "level"

    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public baseURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    const-string v0, "/v3/publisher/crash/"

    invoke-super {p0, p1, v0}, Lv2/com/playhaven/requests/base/PHAPIRequest;->createAPIURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams(Landroid/content/Context;)Ljava/util/Hashtable;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 120
    .local v0, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "urgency"

    iget-object v2, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->level:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-virtual {v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "tag"

    iget-object v2, p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
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
    .line 136
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 137
    .local v0, params:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "payload"

    invoke-direct {p0}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->generateCrashReport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-object v0
.end method

.method public getRequestType()Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;->Post:Lv2/com/playhaven/requests/base/PHAsyncRequest$RequestType;

    return-object v0
.end method

.method public send(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 144
    return-void
.end method
