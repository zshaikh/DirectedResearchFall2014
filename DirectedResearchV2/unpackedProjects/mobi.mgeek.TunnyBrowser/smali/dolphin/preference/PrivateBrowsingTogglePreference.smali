.class public Ldolphin/preference/PrivateBrowsingTogglePreference;
.super Ldolphin/preference/CheckBoxPreference;
.source "PrivateBrowsingTogglePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ldolphin/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Ldolphin/preference/PrivateBrowsingTogglePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ldolphin/preference/af;

    invoke-direct {v1, p0}, Ldolphin/preference/af;-><init>(Ldolphin/preference/PrivateBrowsingTogglePreference;)V

    invoke-static {v0, v1}, Lcom/mgeek/android/util/n;->a(Landroid/content/Context;Lcom/mgeek/android/util/s;)V

    .line 33
    return-void
.end method
