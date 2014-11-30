.class public Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;
.super Ljava/lang/Object;


# static fields
.field static interstitialCached:Ljava/lang/String;

.field static interstitialClicked:Ljava/lang/String;

.field static interstitialClosed:Ljava/lang/String;

.field static interstitialFailedToLoad:Ljava/lang/String;

.field static interstitialLoaded:Ljava/lang/String;

.field static interstitialWillAppear:Ljava/lang/String;

.field static interstitialWillDisappear:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "interstitialWillAppear"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialWillAppear:Ljava/lang/String;

    const-string v0, "interstitialWillDisappear"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialWillDisappear:Ljava/lang/String;

    const-string v0, "interstitialLoaded"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialLoaded:Ljava/lang/String;

    const-string v0, "interstitialFailedToLoad"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialFailedToLoad:Ljava/lang/String;

    const-string v0, "interstitialClicked"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialClicked:Ljava/lang/String;

    const-string v0, "interstitialClosed"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialClosed:Ljava/lang/String;

    const-string v0, "interstitialCached"

    sput-object v0, Lcom/appsponsor/nativeExtensions/appsponsorsdk/AppSponsorMessages;->interstitialCached:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
