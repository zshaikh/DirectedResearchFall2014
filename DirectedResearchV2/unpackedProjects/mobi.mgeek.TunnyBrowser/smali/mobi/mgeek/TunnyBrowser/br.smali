.class Lmobi/mgeek/TunnyBrowser/br;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/f/e/i;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method private constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/br;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Lmobi/mgeek/TunnyBrowser/x;)V
    .locals 0

    .prologue
    .line 1146
    invoke-direct {p0, p1}, Lmobi/mgeek/TunnyBrowser/br;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1166
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/br;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->q(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 1168
    const-string v1, "fullscreen://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1169
    invoke-static {p1}, Lcom/dolphin/browser/util/URIUtil;->getOriginUrlOfFullscreen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1170
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/br;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1171
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/br;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v1, v2, v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->setFullScreen(ZZZ)V

    .line 1175
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/be;->a()V

    .line 1176
    new-instance v1, Lmobi/mgeek/TunnyBrowser/bs;

    invoke-direct {v1, p0, p1}, Lmobi/mgeek/TunnyBrowser/bs;-><init>(Lmobi/mgeek/TunnyBrowser/br;Ljava/lang/String;)V

    sget-object v2, Lcom/dolphin/browser/util/t;->c:Lcom/dolphin/browser/util/t;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;Lcom/dolphin/browser/util/t;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 1186
    invoke-static {v0, p1}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1187
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 1188
    invoke-static {p1}, Lcom/dolphin/browser/core/be;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1190
    :cond_2
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->e(Lcom/dolphin/browser/core/ITab;)V

    .line 1191
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/br;->a:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->o(Lmobi/mgeek/TunnyBrowser/BrowserActivity;)Lcom/dolphin/browser/t/l;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/dolphin/browser/t/l;->d(Lcom/dolphin/browser/core/ITab;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method
