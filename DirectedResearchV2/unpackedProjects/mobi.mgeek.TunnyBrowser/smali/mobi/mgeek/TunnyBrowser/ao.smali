.class Lmobi/mgeek/TunnyBrowser/ao;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/util/List;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 4143
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ao;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/ao;->a:Ljava/util/List;

    iput-object p3, p0, Lmobi/mgeek/TunnyBrowser/ao;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 4149
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ao;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/extensions/n;

    .line 4151
    if-eqz v1, :cond_1

    .line 4152
    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v2

    .line 4154
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v3, :cond_1

    .line 4156
    iget-object v3, p0, Lmobi/mgeek/TunnyBrowser/ao;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4157
    invoke-static {}, Lcom/dolphin/browser/extensions/e;->a()Lcom/dolphin/browser/extensions/e;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/extensions/IDownloadExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/dolphin/browser/extensions/e;->a(Ljava/lang/String;Lcom/dolphin/browser/extensions/n;)V

    .line 4164
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    move-object v1, v0

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/ao;->c:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-interface {v1, v2}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onViewDownloads(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4170
    :cond_1
    :goto_0
    return-void

    .line 4166
    :catch_0
    move-exception v1

    goto :goto_0
.end method
