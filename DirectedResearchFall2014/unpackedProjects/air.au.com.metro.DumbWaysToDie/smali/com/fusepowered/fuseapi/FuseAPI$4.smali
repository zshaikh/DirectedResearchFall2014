.class final Lcom/fusepowered/fuseapi/FuseAPI$4;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->checkAdAvailable(Lcom/fusepowered/util/FuseAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mopubAdCheck:Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

.field final synthetic val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1710
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$mopubAdCheck:Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

    iput-object p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1715
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$mopubAdCheck:Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

    iget-boolean v0, v0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    if-nez v0, :cond_0

    .line 1716
    const-string v0, "AD"

    const-string v1, "Mopub ad did not finish loading before timing out"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$mopubAdCheck:Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fusepowered/fuseapi/FuseAPI$MopubCheckAdCallback;->didReturn:Z

    .line 1722
    const-string v0, "ADCHECK"

    const-string v1, "Mopub ad is NOT available after a timeout"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    sput-boolean v2, Lcom/fusepowered/fuseapi/FuseAPI;->checkingAd:Z

    .line 1724
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$4;->val$newAdCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-virtual {v0, v2, v2}, Lcom/fusepowered/util/FuseAdCallback;->adAvailabilityResponse(II)V

    .line 1726
    :cond_0
    return-void
.end method
