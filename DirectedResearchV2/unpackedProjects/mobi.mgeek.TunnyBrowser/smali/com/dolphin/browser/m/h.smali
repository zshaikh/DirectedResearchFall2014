.class Lcom/dolphin/browser/m/h;
.super Ljava/lang/Object;
.source "RatingPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/m/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/m/f;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/browser/m/h;->a:Lcom/dolphin/browser/m/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/m/h;->a:Lcom/dolphin/browser/m/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/m/f;->a(Z)V

    .line 143
    const-string v0, "promotion dialog"

    const-string v1, "rate_dialog"

    const-string v2, "no"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
