.class Lmobi/mgeek/TunnyBrowser/it;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Lcom/dolphin/browser/core/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/core/ValueCallback",
        "<",
        "Ljava/util/Map;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/it;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 5

    .prologue
    .line 213
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 214
    if-eqz p1, :cond_0

    .line 215
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 216
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/it;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4}, Lmobi/mgeek/TunnyBrowser/is;->a(Lmobi/mgeek/TunnyBrowser/is;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/it;->a:Lmobi/mgeek/TunnyBrowser/is;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/is;->a(Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/it;->a(Ljava/util/Map;)V

    return-void
.end method
