.class Lmobi/mgeek/TunnyBrowser/iv;
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
        "Ljava/lang/Long;",
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
    .line 467
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/iv;->b:Lmobi/mgeek/TunnyBrowser/is;

    iput-object p2, p0, Lmobi/mgeek/TunnyBrowser/iv;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 470
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iv;->b:Lmobi/mgeek/TunnyBrowser/is;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/iv;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmobi/mgeek/TunnyBrowser/is;->a(Landroid/widget/ImageView;J)V

    .line 471
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/iv;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 467
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lmobi/mgeek/TunnyBrowser/iv;->a(Ljava/lang/Long;)V

    return-void
.end method
