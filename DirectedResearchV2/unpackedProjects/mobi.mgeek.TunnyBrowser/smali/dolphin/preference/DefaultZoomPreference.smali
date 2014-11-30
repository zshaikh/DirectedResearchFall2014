.class public Ldolphin/preference/DefaultZoomPreference;
.super Ldolphin/preference/ListPreference;
.source "DefaultZoomPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ldolphin/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Ldolphin/preference/DefaultZoomPreference;->getSummaryValue()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
