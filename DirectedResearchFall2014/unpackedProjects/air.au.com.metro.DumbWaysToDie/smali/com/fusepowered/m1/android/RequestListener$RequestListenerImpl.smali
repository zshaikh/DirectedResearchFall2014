.class public Lcom/fusepowered/m1/android/RequestListener$RequestListenerImpl;
.super Ljava/lang/Object;
.source "RequestListener.java"

# interfaces
.implements Lcom/fusepowered/m1/android/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/RequestListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestListenerImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public MMAdOverlayClosed(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .parameter "mmAd"

    .prologue
    .line 76
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View overlay closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public MMAdOverlayLaunched(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .parameter "mmAd"

    .prologue
    .line 70
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View overlay launched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public MMAdRequestIsCaching(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .parameter "mmAd"

    .prologue
    .line 82
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Millennial Media Ad View caching request"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method public onSingleTap(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .parameter "mmAd"

    .prologue
    .line 100
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Ad tapped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public requestCompleted(Lcom/fusepowered/m1/android/MMAd;)V
    .locals 2
    .parameter "mmAd"

    .prologue
    .line 88
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Ad request succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public requestFailed(Lcom/fusepowered/m1/android/MMAd;Lcom/fusepowered/m1/android/MMException;)V
    .locals 5
    .parameter "mmAd"
    .parameter "error"

    .prologue
    .line 94
    const-string v0, "MillennialMediaSDK"

    const-string v1, "Ad request failed with error: %d %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/fusepowered/m1/android/MMException;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/fusepowered/m1/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
