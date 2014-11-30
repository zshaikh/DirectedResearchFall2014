.class Lcom/dolphin/browser/javascript/a;
.super Ljava/lang/Object;
.source "DolphinJsApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/javascript/DolphinJsApi;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/javascript/DolphinJsApi;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dolphin/browser/javascript/a;->a:Lcom/dolphin/browser/javascript/DolphinJsApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Landroid/content/Context;Lcom/dolphin/browser/ui/launcher/g;)V

    .line 79
    return-void
.end method
