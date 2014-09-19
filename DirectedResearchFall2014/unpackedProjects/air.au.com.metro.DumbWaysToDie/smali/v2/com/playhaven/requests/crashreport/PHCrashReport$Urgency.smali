.class public final enum Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;
.super Ljava/lang/Enum;
.source "PHCrashReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/com/playhaven/requests/crashreport/PHCrashReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Urgency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field public static final enum critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field public static final enum high:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field public static final enum low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field public static final enum medium:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

.field public static final enum none:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    const-string v1, "critical"

    invoke-direct {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;-><init>(Ljava/lang/String;I)V

    .line 35
    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 36
    new-instance v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    const-string v1, "high"

    invoke-direct {v0, v1, v3}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->high:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 37
    new-instance v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    const-string v1, "medium"

    invoke-direct {v0, v1, v4}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->medium:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 38
    new-instance v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    const-string v1, "low"

    invoke-direct {v0, v1, v5}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 39
    new-instance v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    const-string v1, "none"

    invoke-direct {v0, v1, v6}, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->none:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    aput-object v1, v0, v2

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->high:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    aput-object v1, v0, v3

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->medium:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    aput-object v1, v0, v4

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->low:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    aput-object v1, v0, v5

    sget-object v1, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->none:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    aput-object v1, v0, v6

    sput-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->ENUM$VALUES:[Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    return-object p0
.end method

.method public static values()[Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->ENUM$VALUES:[Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    array-length v1, v0

    new-array v2, v1, [Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
