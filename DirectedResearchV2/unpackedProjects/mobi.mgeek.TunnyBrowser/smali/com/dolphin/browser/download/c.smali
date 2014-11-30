.class public Lcom/dolphin/browser/download/c;
.super Lcom/dolphin/browser/downloads/o;
.source "DolphinDownloadSystemFactory.java"


# static fields
.field private static a:Lcom/dolphin/browser/download/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/dolphin/browser/download/c;

    invoke-direct {v0}, Lcom/dolphin/browser/download/c;-><init>()V

    sput-object v0, Lcom/dolphin/browser/download/c;->a:Lcom/dolphin/browser/download/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/dolphin/browser/downloads/o;-><init>()V

    return-void
.end method

.method public static a()Lcom/dolphin/browser/download/c;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/dolphin/browser/download/c;->a:Lcom/dolphin/browser/download/c;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    sparse-switch p1, :sswitch_data_0

    .line 129
    :goto_0
    return-void

    .line 108
    :sswitch_0
    const-string v0, "download management"

    const-string v1, "download"

    const-string v2, "success||200"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :sswitch_1
    const-string v0, "download management"

    const-string v1, "download"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure||"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
        0x196 -> :sswitch_1
        0x19c -> :sswitch_1
        0x1eb -> :sswitch_1
        0x1ec -> :sswitch_1
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_1
        0x1f0 -> :sswitch_1
        0x1f1 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Lcom/dolphin/browser/downloads/e;)V
    .locals 4

    .prologue
    .line 98
    iget v0, p1, Lcom/dolphin/browser/downloads/e;->t:I

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    .line 99
    invoke-static {v0}, Lcom/dolphin/browser/util/de;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "download management"

    const-string v3, "size"

    invoke-static {v2, v3, v1, v0}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string v0, "Update\\w+_\\S+_\\d+.apk$"

    .line 62
    const-string v0, "Update\\w+_\\S+_\\d+.apk$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "update services"

    const-string v1, "download"

    const-string v2, "completed"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-direct {p0, p2}, Lcom/dolphin/browser/download/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v0, "unknowExtension"

    .line 80
    :cond_0
    const-string v1, "download management"

    const-string v2, "download"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 90
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 91
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    if-ne v0, v1, :cond_0

    .line 42
    const-string v0, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v0, "new_tab"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 45
    :cond_0
    return-object p2
.end method

.method public a(Landroid/content/ContentProvider;)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/AppContext;->a(Landroid/content/Context;)V

    .line 140
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public a(Lcom/dolphin/browser/downloads/n;Lcom/dolphin/browser/downloads/e;)V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/dolphin/browser/downloads/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/c;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/dolphin/browser/downloads/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/downloads/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/dolphin/browser/downloads/n;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/downloads/n;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/c;->a(ILjava/lang/String;)V

    .line 54
    invoke-direct {p0, p2}, Lcom/dolphin/browser/download/c;->a(Lcom/dolphin/browser/downloads/e;)V

    .line 56
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getDownloadAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/File;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->getDownloadDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x4

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method
