.class public Lcom/fuse/ane/AirFuseAPI/functions/ShowAdFunction;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    new-instance v0, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;

    invoke-direct {v0}, Lcom/fusepowered/fuseactivities/FuseApiAdBrowser;-><init>()V

    new-instance v1, Lcom/fuse/ane/callback/AdCallback;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fuse/ane/callback/AdCallback;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/fusepowered/fuseapi/FuseAPI;->displayAd(Lcom/fusepowered/activities/FuseApiBrowser;Lcom/fusepowered/util/FuseAdCallback;)V

    const/4 v0, 0x0

    return-object v0
.end method
