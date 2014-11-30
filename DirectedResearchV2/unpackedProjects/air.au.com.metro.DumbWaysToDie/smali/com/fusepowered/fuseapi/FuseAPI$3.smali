.class final Lcom/fusepowered/fuseapi/FuseAPI$3;
.super Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;
.source "FuseAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->checkAdAvailable(Lcom/fusepowered/util/FuseAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;


# direct methods
.method constructor <init>(Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 1

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$3;->val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;-><init>(Lcom/fusepowered/fuseapi/FuseAPI$1;)V

    return-void
.end method


# virtual methods
.method public checkAdAvailableReturnFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1697
    const-string v0, "ADCHECK"

    const-string v1, "Mopub ad is NOT available after going to the net"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1699
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$3;->val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, v2, v2}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    .line 1700
    return-void
.end method

.method public checkAdAvailableReturnSucess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1690
    const-string v0, "ADCHECK"

    const-string v1, "Mopub ad is available after going to the net"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1692
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$3;->val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    .line 1693
    return-void
.end method
