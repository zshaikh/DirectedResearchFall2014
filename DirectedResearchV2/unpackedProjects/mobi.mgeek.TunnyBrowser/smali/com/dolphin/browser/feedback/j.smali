.class Lcom/dolphin/browser/feedback/j;
.super Ljava/lang/Object;
.source "SendCriticalBugsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dolphin/browser/feedback/j;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/feedback/j;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->onBackPressed()V

    .line 94
    return-void
.end method
