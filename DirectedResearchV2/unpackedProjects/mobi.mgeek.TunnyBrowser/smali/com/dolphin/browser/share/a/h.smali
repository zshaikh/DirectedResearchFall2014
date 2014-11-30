.class public Lcom/dolphin/browser/share/a/h;
.super Ljava/lang/Object;
.source "EvernotePageFormatter.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/share/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Clipper.js"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 71
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/a/h;->a:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/a/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/a/h;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/share/a/h;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/dolphin/browser/share/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 79
    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/core/ITab;->loadUrl(Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/dolphin/browser/share/a/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/share/a/i;-><init>(Lcom/dolphin/browser/share/a/h;Landroid/content/Context;I)V

    .line 65
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 66
    return-void
.end method
