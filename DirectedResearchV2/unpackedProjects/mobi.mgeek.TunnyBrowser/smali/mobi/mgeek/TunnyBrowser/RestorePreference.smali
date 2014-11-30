.class public Lmobi/mgeek/TunnyBrowser/RestorePreference;
.super Ldolphin/preference/DialogPreference;
.source "RestorePreference.java"


# instance fields
.field private a:Lmobi/mgeek/TunnyBrowser/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ldolphin/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmobi/mgeek/TunnyBrowser/i;->a(Landroid/content/Context;I)Lmobi/mgeek/TunnyBrowser/i;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/RestorePreference;->a:Lmobi/mgeek/TunnyBrowser/i;

    .line 21
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Ldolphin/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 41
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/RestorePreference;->a:Lmobi/mgeek/TunnyBrowser/i;

    invoke-virtual {v0, p1, p2}, Lmobi/mgeek/TunnyBrowser/i;->onClick(Landroid/content/DialogInterface;I)Z

    .line 42
    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 33
    const-string v0, "settings_new"

    const-string v1, "personal_data"

    const-string v2, "restore"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/RestorePreference;->a:Lmobi/mgeek/TunnyBrowser/i;

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/i;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Ldolphin/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 26
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 27
    check-cast p1, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->c(Z)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 29
    :cond_0
    return-void
.end method
