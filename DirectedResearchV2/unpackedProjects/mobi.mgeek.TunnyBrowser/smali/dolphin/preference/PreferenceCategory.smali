.class public Ldolphin/preference/PreferenceCategory;
.super Ldolphin/preference/PreferenceGroup;
.source "PreferenceCategory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f01000f

    invoke-direct {p0, p1, p2, v0}, Ldolphin/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a(Ldolphin/preference/Preference;)Z
    .locals 2

    .prologue
    .line 45
    instance-of v0, p1, Ldolphin/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add a PreferenceCategory directly to a PreferenceCategory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-super {p0, p1}, Ldolphin/preference/PreferenceGroup;->a(Ldolphin/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
