.class Lcom/mgeek/android/ui/au;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Lcom/mgeek/android/ui/bc;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabHost;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/TabHost;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mgeek/android/ui/au;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/mgeek/android/ui/au;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0, p1}, Lcom/mgeek/android/ui/TabHost;->a(I)V

    .line 115
    if-eqz p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mgeek/android/ui/au;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-static {v0}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 118
    :cond_0
    return-void
.end method
