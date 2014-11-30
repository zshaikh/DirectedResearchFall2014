.class final Lcom/dolphin/browser/provider/a;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/dolphin/browser/provider/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dolphin/browser/provider/a;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/dolphin/browser/provider/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/provider/a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 917
    iget-object v0, p0, Lcom/dolphin/browser/provider/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lcom/dolphin/browser/provider/a;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dolphin/browser/provider/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/provider/a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 921
    :cond_0
    return-void
.end method
