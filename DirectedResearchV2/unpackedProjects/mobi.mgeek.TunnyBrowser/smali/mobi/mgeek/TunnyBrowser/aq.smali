.class Lmobi/mgeek/TunnyBrowser/aq;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 5306
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/aq;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/aq;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 5311
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/aq;->b:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/aq;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5306
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/aq;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
