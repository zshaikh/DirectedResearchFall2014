.class Lcom/dolphin/browser/titlebar/w;
.super Lcom/dolphin/browser/util/f;
.source "UrlOptionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/u;

.field private final b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/titlebar/u;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/w;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    .line 203
    iput-object p2, p0, Lcom/dolphin/browser/titlebar/w;->b:Landroid/graphics/Bitmap;

    .line 204
    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/titlebar/w;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/w;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/u;->b(Lcom/dolphin/browser/titlebar/u;)Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/w;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/u;->c(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/w;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v2}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/titlebar/w;->b:Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/dolphin/browser/titlebar/u;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    .line 210
    const/4 v0, 0x0

    return-object v0
.end method
