.class Lmobi/mgeek/TunnyBrowser/iw;
.super Ljava/lang/Object;
.source "WebsiteSettingsActivity.java"

# interfaces
.implements Lcom/dolphin/browser/core/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/core/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lmobi/mgeek/TunnyBrowser/is;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/is;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/iw;->b:Lmobi/mgeek/TunnyBrowser/is;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/iw;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 481
    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iw;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iw;->b:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/is;->a(Lmobi/mgeek/TunnyBrowser/is;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iw;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iw;->b:Lmobi/mgeek/TunnyBrowser/is;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/is;->b(Lmobi/mgeek/TunnyBrowser/is;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 479
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/iw;->a(Ljava/lang/Boolean;)V

    return-void
.end method
