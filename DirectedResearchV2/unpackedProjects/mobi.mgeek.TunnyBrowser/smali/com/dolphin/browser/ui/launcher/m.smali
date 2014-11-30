.class Lcom/dolphin/browser/ui/launcher/m;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/m;->c:Lcom/dolphin/browser/ui/launcher/g;

    iput-object p2, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 606
    const-string v0, "http://dolphin.com/features/"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://www.dolphin-browser.jp/features?nav=1"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    :cond_0
    const-string v0, "Dolphin Help"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    const-string v2, "Features"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 610
    :cond_2
    const-string v0, "http://dolphin.com/blog/"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "http://www.dolphin-browser.jp/archives"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 612
    :cond_3
    const-string v0, "Dolphin Help"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    const-string v2, "Blog"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_4
    const-string v0, "https://dolphinbrowser.desk.com/"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http://support.dolphin-browser.jp/knowledgebase"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 616
    :cond_5
    const-string v0, "Dolphin Help"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    const-string v2, "FAQ"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_6
    const-string v0, "dolphin://feedback"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 619
    const-string v0, "Dolphin Help"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    const-string v2, "Feedback"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_7
    const-string v0, "http://dolphin.com/updatenotes/"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "http://www.dolphin-browser.jp/update-notes.html"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    :cond_8
    const-string v0, "Dolphin Help"

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/m;->b:Ljava/lang/String;

    const-string v2, "Updates"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
