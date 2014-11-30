.class public Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;
.super Lcom/facebook/orca/activity/OrcaPreferenceActivity;
.source "OrcaInternalPreferenceActivity.java"


# instance fields
.field private b:Lcom/facebook/orca/common/ui/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->setContentView(I)V

    .line 24
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaPreferenceActivity;->b(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    .line 32
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->addPreferencesFromResource(I)V

    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaInternalPreferenceActivity;->b:Lcom/facebook/orca/common/ui/titlebar/TitleBar;

    const-string v1, "Internal"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 36
    return-void
.end method
