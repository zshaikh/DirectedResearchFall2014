.class Lcom/dolphin/browser/gesture/ui/o;
.super Ljava/lang/Object;
.source "GestureCreateActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/o;->a:Lcom/dolphin/browser/gesture/ui/GestureCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/o;->b:Ljava/lang/String;

    .line 570
    iput-object p3, p0, Lcom/dolphin/browser/gesture/ui/o;->c:Landroid/graphics/Bitmap;

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/gesture/ui/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/gesture/ui/o;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/o;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method
