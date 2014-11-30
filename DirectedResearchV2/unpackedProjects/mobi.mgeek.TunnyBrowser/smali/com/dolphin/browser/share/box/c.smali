.class Lcom/dolphin/browser/share/box/c;
.super Ljava/lang/Object;
.source "BoxShareViewContent.java"

# interfaces
.implements Lcom/dolphin/browser/share/box/r;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/b;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dolphin/browser/share/box/c;->a:Lcom/dolphin/browser/share/box/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/share/box/c;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/b;->a(Lcom/dolphin/browser/share/box/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/share/box/c;->a:Lcom/dolphin/browser/share/box/b;

    iget-object v1, p0, Lcom/dolphin/browser/share/box/c;->a:Lcom/dolphin/browser/share/box/b;

    invoke-static {v1}, Lcom/dolphin/browser/share/box/b;->b(Lcom/dolphin/browser/share/box/b;)Lcom/dolphin/browser/share/box/p;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/share/box/p;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/box/b;->a(Lcom/dolphin/browser/share/box/b;Landroid/graphics/Bitmap;)V

    .line 158
    :cond_0
    return-void
.end method
