.class Lmobi/mgeek/TunnyBrowser/ct;
.super Ljava/lang/Object;
.source "CrashReportController.java"

# interfaces
.implements Lmobi/mgeek/util/CrashReporter/c;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/cs;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/cs;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    const-string v1, "RES_DIALOG_ICON"

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020178

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "RES_DIALOG_TITLE"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e013f

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "RES_DIALOG_TEXT"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e013c

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "RES_EMAIL_SUBJECT"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e051b

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/core/Configuration;->getClientGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lmobi/mgeek/TunnyBrowser/cs;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "RES_EMAIL_TEXT"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e051a

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "RES_BUTTON_REPORT"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e013e

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "RES_BUTTON_CANCEL"

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ct;->a:Lmobi/mgeek/TunnyBrowser/cs;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e013b

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/cs;->a(Lmobi/mgeek/TunnyBrowser/cs;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->ab()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "support5@dolphin-browser.com"

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "http://crashreport.dolphin-browser.com/api/1/upload/"

    return-object v0
.end method
