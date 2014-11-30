.class Lmobi/mgeek/TunnyBrowser/ch;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

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
.field final synthetic a:Ldolphin/preference/PreferenceScreen;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;Ldolphin/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 1691
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ch;->b:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ch;->a:Ldolphin/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2

    .prologue
    .line 1695
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ch;->a:Ldolphin/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1698
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1691
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ch;->a(Ljava/util/Map;)V

    return-void
.end method
