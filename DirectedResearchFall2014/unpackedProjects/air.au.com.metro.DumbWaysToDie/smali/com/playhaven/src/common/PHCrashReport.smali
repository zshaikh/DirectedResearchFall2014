.class public Lcom/playhaven/src/common/PHCrashReport;
.super Lv2/com/playhaven/requests/crashreport/PHCrashReport;
.source "PHCrashReport.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest;


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V
    .locals 0
    .parameter "e"
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V
    .locals 0
    .parameter "e"
    .parameter "level"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V

    .line 21
    return-void
.end method

.method public static reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .parameter "e"
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .parameter "e"
    .parameter "level"

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public static bridge synthetic reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public send()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 44
    return-void
.end method
