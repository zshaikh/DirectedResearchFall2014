.class public Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;
.super Ldolphin/preference/EditTextPreference;
.source "DownloadDirPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->c:Lmobi/mgeek/TunnyBrowser/R$attr;

    const v0, 0x7f010007

    invoke-direct {p0, p1, p2, v0}, Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Ldolphin/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 65
    if-eqz p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;->b()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    :cond_1
    invoke-super {p0, p1}, Ldolphin/preference/EditTextPreference;->onDialogClosed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_2
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 75
    :cond_3
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/DownloadDirPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e019b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
