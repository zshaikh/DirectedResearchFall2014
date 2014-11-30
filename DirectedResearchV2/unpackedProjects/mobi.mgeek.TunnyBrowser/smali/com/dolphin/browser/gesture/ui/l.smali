.class Lcom/dolphin/browser/gesture/ui/l;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/l;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/l;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->finish()V

    .line 424
    return-void
.end method
