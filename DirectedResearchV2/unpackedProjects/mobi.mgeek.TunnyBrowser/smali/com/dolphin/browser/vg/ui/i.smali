.class Lcom/dolphin/browser/vg/ui/i;
.super Ljava/lang/Object;
.source "WifiConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/vg/ui/i;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/vg/ui/i;->a:Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/vg/ui/WifiConnectionActivity;->onBackPressed()V

    .line 88
    return-void
.end method
