.class public Lmobi/mgeek/preference/FlashPlayerPreference;
.super Ldolphin/preference/ListPreference;
.source "FlashPlayerPreference.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/FlashPlayerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmobi/mgeek/preference/FlashPlayerPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 45
    return-void
.end method
