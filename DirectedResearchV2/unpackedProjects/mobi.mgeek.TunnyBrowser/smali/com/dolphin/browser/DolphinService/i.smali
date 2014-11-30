.class public Lcom/dolphin/browser/DolphinService/i;
.super Lcom/dolphin/browser/promoted/y;
.source "PromotedAppsServiceConfiguration.java"


# static fields
.field private static a:Lcom/dolphin/browser/DolphinService/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/promoted/y;-><init>()V

    .line 22
    return-void
.end method

.method public static a()Lcom/dolphin/browser/DolphinService/i;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dolphin/browser/DolphinService/i;->a:Lcom/dolphin/browser/DolphinService/i;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/dolphin/browser/DolphinService/i;

    invoke-direct {v0}, Lcom/dolphin/browser/DolphinService/i;-><init>()V

    sput-object v0, Lcom/dolphin/browser/DolphinService/i;->a:Lcom/dolphin/browser/DolphinService/i;

    .line 17
    :cond_0
    sget-object v0, Lcom/dolphin/browser/DolphinService/i;->a:Lcom/dolphin/browser/DolphinService/i;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
