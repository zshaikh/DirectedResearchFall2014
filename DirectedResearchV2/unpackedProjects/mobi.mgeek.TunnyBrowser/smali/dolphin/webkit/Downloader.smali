.class public final Ldolphin/webkit/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation build Ldolphin/webkit/annotation/CalledByJNI;
.end annotation

.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# static fields
.field private static final INIT_DOWNLOAD_WEBFRAME:I = 0x7d0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDownloadFrame:Ldolphin/webkit/BrowserFrame;

.field private static sInstance:Ldolphin/webkit/Downloader;

.field private static sWebCoreHandler:Ldolphin/util/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Ldolphin/webkit/Downloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/Downloader;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ldolphin/webkit/Downloader;

    invoke-direct {v0}, Ldolphin/webkit/Downloader;-><init>()V

    sput-object v0, Ldolphin/webkit/Downloader;->sInstance:Ldolphin/webkit/Downloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Downloader;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ldolphin/util/j;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;

    return-object v0
.end method

.method static synthetic access$200()Ldolphin/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ldolphin/webkit/Downloader;->sDownloadFrame:Ldolphin/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$202(Ldolphin/webkit/BrowserFrame;)Ldolphin/webkit/BrowserFrame;
    .locals 0

    .prologue
    .line 18
    sput-object p0, Ldolphin/webkit/Downloader;->sDownloadFrame:Ldolphin/webkit/BrowserFrame;

    return-object p0
.end method

.method public static getInstance()Ldolphin/webkit/Downloader;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Ldolphin/webkit/Downloader;->sInstance:Ldolphin/webkit/Downloader;

    return-object v0
.end method


# virtual methods
.method public final initDownloadWebFrame()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Ldolphin/webkit/Downloader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[Downloader::initDownloadWebFrame]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ldolphin/webkit/Downloader;->initWebCoreHandler()V

    .line 76
    :cond_0
    sget-object v0, Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;

    if-eqz v0, :cond_1

    sget-object v0, Ldolphin/webkit/Downloader;->sDownloadFrame:Ldolphin/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 77
    new-instance v0, Ldolphin/webkit/bu;

    invoke-direct {v0}, Ldolphin/webkit/bu;-><init>()V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 80
    :cond_1
    return-void
.end method

.method public final initWebCoreHandler()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Ldolphin/webkit/Downloader;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[Downloader::initWebCoreHandler]"

    invoke-static {v0, v1}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ldolphin/webkit/bt;

    invoke-direct {v0, p0}, Ldolphin/webkit/bt;-><init>(Ldolphin/webkit/Downloader;)V

    sput-object v0, Ldolphin/webkit/Downloader;->sWebCoreHandler:Ldolphin/util/j;

    .line 69
    :cond_0
    return-void
.end method
