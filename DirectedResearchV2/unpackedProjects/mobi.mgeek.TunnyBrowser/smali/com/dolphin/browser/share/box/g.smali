.class Lcom/dolphin/browser/share/box/g;
.super Ljava/lang/Object;
.source "BoxShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/share/box/t;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:J

.field final synthetic d:Lcom/dolphin/browser/share/box/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/b;Lcom/dolphin/browser/share/a;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/dolphin/browser/share/box/g;->d:Lcom/dolphin/browser/share/box/b;

    iput-object p2, p0, Lcom/dolphin/browser/share/box/g;->a:Lcom/dolphin/browser/share/a;

    iput-object p3, p0, Lcom/dolphin/browser/share/box/g;->b:Landroid/content/Context;

    iput-wide p4, p0, Lcom/dolphin/browser/share/box/g;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dolphin/browser/share/box/g;->a:Lcom/dolphin/browser/share/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/a;->a(Ljava/lang/Throwable;)V

    .line 364
    const-string v0, "box share"

    const-string v1, "uploadpdf"

    const-string v2, "failure"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 370
    iget-object v0, p0, Lcom/dolphin/browser/share/box/g;->d:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/b;->f(Lcom/dolphin/browser/share/box/b;)Lcom/dolphin/browser/q/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/box/g;->b:Landroid/content/Context;

    iget-wide v3, p0, Lcom/dolphin/browser/share/box/g;->c:J

    new-instance v5, Lcom/dolphin/browser/share/box/h;

    invoke-direct {v5, p0}, Lcom/dolphin/browser/share/box/h;-><init>(Lcom/dolphin/browser/share/box/g;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dolphin/browser/q/a/j;->a(Landroid/content/Context;Ljava/lang/String;JLcom/dolphin/browser/q/a/i;)V

    .line 395
    return-void
.end method
