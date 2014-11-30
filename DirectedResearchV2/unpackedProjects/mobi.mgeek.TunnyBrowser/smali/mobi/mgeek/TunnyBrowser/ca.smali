.class Lmobi/mgeek/TunnyBrowser/ca;
.super Ljava/lang/Object;
.source "BrowserPreferencesPage.java"

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
.field final synthetic a:Ldolphin/preference/PreferenceScreen;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;Ldolphin/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ca;->b:Lmobi/mgeek/TunnyBrowser/BrowserPreferencesPage;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ca;->a:Ldolphin/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ca;->a:Ldolphin/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldolphin/preference/PreferenceScreen;->setEnabled(Z)V

    .line 330
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/ca;->a(Ljava/util/Set;)V

    return-void
.end method
