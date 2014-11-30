.class final Lcom/dolphin/browser/provider/g;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/dolphin/browser/provider/g;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/dolphin/browser/provider/g;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/dolphin/browser/provider/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/provider/g;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1021
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/g;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 1022
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1023
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1024
    iget-object v0, p0, Lcom/dolphin/browser/provider/g;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dolphin/browser/provider/g;->c:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1025
    iget-object v0, p0, Lcom/dolphin/browser/provider/g;->b:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/dolphin/browser/provider/g;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    const/4 v1, 0x0

    const-string v2, "updateFaviconAsync"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
