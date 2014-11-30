.class Lcom/mgeek/android/ui/f;
.super Ljava/lang/Object;
.source "CrashRestoreView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/e;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/e;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mgeek/android/ui/f;->a:Lcom/mgeek/android/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mgeek/android/ui/f;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->a(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/mgeek/android/ui/f;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->a(Lcom/mgeek/android/ui/e;)Lcom/mgeek/android/ui/j;

    move-result-object v1

    iget-object v0, p0, Lcom/mgeek/android/ui/f;->a:Lcom/mgeek/android/ui/e;

    invoke-static {v0}, Lcom/mgeek/android/ui/e;->b(Lcom/mgeek/android/ui/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/mgeek/android/ui/j;->a(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method
