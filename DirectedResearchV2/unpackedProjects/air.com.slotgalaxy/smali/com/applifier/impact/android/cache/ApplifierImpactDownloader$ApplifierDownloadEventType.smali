.class final enum Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;
.super Ljava/lang/Enum;
.source "ApplifierImpactDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applifier/impact/android/cache/ApplifierImpactDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ApplifierDownloadEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

.field public static final enum DownloadCompleted:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

.field private static final synthetic ENUM$VALUES:[Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    const-string v1, "DownloadCompleted"

    invoke-direct {v0, v1, v2}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCompleted:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    new-instance v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    const-string v1, "DownloadCancelled"

    invoke-direct {v0, v1, v3}, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCompleted:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->DownloadCancelled:Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->ENUM$VALUES:[Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    return-object p0
.end method

.method public static values()[Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;->ENUM$VALUES:[Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    array-length v1, v0

    new-array v2, v1, [Lcom/applifier/impact/android/cache/ApplifierImpactDownloader$ApplifierDownloadEventType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
