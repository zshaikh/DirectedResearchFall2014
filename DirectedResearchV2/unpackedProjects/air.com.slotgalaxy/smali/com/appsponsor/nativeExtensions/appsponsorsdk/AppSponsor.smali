.class public Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    new-instance v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;

    invoke-direct {v0}, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
