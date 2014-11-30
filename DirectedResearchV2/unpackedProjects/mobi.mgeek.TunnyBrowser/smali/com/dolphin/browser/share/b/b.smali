.class Lcom/dolphin/browser/share/b/b;
.super Ljava/lang/Object;
.source "BoxSharePlatform.java"

# interfaces
.implements Lcom/dolphin/browser/q/a/p;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/b/j;

.field final synthetic c:Lcom/dolphin/browser/share/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/b/a;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/share/b/b;->c:Lcom/dolphin/browser/share/b/a;

    iput-object p2, p0, Lcom/dolphin/browser/share/b/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dolphin/browser/share/b/b;->b:Lcom/dolphin/browser/share/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dolphin/browser/share/b/b;->c:Lcom/dolphin/browser/share/b/a;

    iget-object v1, p0, Lcom/dolphin/browser/share/b/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/share/b/b;->b:Lcom/dolphin/browser/share/b/j;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/a;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 39
    const-string v0, "box share"

    const-string v1, "login"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/share/b/b;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00ca

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    const-string v0, "box share"

    const-string v1, "login"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
