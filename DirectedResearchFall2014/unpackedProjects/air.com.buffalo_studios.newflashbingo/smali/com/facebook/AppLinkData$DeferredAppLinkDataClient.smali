.class final Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;
.super Lcom/facebook/internal/PlatformServiceClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const v2, 0x10004

    const v3, 0x10005

    const v4, 0x1332b3a

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/PlatformServiceClient;-><init>(Landroid/content/Context;IIILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final populateRequestBundle(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
