.class Lcom/mgeek/android/ui/z;
.super Ljava/lang/Object;
.source "FullscreenButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/y;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/y;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mgeek/android/ui/z;->a:Lcom/mgeek/android/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mgeek/android/ui/z;->a:Lcom/mgeek/android/ui/y;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/y;->setAnimation(Landroid/view/animation/Animation;)V

    .line 130
    return-void
.end method
