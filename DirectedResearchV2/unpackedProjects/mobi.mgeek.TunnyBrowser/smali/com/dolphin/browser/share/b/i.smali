.class Lcom/dolphin/browser/share/b/i;
.super Ljava/lang/Object;
.source "FacebookSharePlatform.java"

# interfaces
.implements Lcom/dolphin/browser/q/c/o;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/b/j;

.field final synthetic c:Lcom/dolphin/browser/share/b/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/b/h;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/share/b/i;->c:Lcom/dolphin/browser/share/b/h;

    iput-object p2, p0, Lcom/dolphin/browser/share/b/i;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dolphin/browser/share/b/i;->b:Lcom/dolphin/browser/share/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/share/b/i;->c:Lcom/dolphin/browser/share/b/h;

    iget-object v1, p0, Lcom/dolphin/browser/share/b/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/share/b/i;->b:Lcom/dolphin/browser/share/b/j;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/h;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 58
    const-string v0, "facebook share"

    const-string v1, "login"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dolphin/browser/share/b/i;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0248

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    const-string v0, "facebook share"

    const-string v1, "login"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
