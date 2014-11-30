.class public Ldolphin/preference/NewFeaturesPreference;
.super Ldolphin/preference/NotifyPreference;
.source "NewFeaturesPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ldolphin/preference/NotifyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1}, Ldolphin/preference/NewFeaturesPreference;->a(Z)V

    .line 21
    invoke-virtual {p0}, Ldolphin/preference/NewFeaturesPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgeek/android/util/x;->a(Landroid/content/Context;)Lcom/mgeek/android/util/x;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lcom/mgeek/android/util/x;->a(Z)V

    .line 23
    invoke-virtual {v0}, Lcom/mgeek/android/util/x;->c()V

    .line 24
    const-string v0, "update notes"

    const-string v1, "click"

    const-string v2, "settingupdatenotes"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
