.class public Lcom/fusepowered/m2/m2l/AdTypeTranslator;
.super Ljava/lang/Object;
.source "AdTypeTranslator.java"


# static fields
.field public static final ADMOB_BANNER:Ljava/lang/String; = "com.fusepowered.m2.m2l.GoogleAdMobBanner"

.field public static final ADMOB_INTERSTITIAL:Ljava/lang/String; = "com.fusepowered.m2.m2l.GoogleAdMobInterstitial"

.field public static final HTML_BANNER:Ljava/lang/String; = "com.fusepowered.m2.m2l.HtmlBanner"

.field public static final HTML_INTERSTITIAL:Ljava/lang/String; = "com.fusepowered.m2.m2l.HtmlInterstitial"

.field public static final MILLENNIAL_BANNER:Ljava/lang/String; = "com.fusepowered.m2.m2l.MillennialBanner"

.field public static final MILLENNIAL_INTERSTITIAL:Ljava/lang/String; = "com.fusepowered.m2.m2l.MillennialInterstitial"

.field public static final MRAID_BANNER:Ljava/lang/String; = "com.fusepowered.m2.m2l.MraidBanner"

.field public static final MRAID_INTERSTITIAL:Ljava/lang/String; = "com.fusepowered.m2.m2l.MraidInterstitial"

.field public static final VAST_VIDEO_INTERSTITIAL:Ljava/lang/String; = "com.fusepowered.m2.m2l.VastVideoInterstitial"

.field private static customEventNameForAdType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    .line 50
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "admob_native_banner"

    const-string v2, "com.fusepowered.m2.m2l.GoogleAdMobBanner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "admob_full_interstitial"

    const-string v2, "com.fusepowered.m2.m2l.GoogleAdMobInterstitial"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "millennial_native_banner"

    const-string v2, "com.fusepowered.m2.m2l.MillennialBanner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "millennial_full_interstitial"

    const-string v2, "com.fusepowered.m2.m2l.MillennialInterstitial"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "mraid_banner"

    const-string v2, "com.fusepowered.m2.m2l.MraidBanner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "mraid_interstitial"

    const-string v2, "com.fusepowered.m2.m2l.MraidInterstitial"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "html_banner"

    const-string v2, "com.fusepowered.m2.m2l.HtmlBanner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "html_interstitial"

    const-string v2, "com.fusepowered.m2.m2l.HtmlInterstitial"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    const-string v1, "vast_interstitial"

    const-string v2, "com.fusepowered.m2.m2l.VastVideoInterstitial"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAdNetworkType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "adType"
    .parameter "fullAdType"

    .prologue
    .line 62
    const-string v1, "interstitial"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 63
    .local v0, adNetworkType:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_1
    return-object v1

    .end local v0           #adNetworkType:Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 62
    goto :goto_0

    .line 63
    .restart local v0       #adNetworkType:Ljava/lang/String;
    :cond_1
    const-string v1, "unknown"

    goto :goto_1
.end method

.method static getCustomEventNameForAdType(Lcom/fusepowered/m2/m2l/MoPubView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "moPubView"
    .parameter "adType"
    .parameter "fullAdType"

    .prologue
    const-string v4, "_interstitial"

    const-string v3, "_banner"

    .line 67
    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->isInterstitial(Lcom/fusepowered/m2/m2l/MoPubView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_interstitial"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    .line 72
    :goto_0
    return-object v0

    .line 70
    .restart local p0
    :cond_1
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_banner"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 72
    .restart local p0
    :cond_2
    const-string v0, "interstitial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_interstitial"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 74
    .restart local p0
    :cond_3
    sget-object v0, Lcom/fusepowered/m2/m2l/AdTypeTranslator;->customEventNameForAdType:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_banner"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method private static isInterstitial(Lcom/fusepowered/m2/m2l/MoPubView;)Z
    .locals 1
    .parameter "moPubView"

    .prologue
    .line 79
    instance-of v0, p0, Lcom/fusepowered/m2/m2l/MoPubInterstitial$MoPubInterstitialView;

    return v0
.end method
