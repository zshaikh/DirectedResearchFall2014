.class Lcom/mgeek/android/ui/at;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabHost;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/TabHost;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mgeek/android/ui/at;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 96
    sparse-switch p2, :sswitch_data_0

    .line 106
    iget-object v0, p0, Lcom/mgeek/android/ui/at;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-static {v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 107
    iget-object v0, p0, Lcom/mgeek/android/ui/at;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-static {v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 103
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
