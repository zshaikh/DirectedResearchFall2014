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
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "level"    # Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;-><init>(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)V

    .line 21
    return-void
.end method

.method public static reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public static reportCrash(Ljava/lang/Exception;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "level"    # Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .prologue
    .line 38
    const/4 v0, 0x0

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
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 44
    return-void
.end method
