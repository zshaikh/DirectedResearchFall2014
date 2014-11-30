.class public Lcom/acmeaom/android/myradar/app/ui/prefs/CompatSwitchPreference;
.super Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;
.source "ProGuard"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 25
    invoke-super {p0, p1}, Lcom/acmeaom/android/myradar/app/ui/prefs/CompatCompoundSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 27
    const v0, 0x7f080014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    const v0, 0x7f080015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void
.end method
