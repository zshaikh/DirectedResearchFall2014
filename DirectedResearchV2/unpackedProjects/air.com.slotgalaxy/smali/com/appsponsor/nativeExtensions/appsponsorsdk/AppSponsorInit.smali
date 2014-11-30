.class public Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorInit;
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

    sget-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/ResourceFinder;->context:Landroid/content/Context;

    :cond_0
    :try_start_0
    check-cast p1, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;->createInterstitial(Ljava/lang/String;)Lcom/appsponsor/appsponsorsdk/PopupAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AppSponsor"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
