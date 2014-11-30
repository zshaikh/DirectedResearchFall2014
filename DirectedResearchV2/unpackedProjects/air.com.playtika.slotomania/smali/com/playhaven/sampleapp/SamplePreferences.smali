.class public Lcom/playhaven/sampleapp/SamplePreferences;
.super Landroid/preference/PreferenceActivity;
.source "SamplePreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/playhaven/sampleapp/SamplePreferences;->addPreferencesFromResource(I)V

    .line 16
    return-void
.end method
