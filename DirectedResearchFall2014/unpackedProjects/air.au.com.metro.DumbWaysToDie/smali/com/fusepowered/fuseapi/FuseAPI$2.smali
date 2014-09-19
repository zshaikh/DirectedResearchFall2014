.class final Lcom/fusepowered/fuseapi/FuseAPI$2;
.super Ljava/lang/Object;
.source "FuseAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseapi/FuseAPI;->displayMoPubAd([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adCallback:Lcom/fusepowered/util/FuseAdCallback;

.field final synthetic val$fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

.field final synthetic val$index:I

.field final synthetic val$interceptor:Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;

.field final synthetic val$waterfall:[I


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;[IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$interceptor:Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;

    iput-object p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$waterfall:[I

    iput p3, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$index:I

    iput-object p4, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

    iput-object p5, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$interceptor:Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;

    invoke-virtual {v0}, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->getIsWaitingForAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const-string v0, "AD"

    const-string v1, "Mopub ad did not finish loading before timing out"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$interceptor:Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;->setIsWaitingForAd(Z)V

    .line 1200
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$waterfall:[I

    iget v1, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

    iget-object v3, p0, Lcom/fusepowered/fuseapi/FuseAPI$2;->val$adCallback:Lcom/fusepowered/util/FuseAdCallback;

    #calls: Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/fuseapi/FuseAPI;->access$000([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1202
    :cond_0
    return-void
.end method
