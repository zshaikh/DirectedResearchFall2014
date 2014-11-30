.class final Lcom/mgeek/android/util/r;
.super Ljava/lang/Object;
.source "PrivateModeToggleHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/util/s;


# direct methods
.method constructor <init>(Lcom/mgeek/android/util/s;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mgeek/android/util/r;->a:Lcom/mgeek/android/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mgeek/android/util/r;->a:Lcom/mgeek/android/util/s;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mgeek/android/util/r;->a:Lcom/mgeek/android/util/s;

    invoke-interface {v0}, Lcom/mgeek/android/util/s;->a()V

    .line 109
    :cond_0
    return-void
.end method
