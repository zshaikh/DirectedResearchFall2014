.class Ldolphin/preference/u;
.super Ljava/lang/Object;
.source "PreferenceDownloadPath.java"

# interfaces
.implements Lcom/dolphin/browser/download/ui/av;


# instance fields
.field final synthetic a:Ldolphin/preference/PreferenceDownloadPath;


# direct methods
.method constructor <init>(Ldolphin/preference/PreferenceDownloadPath;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Ldolphin/preference/u;->a:Ldolphin/preference/PreferenceDownloadPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->d(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Ldolphin/preference/u;->a:Ldolphin/preference/PreferenceDownloadPath;

    invoke-static {v0, p1}, Ldolphin/preference/PreferenceDownloadPath;->a(Ldolphin/preference/PreferenceDownloadPath;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Ldolphin/preference/u;->a:Ldolphin/preference/PreferenceDownloadPath;

    invoke-static {v0}, Ldolphin/preference/PreferenceDownloadPath;->a(Ldolphin/preference/PreferenceDownloadPath;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Ldolphin/preference/u;->a:Ldolphin/preference/PreferenceDownloadPath;

    invoke-static {v0}, Ldolphin/preference/PreferenceDownloadPath;->a(Ldolphin/preference/PreferenceDownloadPath;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    return-void
.end method
