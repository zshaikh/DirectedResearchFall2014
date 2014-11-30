.class Lcom/dolphin/browser/m/g;
.super Ljava/lang/Object;
.source "RatingPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/m/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/m/f;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/dolphin/browser/m/g;->b:Lcom/dolphin/browser/m/f;

    iput-object p2, p0, Lcom/dolphin/browser/m/g;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/m/g;->b:Lcom/dolphin/browser/m/f;

    iget-object v1, p0, Lcom/dolphin/browser/m/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/f;->d(Landroid/content/Context;)V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/m/g;->b:Lcom/dolphin/browser/m/f;

    invoke-virtual {v0}, Lcom/dolphin/browser/m/f;->e()V

    .line 151
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "later"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
