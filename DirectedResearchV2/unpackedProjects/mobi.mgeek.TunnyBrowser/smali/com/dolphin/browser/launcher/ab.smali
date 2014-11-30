.class Lcom/dolphin/browser/launcher/ab;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Lcom/g/a/au;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/DragLayer;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ab;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/an;)V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p1}, Lcom/g/a/an;->k()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 473
    const/high16 v1, 0x3f800000

    sub-float v0, v1, v0

    .line 474
    iget-object v1, p0, Lcom/dolphin/browser/launcher/ab;->a:Lcom/dolphin/browser/launcher/DragLayer;

    invoke-static {v1}, Lcom/dolphin/browser/launcher/DragLayer;->a(Lcom/dolphin/browser/launcher/DragLayer;)Lcom/dolphin/browser/launcher/ag;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/ag;->a(F)V

    .line 475
    return-void
.end method
