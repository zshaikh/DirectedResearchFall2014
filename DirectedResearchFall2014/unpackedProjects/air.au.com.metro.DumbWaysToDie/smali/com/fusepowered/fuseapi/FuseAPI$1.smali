.class final Lcom/fusepowered/fuseapi/FuseAPI$1;
.super Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;
.source "FuseAPI.java"


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

.field final synthetic val$waterfall:[I


# direct methods
.method constructor <init>(Lcom/fusepowered/util/FuseAdCallback;[IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/util/FuseAdCallback;

    .prologue
    .line 1161
    iput-object p2, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$waterfall:[I

    iput p3, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$index:I

    iput-object p4, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

    iput-object p5, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$adCallback:Lcom/fusepowered/util/FuseAdCallback;

    invoke-direct {p0, p1}, Lcom/fusepowered/fuseapi/FuseAPI$MoPubCallBackInterceptor;-><init>(Lcom/fusepowered/util/FuseAdCallback;)V

    return-void
.end method


# virtual methods
.method public tryNextAdProvider()V
    .locals 4

    .prologue
    .line 1165
    const-string v0, "MOPUB FAILURE"

    const-string v1, "Can\'t Find an ad!  Trying something else in the waterfall"

    invoke-static {v0, v1}, Lcom/fusepowered/logging/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$waterfall:[I

    iget v1, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$index:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$fuseApiAdBrowser:Lcom/fusepowered/activities/FuseApiBrowser;

    iget-object v3, p0, Lcom/fusepowered/fuseapi/FuseAPI$1;->val$adCallback:Lcom/fusepowered/util/FuseAdCallback;

    # invokes: Lcom/fusepowered/fuseapi/FuseAPI;->displayAdFromWaterfall([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/fusepowered/fuseapi/FuseAPI;->access$000([IILcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    .line 1167
    return-void
.end method
