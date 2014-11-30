.class Lcom/dolphin/browser/javascript/b;
.super Ljava/lang/Object;
.source "DolphinJsApiHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/javascript/DolphinJsApiHandler;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/javascript/DolphinJsApiHandler;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dolphin/browser/javascript/b;->a:Lcom/dolphin/browser/javascript/DolphinJsApiHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Landroid/content/Context;Lcom/dolphin/browser/ui/launcher/g;)V

    .line 156
    return-void
.end method
