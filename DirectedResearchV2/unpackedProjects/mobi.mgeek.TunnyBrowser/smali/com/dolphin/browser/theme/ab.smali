.class Lcom/dolphin/browser/theme/ab;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/data/a;

.field final synthetic b:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/dolphin/browser/theme/ab;->b:Lcom/dolphin/browser/theme/ThemeActivity2;

    iput-object p2, p0, Lcom/dolphin/browser/theme/ab;->a:Lcom/dolphin/browser/theme/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 516
    const-string v0, "theme menu"

    const-string v1, "delete"

    iget-object v2, p0, Lcom/dolphin/browser/theme/ab;->a:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/theme/ab;->b:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/theme/ab;->a:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/dolphin/browser/theme/ab;->a:Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/theme/ar;->b(II)V

    .line 519
    return-void
.end method
