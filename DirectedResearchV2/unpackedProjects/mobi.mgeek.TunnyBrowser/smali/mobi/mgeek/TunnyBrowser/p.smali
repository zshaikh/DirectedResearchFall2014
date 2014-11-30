.class Lmobi/mgeek/TunnyBrowser/p;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lcom/dolphin/browser/core/bk;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/Browser;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/Browser;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/p;->a:Lmobi/mgeek/TunnyBrowser/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/IWebView;)V
    .locals 1

    .prologue
    .line 184
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/javascript/j;->b(Lcom/dolphin/browser/core/IWebView;)V

    .line 187
    return-void
.end method
