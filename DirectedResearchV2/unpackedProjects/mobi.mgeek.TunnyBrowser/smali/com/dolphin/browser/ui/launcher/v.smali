.class Lcom/dolphin/browser/ui/launcher/v;
.super Ljava/lang/Object;
.source "MyShortcutIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)V

    .line 145
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->b(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;Lcom/dolphin/browser/launcher/cl;)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    iget-object v1, p0, Lcom/dolphin/browser/ui/launcher/v;->a:Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;

    invoke-static {v1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/launcher/cl;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->b(Landroid/graphics/Bitmap;)V

    .line 147
    return-void
.end method
