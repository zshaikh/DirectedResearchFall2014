.class public Lcom/dolphin/browser/share/box/s;
.super Ljava/lang/Object;
.source "WebToPdf.java"


# static fields
.field private static a:Lcom/dolphin/browser/share/box/s;


# instance fields
.field private b:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->e:Ljava/io/File;

    const-string v2, "pdf_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/box/s;->b:Ljava/io/File;

    .line 48
    return-void
.end method

.method public static a()Lcom/dolphin/browser/share/box/s;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/dolphin/browser/share/box/s;->a:Lcom/dolphin/browser/share/box/s;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dolphin/browser/share/box/s;

    invoke-direct {v0}, Lcom/dolphin/browser/share/box/s;-><init>()V

    sput-object v0, Lcom/dolphin/browser/share/box/s;->a:Lcom/dolphin/browser/share/box/s;

    .line 43
    :cond_0
    sget-object v0, Lcom/dolphin/browser/share/box/s;->a:Lcom/dolphin/browser/share/box/s;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/box/s;)Ljava/io/File;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dolphin/browser/share/box/s;->b:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/dolphin/browser/share/box/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/share/box/u;-><init>(Lcom/dolphin/browser/share/box/s;Ljava/lang/String;Lcom/dolphin/browser/share/box/t;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/box/u;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 52
    return-void
.end method
