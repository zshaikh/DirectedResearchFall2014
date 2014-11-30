.class Lcom/dolphin/browser/share/b/o;
.super Ljava/lang/Object;
.source "TwitterSharePlatform.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/e;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/share/b/j;

.field final synthetic c:Lcom/dolphin/browser/share/b/n;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/b/n;Landroid/content/Context;Lcom/dolphin/browser/share/b/j;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/dolphin/browser/share/b/o;->c:Lcom/dolphin/browser/share/b/n;

    iput-object p2, p0, Lcom/dolphin/browser/share/b/o;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/dolphin/browser/share/b/o;->b:Lcom/dolphin/browser/share/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/share/b/o;->c:Lcom/dolphin/browser/share/b/n;

    iget-object v1, p0, Lcom/dolphin/browser/share/b/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/share/b/o;->b:Lcom/dolphin/browser/share/b/j;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/share/b/n;->a(Landroid/content/Context;Lcom/dolphin/browser/share/b/j;I)V

    .line 53
    const-string v0, "twitter share"

    const-string v1, "login"

    const-string v2, "success"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/share/b/o;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0657

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;I)V

    .line 63
    const-string v0, "twitter share"

    const-string v1, "login"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method
