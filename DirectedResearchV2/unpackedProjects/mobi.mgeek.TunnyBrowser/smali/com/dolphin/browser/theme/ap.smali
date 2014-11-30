.class Lcom/dolphin/browser/theme/ap;
.super Ljava/lang/Object;
.source "ThemeInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeInstaller;

.field private b:Lcom/dolphin/browser/theme/b/a;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/dolphin/browser/theme/ap;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p2, p0, Lcom/dolphin/browser/theme/ap;->b:Lcom/dolphin/browser/theme/b/a;

    .line 233
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 237
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/theme/ap;->b:Lcom/dolphin/browser/theme/b/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/a;->b()V

    .line 239
    const-string v0, "theme reminder"

    const-string v1, "apply"

    iget-object v2, p0, Lcom/dolphin/browser/theme/ap;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    iget-object v3, p0, Lcom/dolphin/browser/theme/ap;->b:Lcom/dolphin/browser/theme/b/a;

    invoke-static {v2, v3}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/theme/ap;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    .line 246
    return-void

    .line 242
    :cond_0
    const-string v0, "theme reminder"

    const-string v1, "later"

    iget-object v2, p0, Lcom/dolphin/browser/theme/ap;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    iget-object v3, p0, Lcom/dolphin/browser/theme/ap;->b:Lcom/dolphin/browser/theme/b/a;

    invoke-static {v2, v3}, Lcom/dolphin/browser/theme/ThemeInstaller;->a(Lcom/dolphin/browser/theme/ThemeInstaller;Lcom/dolphin/browser/theme/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
