.class public Lcom/fuse/ane/AirFuseAPI/functions/CheckAdAvailableFunction;
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
    .locals 2

    new-instance v0, Lcom/fuse/ane/callback/AdCallback;

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/fuse/ane/callback/AdCallback;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/fusepowered/fuseapi/FuseAPI;->checkAdAvailable(Lcom/fusepowered/util/FuseAdCallback;)V

    const/4 v0, 0x0

    return-object v0
.end method
