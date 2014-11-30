.class final Lcom/dolphin/browser/provider/f;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/ContentResolver;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, Lcom/dolphin/browser/provider/f;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/dolphin/browser/provider/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/provider/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/provider/f;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 972
    iget-object v0, p0, Lcom/dolphin/browser/provider/f;->a:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/dolphin/browser/provider/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/provider/f;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/provider/f;->d:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 973
    return-void
.end method
