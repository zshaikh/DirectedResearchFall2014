.class Lcom/mgeek/android/ui/g;
.super Ljava/lang/Object;
.source "CrashRestoreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/e;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/e;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mgeek/android/ui/g;->a:Lcom/mgeek/android/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mgeek/android/ui/g;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->a(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mgeek/android/ui/g;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->a(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/j;

    move-result-object v0

    iget-object v1, p0, Lcom/mgeek/android/ui/g;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v1}, Lcom/mgeek/android/ui/e;->b(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/mgeek/android/ui/g;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v2}, Lcom/mgeek/android/ui/e;->c(Lcom/mgeek/android/ui/e;)Lcom/dolphin/browser/core/ITab;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mgeek/android/ui/j;->a(Ljava/util/ArrayList;Lcom/dolphin/browser/core/ITab;)V

    .line 118
    :cond_0
    return-void
.end method
