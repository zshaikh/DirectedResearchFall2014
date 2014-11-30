.class Lmobi/mgeek/TunnyBrowser/iu;
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
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/iu;->b:Lmobi/mgeek/TunnyBrowser/is;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/iu;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 5

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 230
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/iu;->b:Lmobi/mgeek/TunnyBrowser/is;

    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/iu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Lmobi/mgeek/TunnyBrowser/is;->a(Lmobi/mgeek/TunnyBrowser/is;Ljava/util/Map;Ljava/lang/String;I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iu;->b:Lmobi/mgeek/TunnyBrowser/is;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iu;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/is;->b(Ljava/util/Map;)V

    .line 235
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iu;->b:Lmobi/mgeek/TunnyBrowser/is;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iu;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/is;->c(Ljava/util/Map;)V

    .line 236
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 226
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/iu;->a(Ljava/util/Set;)V

    return-void
.end method
