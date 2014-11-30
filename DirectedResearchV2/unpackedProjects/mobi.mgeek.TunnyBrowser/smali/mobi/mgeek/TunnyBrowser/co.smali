.class Lmobi/mgeek/TunnyBrowser/co;
.super Ljava/lang/Object;
.source "ClearDataGroupPreference.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/core/IWebView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cn;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cn;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/co;->a:Lmobi/mgeek/TunnyBrowser/cn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/IWebView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/co;->a:Lmobi/mgeek/TunnyBrowser/cn;

    iget-object v0, v0, Lmobi/mgeek/TunnyBrowser/cn;->a:Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/ClearDataGroupPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/core/WebViewFactory;->newWebView(Landroid/content/Context;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/co;->a()Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    return-object v0
.end method
