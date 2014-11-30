.class Lcom/dolphin/browser/gesture/ui/d;
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
    .line 129
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/d;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/d;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;->showDialog(I)V

    .line 134
    return-void
.end method
