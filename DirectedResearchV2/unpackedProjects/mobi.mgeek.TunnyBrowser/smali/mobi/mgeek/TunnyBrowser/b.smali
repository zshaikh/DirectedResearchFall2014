.class public Lmobi/mgeek/TunnyBrowser/b;
.super Ljava/lang/Object;
.source "AboutPageManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/io/File;


# instance fields
.field private c:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lmobi/mgeek/TunnyBrowser/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/b;->a:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/AppContext;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "about.html"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/b;->b:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    const-string v1, "AboutPageManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/core/AppContext;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/b;->c:Landroid/content/SharedPreferences;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/c;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/b;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/b;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a()Lmobi/mgeek/TunnyBrowser/b;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/d;->a()Lmobi/mgeek/TunnyBrowser/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/b;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmobi/mgeek/TunnyBrowser/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/io/File;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lmobi/mgeek/TunnyBrowser/b;->b:Ljava/io/File;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string v0, "http://dolphin-browser.com/help/dolphin-about.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "l"

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/bn;->b()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 53
    sget-object v0, Lmobi/mgeek/TunnyBrowser/b;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/mgeek/TunnyBrowser/b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/b;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v1

    const-string v2, "about.html"

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bn;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lmobi/mgeek/TunnyBrowser/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/mgeek/TunnyBrowser/e;-><init>(Lmobi/mgeek/TunnyBrowser/b;Lmobi/mgeek/TunnyBrowser/c;)V

    sget-object v1, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 63
    return-void
.end method
