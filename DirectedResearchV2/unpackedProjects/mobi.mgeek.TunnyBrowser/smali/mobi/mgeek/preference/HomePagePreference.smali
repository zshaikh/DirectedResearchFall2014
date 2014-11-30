.class public Lmobi/mgeek/preference/HomePagePreference;
.super Ldolphin/preference/ListPreference;
.source "HomePagePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 31
    invoke-super {p0, p1}, Ldolphin/preference/ListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lmobi/mgeek/preference/HomePagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/bj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, v0}, Ldolphin/preference/ListPreference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 22
    return-void
.end method
