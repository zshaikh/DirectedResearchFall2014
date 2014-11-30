.class Lmobi/mgeek/TunnyBrowser/cq;
.super Ljava/lang/Object;
.source "ClearDataGroupPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/IWebView;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/cn;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cn;Lcom/dolphin/browser/core/IWebView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cq;->b:Lmobi/mgeek/TunnyBrowser/cn;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/cq;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/cq;->a:Lcom/dolphin/browser/core/IWebView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IWebView;->destroy()V

    .line 155
    return-void
.end method
