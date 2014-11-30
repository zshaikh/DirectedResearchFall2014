.class Ldolphin/preference/af;
.super Ljava/lang/Object;
.source "PrivateBrowsingTogglePreference.java"

# interfaces
.implements Lcom/mgeek/android/util/s;


# instance fields
.field final synthetic a:Ldolphin/preference/PrivateBrowsingTogglePreference;


# direct methods
.method constructor <init>(Ldolphin/preference/PrivateBrowsingTogglePreference;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Ldolphin/preference/af;->a:Ldolphin/preference/PrivateBrowsingTogglePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/preference/af;->a:Ldolphin/preference/PrivateBrowsingTogglePreference;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ldolphin/preference/PrivateBrowsingTogglePreference;->a(Z)V

    .line 31
    return-void
.end method
