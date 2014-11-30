.class Lmobi/mgeek/TunnyBrowser/ha;
.super Ljava/lang/Object;
.source "SpeedDialChooser.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/gy;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/gy;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/ha;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/ha;->a:Lmobi/mgeek/TunnyBrowser/gy;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/ha;->a:Lmobi/mgeek/TunnyBrowser/gy;

    invoke-static {v1}, Lmobi/mgeek/TunnyBrowser/gy;->b(Lmobi/mgeek/TunnyBrowser/gy;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/mgeek/TunnyBrowser/gy;->a(Lmobi/mgeek/TunnyBrowser/gy;Landroid/view/View;)V

    .line 231
    const/4 v0, 0x0

    return v0
.end method
