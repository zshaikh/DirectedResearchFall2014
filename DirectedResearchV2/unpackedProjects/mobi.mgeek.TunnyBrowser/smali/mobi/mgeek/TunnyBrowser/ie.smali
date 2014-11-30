.class Lmobi/mgeek/TunnyBrowser/ie;
.super Lcom/dolphin/browser/util/f;
.source "WebViewCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/ValueCallback;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/ib;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/ib;Lcom/dolphin/browser/core/ValueCallback;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ie;->b:Lmobi/mgeek/TunnyBrowser/ib;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ie;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1421
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ie;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1421
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ie;->a([Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ie;->a:Lcom/dolphin/browser/core/ValueCallback;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/core/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1432
    return-void
.end method

.method public varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ie;->b:Lmobi/mgeek/TunnyBrowser/ib;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/ib;->c(Lmobi/mgeek/TunnyBrowser/ib;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
