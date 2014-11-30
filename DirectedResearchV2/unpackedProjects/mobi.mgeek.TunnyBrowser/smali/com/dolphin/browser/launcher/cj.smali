.class Lcom/dolphin/browser/launcher/cj;
.super Ljava/lang/Object;
.source "ShortcutIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/dolphin/browser/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/ShortcutIcon;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/launcher/cj;->b:Lcom/dolphin/browser/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/cj;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/launcher/cj;->b:Lcom/dolphin/browser/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/cj;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->b(Landroid/graphics/Bitmap;)V

    .line 160
    return-void
.end method
