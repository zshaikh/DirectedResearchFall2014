.class Lcom/dolphin/browser/launcher/ck;
.super Ljava/lang/Object;
.source "ShortcutIcon.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/launcher/ShortcutIcon;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dolphin/browser/launcher/ck;->b:Lcom/dolphin/browser/launcher/ShortcutIcon;

    iput-object p2, p0, Lcom/dolphin/browser/launcher/ck;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dolphin/browser/launcher/ck;->b:Lcom/dolphin/browser/launcher/ShortcutIcon;

    iget-object v1, p0, Lcom/dolphin/browser/launcher/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->b(Ljava/lang/String;)V

    .line 169
    return-void
.end method
