.class Lcom/mgeek/android/ui/ba;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Lcom/mgeek/android/ui/aw;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabHost;

.field private final b:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/TabHost;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/mgeek/android/ui/ba;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    iput-object p2, p0, Lcom/mgeek/android/ui/ba;->b:Landroid/view/View;

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/TabHost;Landroid/view/View;Lcom/mgeek/android/ui/at;)V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0, p1, p2}, Lcom/mgeek/android/ui/ba;-><init>(Lcom/mgeek/android/ui/TabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/mgeek/android/ui/ba;->b:Landroid/view/View;

    return-object v0
.end method
