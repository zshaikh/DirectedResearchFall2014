.class Lcom/dolphin/browser/t/c;
.super Ljava/lang/Object;
.source "DownloadHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:J

.field final synthetic i:Lcom/dolphin/browser/t/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/a;Ljava/util/List;Landroid/widget/CheckBox;Ljava/lang/String;Lmobi/mgeek/TunnyBrowser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/dolphin/browser/t/c;->i:Lcom/dolphin/browser/t/a;

    iput-object p2, p0, Lcom/dolphin/browser/t/c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/dolphin/browser/t/c;->b:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/dolphin/browser/t/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/dolphin/browser/t/c;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iput-object p6, p0, Lcom/dolphin/browser/t/c;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/dolphin/browser/t/c;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/dolphin/browser/t/c;->g:Ljava/lang/String;

    iput-wide p9, p0, Lcom/dolphin/browser/t/c;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/t/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/extensions/n;

    .line 216
    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/n;->d()Ljava/lang/Object;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/dolphin/browser/extensions/IDownloadExtension;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/dolphin/browser/t/c;->b:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-static {}, Lcom/dolphin/browser/extensions/e;->a()Lcom/dolphin/browser/extensions/e;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/extensions/IDownloadExtension;->TYPE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/dolphin/browser/extensions/e;->a(Ljava/lang/String;Lcom/dolphin/browser/extensions/n;)V

    .line 226
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/CookieManager;->getInstance()Lcom/dolphin/browser/core/CookieManager;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/t/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/core/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    .line 228
    check-cast v0, Lcom/dolphin/browser/extensions/IDownloadExtension;

    iget-object v1, p0, Lcom/dolphin/browser/t/c;->d:Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    iget-object v2, p0, Lcom/dolphin/browser/t/c;->c:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/t/c;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/dolphin/browser/t/c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/dolphin/browser/t/c;->g:Ljava/lang/String;

    iget-wide v8, p0, Lcom/dolphin/browser/t/c;->h:J

    invoke-interface/range {v0 .. v9}, Lcom/dolphin/browser/extensions/IDownloadExtension;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 233
    :cond_1
    return-void
.end method
